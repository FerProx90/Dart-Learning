void main(){
  final patoDonald = Pato();

  patoDonald.caminar();
}

abstract class Animal{}

class Mamifero extends Animal{}
class Ave extends Animal{}
class Pez extends Animal{}

mixin class Volador {
  void volar(){
    print('Puedo volar');
  }
}
mixin class Caminandte {
  void caminar(){
    print('Puedo caminar');
  }
}
mixin class Nadador {
  void nadar(){
    print('Puedo nadar');
  }
}

class Delfin extends Mamifero with Nadador{}
class Paloma extends Ave with Caminandte, Volador{}
class Pato extends Ave with Caminandte, Volador, Nadador{}
class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}