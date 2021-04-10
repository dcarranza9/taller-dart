void main() {
	
  var myBool= false;
  var textExist;
  
  String value = myBool ? 'Verdadero':'Falso';
  
  textExist= textExist?? 'Como no tenia valor, le asigno esto...';
  
  print(value);
  print(textExist);
  
}
