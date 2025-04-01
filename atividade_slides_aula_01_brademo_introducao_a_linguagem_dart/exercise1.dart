class Laptop {
  int _id;
  String _nome;
  int _ram;

  Laptop(this._id, this._nome, this._ram);

  void imprimirDetalhes() {
    print("Id: ${_id}");
    print("Nome: ${_nome}");
    print("Ram: ${_ram}GB");
  }
}

void main() {
  Laptop laptop1 = new Laptop(1, "Apple MacBook Pro", 18);
  Laptop laptop2 = new Laptop(2, "Dell XPS 13", 16);
  Laptop laptop3 = new Laptop(3, "Acer Nitro 5", 8);

  print("Máquina 1: ");
  laptop1.imprimirDetalhes();

  print("\nMáquina 2: ");
  laptop2.imprimirDetalhes();

  print("\nMáquina 3: ");
  laptop3.imprimirDetalhes();
}
