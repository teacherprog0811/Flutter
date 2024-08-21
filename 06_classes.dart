void main() {
  /* Instanciando la clase y el constructor
  final empleado = new Person('Ivan','Narvaez');
  
  print(empleado);
  print(empleado.nombre);
  print(empleado.apellido);

  */

  final empleado = new Person(nombre: 'Ivan', apellido: 'Narvaez');

  print(empleado);
  print(empleado.nombre);
  print(empleado.apellido);
}

class Person {
  /*
     * 
     * Forma 1 de crear constructores
    String nombre ='';
    String apellido='';
    
    Person(String pNombre, String pApellido){
      
      this.nombre = pNombre;
      this.apellido = pApellido;
      
    }
    */

  /*
     * 
     * Forma 2 de crear constructores
    String nombre;
    String apellido;
    
    Person(this.nombre,this.apellido){
      
    }
    
    */

  /*
     * Forma 3 de crear constructores sin asignacion de valores
     * 
    String nombre;
    String apellido;
    Hero( String pName, String pPower )
      : name = pName,
        power = pPower;
    */

  /*Forma 4 con argumentos posicionales por nombres*/

  String nombre;
  String apellido;

  Person({required this.nombre, this.apellido = 'Sin apellido'}) {}
}
