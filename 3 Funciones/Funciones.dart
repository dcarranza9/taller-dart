void main() {
	
  var r1=obtenerNombre('Javier',170,'Baquero');  
  print(r1);
  
  var r2=obtenerNombre2('Francisco');
  print(r2);
  
  var r3=obtenerNombre3(nombre:'Carlos', edad:100);
  print(r3);
  
  var r4 = funcion('David');
  print(r4);
  
  
}

//No es necesario especifica el tipo de retorno
// Es posible usar parametros opciones []
String obtenerNombre(String valor,[int? estatura, String? apellido]){

  var concat = 'Mi nombre es $valor';
  
  if(apellido != null){
    concat = '$concat $apellido';
  }
  
  if(estatura != null){
    concat = '$concat y mi estatura es $estatura';
  }
  
  return concat;
	
}
//Así también funciona
obtenerNombre2(String valor) => 'Mi nombre es $valor';

//Parametros nombrados (Named parameters)
String obtenerNombre3({String nombre='Pablo', required int? edad}) => 'Mi nombre es $nombre y mi edad es $edad';

//Función anónima
var funcion =  (String valor) {return 'Mi nombre es: $valor';};