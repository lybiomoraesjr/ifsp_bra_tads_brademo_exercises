class Animal {
  int _id;
  String _nome;
  String _cor;

  Animal(this._id, this._nome, this._cor);

  int get id => _id;
  String get nome => _nome;
  String get cor => _cor;

  void imprimirDetalhes() {
    print("Id: ${_id}");
    print("Nome: ${_nome}");
    print("Cor: ${_cor}");
  }
}

class Cat extends Animal {
  String _som;

  Cat(int id, String nome, String cor, this._som) : super(id, nome, cor);

  String get som => _som;

  @override
  void imprimirDetalhes() {
    super.imprimirDetalhes();
    print("Som: ${_som}");
  }
}

void main() {
  Cat gato1 = new Cat(1, "Frajola", "Preto e branco", "Miau");

  print("Gato 1:");
  gato1.imprimirDetalhes();
}
