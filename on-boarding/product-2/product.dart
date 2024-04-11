class Product {
  String _title;
  String _description;
  num _price;

  Product(
    this._title,
    this._description,
    this._price,
  );

  String get getTitle {
    return _title;
  }

  String get getDescription {
    return _description;
  }

  num get getPrice {
    return _price;
  }

  set setTitle(String newTitle) {
    _title = newTitle;
  }

  set setDescription(String description) {
    this._description = description;
  }

  set setPrice(num price) {
    this._price = price;
  }

  Map<String, dynamic> getProductDetails() {
    return {
      'title': _title,
      'description': _description,
      'price': _price,
    };
  }

}

void main() {
  Product sample = Product(
    "Chelsea Kit",
    "UEFA Champions League ball",
    50,
  );

  print(sample.getDescription);
}