var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

require('dotenv').config();
var pool = require('./models/bd');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/users', usersRouter);



// Consultar
// ('select * from alumnos') si quiero todos los campos

pool.query('select nombre, telefono from alumnos').then(function (resultados) {
  console.log(resultados)
});
// Fin consultar */



/* Insertar 1 campo 
var obj = {
  nombre: 'Pedro',
  apellido: 'Darian',
  direccion: 'Alto Perú 897, La Plata',
  telefono: '+5492215241258',
  mail: 'sambote45@hotmail.com',
  profesion: 'Diseñador Gráfico',
  comercio: 'Hispano Bar',
  edad: 51
} 
pool.query('insert into alumnos set ?', [obj]).then(function (resultados){
  console.log(resultados)
});

// Fin insertar*/




/* Modificar un campo
var id = 13;
var obj = {
  nombre: 'Alma',
  apellido: 'Naque'
}
pool.query('update alumnos set ? where id_alu=?', [obj, id]).then(function (resultados) {
  console.log(resultados);
});
//Fin modificar un campo */




/* Modificar todos los campos
var obj = {
  telefono: '+549222222222222'
};
pool.query('UPDATE alumnos SET ?', [obj]).then(function(resultados) {
  console.log(resultados);
});
Fin modificar todos los campos */




/* Eliminar
var id = 7;
pool.query('delete from alumnos where id_alu=?', [id]).then(function (resultados) {
  console.log(resultados);
});

// Fin eliminar */




// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
