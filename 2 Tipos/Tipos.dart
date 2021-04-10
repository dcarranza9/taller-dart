void main() {
  
   int edad = 52;
  double estatura = 1.80;
  //Texto
  String t1 = "Las comillas dobles funcionan";
  String t2 = 'Las comillas simples también funcionan.';
  var t3 = "Se deben escapar los carateres para prevenir \"Errores\"";
  var t4 = "Este texto se concatena" 'Con este otro';
  var t5 = "Este texto se concatena por medio del" + 'operador +.';
  var interpolar = 'Si \"$t1\". \'$t2\' Y se puede mostrar la estatura= $estatura';
  
  //
  if(edad.isNegative){
    print("La edad ${edad.abs()} no puede ser negativa.");
  }
  else if(edad > 0){
    print("La edad es ${edad.abs()}");
  }
  else{
     print("La edad ${edad.abs()} no puede ser cero.");
  }
  
  print("La estatura es ${estatura.abs()}");
  
  //Lista
  var lista = [t1,t2,t3,t4,t5];
  List<String> l1=['Mazda','Toyota','Subaru'];  
  var l2 =["Chevrolet","Kia"];  
  var l3 =['Nisan',...l2];
  
  //Valida si el elemento es null
  var l4 =["Hyundai",...?l1,...?l3];
    
  print(lista.reversed);
  print(lista.reversed);
  
  //Iteraciones
  for(int i=0; i<lista.length; i++){
    print('La pisición [$i] tiene el valor ->$lista[i]');
  }
  print(interpolar);
  
  
  //Set (No permite valores duplicados)
  var s1={'Mazda','Toyota','Subaru'};  
  s1.add('Hyundai');
  s1.add("Mazda");
  print(s1);
  
  //Maps (Key,Value)
  String key='llave';
  var m1={'negro':'black','Azul':'blue'};
  m1.addAll({key:'key'});
  print(m1);
}
