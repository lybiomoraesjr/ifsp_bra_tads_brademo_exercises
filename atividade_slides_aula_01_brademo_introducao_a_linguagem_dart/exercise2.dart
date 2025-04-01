class House {
  int _id;
  String _nome;
  double _preco;

  House(this._id, this._nome, this._preco);

  int get id => _id;
  String get nome => _nome;
  double get preco => _preco;

  void imprimirDetalhes() {
    print("Id: ${_id}");
    print("Nome: ${_nome}");
    print("Preço: ${_preco.toStringAsFixed(2)}");
  }
}

void main() {
  House casa1 = new House(1, "Casa geminada", 180000);
  House casa2 = new House(2, "Sobrado", 800000);
  House casa3 = new House(3, "Apartamento", 350000);

  List<House> casas = [casa1, casa2, casa3];

  for (int i = 0; i < casas.length; i++) {
    print("\nCasa ${i + 1}: ");
    casas[i].imprimirDetalhes();
  }
}
