var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

const nosotrosRouter = require('./routes/nosotros'); /*va a buscar el archivo nosotros.js*/
const vosotrosRouter = require('./routes/vosotros');
const ellosRouter = require('./routes/ellos');

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

app.use('/nosotros',nosotrosRouter); /*define la ruta e indica la varible que contiene el link al archivo js */
app.use('/vosotros',vosotrosRouter);
app.use('/ellos',ellosRouter);

/*Prueba de ruta */
app.get('/flowerpower', function(req,res){
  res.send('Hola! El flower Power is dentro tuyo !!!!')
})

app.get('/floripondio', function(req,res){
  res.send('Floripondio urban flash')
})

app.get('/amarula', function(req,res){
  res.send('Amarula crocs style')
})

app.get('/terminatorwin', function(req,res){
  res.send('Fatality!!!')
})

app.get('/pedropedrope', function(req,res){
  res.send('hombre jugar con animal, hombre ser feliz.')
})

app.get('/nosotros', function(req,res){
  res.send('NOSOTROS NOSOTROS NOSOTROS NOSOTROS')
})

app.get('/nosotros', function(req,res){
  res.send('VOSOTROS VOSOTROS VOSOTROS VOSOTROS')
})

app.get('/nosotros', function(req,res){
  res.send('ELLOS ELLOS ELLOS ELLOS')
})


/*Fin Prueba de ruta*/

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
