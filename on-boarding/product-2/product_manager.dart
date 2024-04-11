import 'product.dart';

class ProductManager {
  List<Product> products = [];

  ProductManager({required products});

  void addProduct(Product product) {
    products.add(product);
  }

  List<Product>? viewAllProduct() {
    if (products.length == 0) {
      print("No Product is found");
      return null;
    }
    return products;
  }

  Map<String, dynamic>? viewSingleProduct(String title) {
    for (Product product in products) {
      if (product.getTitle == title) {
        return product.getProductDetails();
      }
    }

    return null;
  }

  void editProuctTitle({required String oldTitle, required String newTitle}) {
    for (Product product in products) {
      if (product.getTitle == oldTitle) {
        product.setTitle = newTitle;
      }
    }
  }

  void editProuctDescription(
      {required String oldDescription, required String newDescription}) {
    for (Product product in products) {
      if (product.getDescription == oldDescription) {
        product.setDescription = newDescription;
      }
    }
  }

  void editProuctPrice({required num oldPrice, required num newPrice}) {
    for (Product product in products) {
      if (product.getPrice == oldPrice) {
        product.setPrice = newPrice;
      }
    }
  }

  void deleteProduct(String title) {
    for (var i = 0; i < products.length; i++) {
      if (products[i].getTitle == title) {
        products.removeAt(i);
      }
    }
  }
}

void main() {
  ProductManager productManager = ProductManager(products: []);
  Product sample1 =
      Product('Chelsea Kit', 'UEFA Champions League Match Kit', 50);
  Product sample2 = Product('Arsenal Kit', 'Premier League Match Kit', 90);
  productManager.addProduct(sample1);
  productManager.addProduct(sample2);
  productManager.editProuctDescription(
      oldDescription: 'UEFA Champions League Match Kit',
      newDescription: 'UEFA Europa League Match Kit');
  print(productManager.viewAllProduct());
  print(productManager.viewSingleProduct('Chelsea Shirt'));
  productManager.deleteProduct('Chelsea Shirt');
  productManager.viewAllProduct();
}
