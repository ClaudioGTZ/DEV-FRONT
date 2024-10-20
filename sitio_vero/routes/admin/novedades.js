var express = require('express');
var router = express.Router();
var novedadesModels = require('../../models/novedadesModels');
var util = require('util');
var cloudinary = require('cloudinary').v2;
const uploader = util.promisify(cloudinary.uploader.upload);
const destroy = util.promisify(cloudinary.uploader.destroy);

// Listas las novedades de la BD
router.get('/', async function (req, res, next) {
  // var novedades = await novedadesModels.getNovedades();

  var novedades;
  if (req.query.q === undefined) {
    novedades = await novedadesModels.getNovedades();
  } else {
    novedades = await novedadesModels.buscarNovedades(req.query.q);
  }

  novedades = novedades.map(novedad => {
    if (novedad.img_id) {
      const imagen = cloudinary.image(novedad.img_id, {
        width: 100,
        height: 100,
        crop: 'fill'
      });
      return {
        ...novedad,
        imagen
      }
    } else {
      return {
        ...novedad,
        imagen: ''
      }
    }
  });

  res.render('admin/novedades', {
    layout: 'admin/layout',
    persona: req.session.nombre,
    novedades,
    is_search: req.query.q !== undefined,
    q: req.query.q
  });
});

//Eliminar registro
router.get('/eliminar/:id_nov', async (req, res, next) => {
  const id = req.params.id_nov;

  let novedad = await novedadesModels.getNovedadById(id);
  if (novedad.img_id) {
    await destroy(novedad.img_id);
  }

  await novedadesModels.deleteNovedadesById(id);
  res.redirect('/admin/novedades');
});

//Agregar Registro
router.get('/agregar', (req, res, next) => {
  res.render('admin/agregar', {
    layout: 'admin/layout'
  })
});

router.post('/agregar', async (req, res, next) => {
  try {
    var img_id = '';
    if (req.files && Object.keys(req.files).length > 0) {
      imagen = req.files.imagen;
      img_id = (await uploader(imagen.tempFilePath)).public_id;
    }

    if (req.body.titulo !== "" && req.body.fecha !== "" && req.body.subtitulo !== "" && req.body.cuerpo !== ""
      && req.body.imagen !== "" && req.body.link !== "") {  // Si todos los campos están llenos, inserta la novedad en la base de datos
      await novedadesModels.insertNovedad({
        ...req.body, img_id
      });

      res.redirect('/admin/novedades');
    } else {
      // por si no se completo un dato
      res.render('admin/agregar', {
        layout: 'admin/layout',
        error: true,
        message: 'Todos los campos son requeridos'
      });
    }
  } catch (error) {
    // avisa de errores que pueda ocurrir ajenos a la carga de datos. No anda el server.
    console.log(error);
    res.render('admin/agregar', {
      layout: 'admin/layout',
      error: true,
      message: 'ERROR desconocido. No se pudo cargar la novedad.'
    });
  }
});

// Modificar
router.get('/modificar/:id_nov', async (req, res, next) => {
  var id = req.params.id_nov;
  var novedad = await novedadesModels.getNovedadById(id);
  if (novedad && novedad.fecha) {
    // Convertir la fecha a formato ISO si no es null
    const fecha = new Date(novedad.fecha);
    novedad.fecha = fecha.toISOString().substring(0, 10); // Asegura el formato 'YYYY-MM-DD'
  }
  res.render('admin/modificar', {
    layout: 'admin/layout',
    novedad
  });
});

router.post('/modificar', async (req, res, next) => {
  try {
    let img_id = req.body.img_original;
    let borrar_img_vieja = false;
    if (req.body.img_delete === "1") {
      img_id = null;
      borrar_img_vieja = true;
    } else {
      if (req.files && Object.keys(req.files).length > 0) {
        imagen = req.files.imagen;
        img_id = (await uploader(imagen.tempFilePath)).public_id;
        borrar_img_vieja = true;
      }
    }
    if (borrar_img_vieja && req.body.img_original) {
      await destroy(req.body.img_original);

    }

    var obj = {
      titulo: req.body.titulo,
      fecha: req.body.fecha,
      subtitulo: req.body.subtitulo,
      cuerpo: req.body.cuerpo,
      img_id,
      // imagen: req.body.imagen,
      link: req.body.link
    };

    console.log(obj);

    await novedadesModels.modificarNovedadById(obj, req.body.id_nov);
    res.redirect('/admin/novedades');
  } catch (error) {
    console.error(error);
    res.render('admin/modificar', {
      layout: 'admin/layout',
      error: true,
      message: 'ERROR. No se pudo modificar la novedad.'
    });
  }
});

module.exports = router;