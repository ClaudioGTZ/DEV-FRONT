var express = require('express');
var router = express.Router();
var novedadesModels = require('../../models/novedadesModels');

router.get('/', async function (req, res, next) {
  var novedades = await novedadesModels.getNovedades();
  res.render('admin/novedades', {
    layout: 'admin/layout',
    persona: req.session.nombre,
    novedades
  });
});

//Eliminar registro
router.get('/eliminar/:id_nov', async (req, res, next) => {
  const id = req.params.id_nov;
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
    // Verifica si todos los campos están llenos
    if (req.body.titulo !== "" && req.body.fecha !== "" && req.body.subtitulo !== "" && req.body.cuerpo !== ""
      && req.body.imagen !== "" && req.body.link !== "") {  // Si todos los campos están llenos, inserta la novedad en la base de datos
      await novedadesModels.insertNovedad(req.body);
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
    var obj = {
      titulo: req.body.titulo,
      fecha: req.body.fecha,
      subtitulo: req.body.subtitulo,
      cuerpo: req.body.cuerpo,
      imagen: req.body.imagen,
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