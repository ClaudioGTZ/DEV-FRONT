var express = require('express');
var router = express.Router();

/* Pagina nosotros */
router.get('/', function(req, res, next) {
  res.send('Pagina Vosotros');
});

module.exports = router;