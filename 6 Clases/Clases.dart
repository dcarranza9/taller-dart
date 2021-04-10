class Persona{
  /*
  String nombre;
  String apellido;
  int edad;
  
  Persona(this.nombre, this.apellido, this.edad);
  */
  
  String? nombre;
  String? apellido;
  int? edad;
  
  Persona({this.nombre, this.apellido, this.edad});
  
  obtenerNombre()=>"$nombre $apellido";

}

class Empleado extends Persona with Aeropuerto{
  
  String cargo;
  
  Empleado(this.cargo): super(nombre: "Juan", apellido: "Perez", edad: 15);
  
  //Empleado.cargar(this.cargo);
  Empleado.fromJson(this.cargo);
  
  
}

class Trabajador implements Empleado {
   
  String? nombre;
  String? apellido;
  int? salas;
  int? edad;
  String cargo;
  
  Trabajador(this.cargo);
  
  obtenerNombre(){
  
    return "$nombre $apellido";
  }
  
   nombreDeAeropuerto(String nombre){
   return "nombre del Aeropuerto $nombre"; 
  }
  
}

mixin Aeropuerto{
  
  int? salas;
    
  nombreDeAeropuerto(String nombre){
   return "nombre del Aeropuerto $nombre"; 
  }
}

class Vehiculo{
  
  String? color;
  int? puertas;
  
  //Constructor por defecto cuando no se especifica => Vehiculo()
}

void main() {
  
  //var persona = new Persona("Javier","Monasterio",33);
  //var persona = Persona("Javier","Monasterio",33);
  var persona = Persona(nombre:"Javier", apellido:"Monasterio", edad:33);
  print(persona.obtenerNombre());
  
  var empleado = Empleado("Cajero");
    
  print(empleado.obtenerNombre());
  
  //Trabajador
  Empleado empleado3 = Trabajador("2"); 
  
  print(empleado.nombreDeAeropuerto("Valor"));
  
  var empleado2= Empleado.fromJson("Asafata");
  print(empleado2.nombreDeAeropuerto("El dorado"));
}