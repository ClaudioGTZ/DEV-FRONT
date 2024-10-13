var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesmodel = require ('../models/novedadesModels');

/* GET home page. */
router.get('/', async function(req, res, next) {
  var novedades = await novedadesmodel.getNovedades()
  res.render('index', {
    novedades
  });
});

router.post('/', async(req, res, next) => {
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
