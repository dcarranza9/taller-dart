void main() {
	
  try{
    
    //print(mostrarNombre('Juan'));
    print(mostrarNombre2('Juan'));
    
  } on FormatException catch(e){
    print("Se produjo un error FormatException");
    
  }catch(e){
    print("Se produjo un error, comuniquese con el administrador.");
    
  }finally{
    print('Esto es el final');
    
  }
}

String mostrarNombre(String nombre){
  
  if(nombre=='Juan'){
    throw FormatException('El nombre no puede ser $nombre');
    
  }
  
  return "Mi nombre es $nombre";
}

String mostrarNombre2(String nombre){
  
  if(nombre=='Juan'){
    throw ('El nombre no puede ser $nombre');
    
  }
  
  return "Mi nombre es $nombre";
}