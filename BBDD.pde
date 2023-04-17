import de.bezier.data.sql.*;
import de.bezier.data.sql.mapper.*;

// Objecte de connexió a la BBDD
MySQL msql;
void connexioBBDD() {
  // Paràmetres de la connexió
  String user     = "admin";
  String pass     = "12345";
  String database = "mydb";
  // bildwelt?useUnicode=true&characterEncoding=UTF-8 // =latin1
  //useUnicode=true&character_set_server=utf8mb4&useLegacyDatetimeCode=false

  // Establim la connexió
  msql = new MySQL( this, "localhost", database, user, pass );

  // Si la connexió s'ha establert
  if (msql.connect()) {
    // La connexió ha funcionat!!!
    println("Connected to database!!");
  } else {
    // La connexió ha fallat!!!
    println("Connection failed !");
  }
}

//inserts para la BBDD
void insertFotoPersona(int n, String foto) {
  String q =" INSERT INTO `persona` (`idPersona`, `nombrePersona`) VALUES ('"+n+"', '"+foto+"')";
  msql.query(q);
}

void insertFecha(String f, int n) {
  String q ="INSERT INTO `registro` (`Fecha`, `Emocion_idEmocion`) VALUES ('"+f+"', '"+n+"')";
  msql.query(q);
}

void insertPin(int n, String f){
  String q = "INSERT INTO `pin_has_registro` (`Pin_idPin`, `Registro_Fecha`, `Pin_idRegistro`) VALUES ('"+n+"', '"+f+"', NULL)";
  msql.query(q);
}

void insertPersona(int n, String f){
  String q = "INSERT INTO `registro_has_persona` (`Registro_Fecha`, `Persona_idPersona`, `Persona_idRegistro`) VALUES ('"+f+"', '"+n+"', NULL)";
  msql.query(q);
}

void insertPerfil(String nombre, String foto,  String password){
  String q = "INSERT INTO `perfil` (`Nombre`, `Foto`, `password`) VALUES ('"+nombre+"', '"+foto+"', '"+password+"')";
  msql.query(q);
}


//Seleccionar datos para la BBDD
int getEmocion(String fecha) {
  String sFecha = fecha.replace("\'", "\\'");
  String q = "SELECT Emocion_idEmocion FROM Registro WHERE fecha='"+sFecha+"'";
  msql.query(q);
  msql.next();
  return msql.getInt("Emocion_idEmocion");
}

String getNombre(int idEmocion){
  String q = "SELECT nombreEmocion FROM Emocion WHERE idEmocion='"+idEmocion+"'";
  msql.query(q);
  msql.next();
  return msql.getString("nombreEmocion");
}

 int getNumPines(String fecha) {
  msql.query("SELECT COUNT(*) AS n FROM pin_has_registro WHERE Registro_fecha = '%s'", fecha );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

int [] getPines(String fecha) {
  int numRows = getNumPines(fecha);
  int[] data = new int[numRows];

  int nr=0;
  msql.query("SELECT * FROM pin_has_registro WHERE Registro_fecha = '%s'", fecha );
  while (msql.next()) {
    data[nr] = msql.getInt("Pin_idPin");
    nr++;
  }
  return data;
}

String getNombrePin(int idPin){
  String q = "SELECT nombrePin FROM Pin WHERE idPin='"+idPin+"'";
  msql.query(q);
  msql.next();
  return msql.getString("nombrePin");
}

int getNumPersonas(String fecha) {
  msql.query("SELECT COUNT(*) AS n FROM registro_has_persona WHERE Registro_fecha = '%s'", fecha );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

int [] getPersona(String fecha) {
  int numRows = getNumPersonas(fecha);
  int[] dataPersonas = new int[numRows];

  int nr=0;
  msql.query("SELECT * FROM registro_has_persona WHERE Registro_fecha = '%s'", fecha );
  while (msql.next()) {
    dataPersonas[nr] = msql.getInt("Persona_idPersona");
    nr++;
  }
  return dataPersonas;
}

String getNombrePersona(int idPersona){
  String q = "SELECT nombrePersona FROM Persona WHERE idPersona='"+idPersona+"'";
  msql.query(q);
  msql.next();
  return msql.getString("nombrePersona");
}
