class Camera {
  int _id;
  String _marca;
  String _cor;
  double _preco;

  Camera(this._id, this._marca, this._cor, this._preco);

  int get id => _id;
  String get marca => _marca;
  String get cor => _cor;
  double get preco => _preco;

  set id(int id) {
    if (id > 0) {
      _id = id;
    } else {
      print("Erro: O ID deve ser maior que zero.");
    }
  }

  set marca(String marca) {
    if (marca.isNotEmpty) {
      _marca = marca;
    } else {
      print("Erro: A marca não pode estar vazia.");
    }
  }

  set cor(String cor) {
    if (cor.isNotEmpty) {
      _cor = cor;
    } else {
      print("Erro: A cor não pode estar vazia.");
    }
  }

  set preco(double preco) {
    if (preco > 0) {
      _preco = preco;
    } else {
      print("Erro: O preço deve ser maior que zero.");
    }
  }

  void imprimirDetalhes() {
    print("Id: $_id");
    print("Marca: $_marca");
    print("Cor: $_cor");
    print("Preço: R\$${_preco.toStringAsFixed(2)}");
  }
}

void main() {
  Camera camera1 = Camera(1, "Sony", "Preta", 800.00);
  Camera camera2 = Camera(2, "Canon", "Branca", 1200.00);
  Camera camera3 = Camera(3, "Nikon", "Cinza", 1500.00);

  List<Camera> cameras = [camera1, camera2, camera3];

  for (int i = 0; i < cameras.length; i++) {
    print("\nCâmera ${i + 1}:");
    cameras[i].imprimirDetalhes();
  }
}
