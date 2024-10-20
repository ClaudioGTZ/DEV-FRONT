var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesmodel = require('../models/novedadesModels');
var cloudinary = require('cloudinary').v2;


/* GET home page. */
router.get('/', async function (req, res, next) {
  var novedades = await novedadesmodel.getNovedades();
  novedades = novedades.splice(0, 4); // Selecciona solo los primeros 4 elementos del array
  novedades = novedades.map(novedad => {
    if (novedad.img_id) {
      const imagen = cloudinary.url(novedad.img_id, {
        width: 200,
        crop: 'fill'
      });
      return {
        ...novedad,
        imagen
      };
    } else {
      return {
        ...novedad,
        imagen: 'img/noimage.jpg'
      };
    }
  });

  res.render('index', {
    novedades
  });
});

/* Envío de fomrulario de suscripción */
router.post('/suscripcion', async (req, res, next) => {
  var sus_email = req.body.susemail;

  var obj = {
    to: 'claudioggutierrez@gmail.com',
    subject: 'Suscripción al Newsletter',
    html: sus_email + " " + "quiere suscribirse al Newsletter",
  }

  var transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS,
    }
  })
  var sus_info = await transporter.sendMail(obj);
})

/* Envío de fomrulario de contacto */
router.post('/', async (req, res, next) => {
  var nombre = req.body.nombre;
  var email = req.body.email;
  var mensaje = req.body.mensaje;

  var obj = {
    to: 'claudioggutierrez@gmail.com',
    subject: 'Consulta sobre curso',
    html: nombre + " " + "envió una consulta: " + mensaje + "Responder a " + email,
  }

  var transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS,
    }
  })

  var info = await transporter.sendMail(obj);

  res.render('index', {
    message: 'Mensaje enviado correctamente',
  });

})

module.exports = router;
