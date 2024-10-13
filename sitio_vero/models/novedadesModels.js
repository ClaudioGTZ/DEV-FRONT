var pool = require('./bd');

/* Listar novedades en la tabla */
async function getNovedades() {
  var query = 'select * from novedades';
  var rows = await pool.query(query);
  return rows;
}

/* Eliminar novedades en la tabla */
async function deleteNovedadesById(id_nov) {
  var query = 'DELETE from novedades WHERE id_nov = ?';
  var rows = await pool.query(query, [id_nov]);
  return rows;
}

/* Agregar novedades en la tabla */
async function insertNovedad(obj) {
  try {
    var query = "INSERT into novedades set ?";
    var rows = await pool.query(query, [obj]);
    return rows;
  } catch (error) {
    console.log(error);
    throw error;
  }
}

/* Busca la novedad seleccioanda */
async function getNovedadById(id) {
  var query = "SELECT * FROM novedades WHERE id_nov=?";
  var rows = await pool.query(query, [id]);
  return rows[0];
}

/* Guarda la novedad modificada */
async function modificarNovedadById(obj, id) {
  try {
    var query = "UPDATE novedades set ? where id_nov=?";
    var rows = await pool.query(query, [obj, id]);
    return rows;
  } catch (error) {
    throw error;
  }
}

module.exports = { getNovedades, deleteNovedadesById, insertNovedad, getNovedadById, modificarNovedadById };