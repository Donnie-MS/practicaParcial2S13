/*
Obtener el potencial ofensivo de un personaje, 
el cual se calcula como la fuerza multiplicada por 10 más un cierto extra que depende del rol:

Guerrero: Siempre da un extra de 100.
Cazador: El extra depende del potencial ofensivo de su mascota. 
Las mascotas sin garras tienen un potencial ofensivo igual a su fuerza.
 Las que tienen garras duplican dicho valor.
Brujo: No da ningún extra. En el caso particular de los orcos, producto de su brutalidad innata,
 su potencial ofensivo es un 10% más.
Saber si un personaje es groso. Esto se da si es inteligente o es groso en su rol.
 Un humano se considera inteligente si su inteligencia es mayor a 50. Los orcos nunca son inteligentes. Un personaje es groso en su rol dependiendo de la exigencia del mismo:

Guerrero: Es groso si la fuerza del personaje es mayor a 50.
Cazador: Es groso si su mascota es longeva. Una mascota es longeva cuando su edad es mayor a 10.
Brujo: Siempre es groso.
Queremos modelar la invasión a una localidad. Cuando esto sucede,
 el ejército invasor lucha contra los personajes que habitan la zona para ganar control de ella.
*/
//localidades
class Aldea {
  var property tamanio
  method cantMaxDeHabitantes() = tamanio
}
class Ciudad {}
//personaje orcos alianza
class Personaje {
  var property fuerza
  var property inteligencia
  var property rol
  method cambiarRol(nuevoRol)
}
class Orco inherits Personaje{

}
class Humano inherits Personaje{

}
//Roles
object guerrero {}
object cazador {
  var property mascota
  method puedeDomar(unAnimal) {}
  method domar(unAnimal) {}
}
object brujo {}

// Mascota
class Mascota {
  var property fuerza 
  var property edad
  var property tieneGarras
}