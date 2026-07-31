class Product {
  int id;
  String name;
  double price;
  String category;
  bool isAvailable;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.category,
    required this.isAvailable,
  });
}

void main() {
  List<Product> products = [
    Product(
        id: 1,
        name: 'Laptop',
        price: 999.99,
        category: 'Electronics',
        isAvailable: true),
    Product(
        id: 2,
        name: 'Smartphone',
        price: 699.99,
        category: 'Electronics',
        isAvailable: false),
    Product(
        id: 3,
        name: 'Headphones',
        price: 199.99,
        category: 'Accessories',
        isAvailable: true),
    Product(
        id: 4,
        name: 'Coffee Maker',
        price: 49.99,
        category: 'Home Appliances',
        isAvailable: true),
    Product(
        id: 5,
        name: 'Desk Chair',
        price: 149.99,
        category: 'Furniture',
        isAvailable: false),
  ];
  print("1___________________________________________________");

  var allAvailableProducts =
      products.where((product) => product.isAvailable).toList();
  print('All Available Products:');
  for (var product in allAvailableProducts) {
    print(
        'ID: ${product.id}, Name: ${product.name}, Price: \$${product.price}');
  }
  print("\n2___________________________________________________");
  var productNames = products.map((e) => e.name);
  print('Products Names:');
  for (var e in productNames) {
    print(e);
  }
  print("\n3___________________________________________________");
  var availableElectronics = products
      .where((e) => e.category == "Electronics")
      .where((e) => e.isAvailable == true)
      .map((e) => e.name);

  print('Available Electronics:');
  for (var e in availableElectronics) {
    print(e);
  }

  print("\n4___________________________________________________");

  var totalPrice = products.fold(0, (sum, e) => sum + e.price.ceil());
  print('Total Price:');
  print(totalPrice);

  print("\n5___________________________________________________");
  var totalPriceOfOnlyAvailableProducts = products
      .where((e) => e.isAvailable == true)
      .fold(0, (sum, e) => sum + e.price.ceil());
  print('total price of only available products:');
  print(totalPriceOfOnlyAvailableProducts);

  print("\n6___________________________________________________");
  var anyGreaterThan20000 = products.any((e) => e.price > 20000);
  print("any product with a price greater than 20000:");
  print(anyGreaterThan20000);

  print("\n7___________________________________________________");
  var allProductsGreaterThan100 = products.every((e) => e.price > 100);
  print("all products have a price greater than 100:");
  print(allProductsGreaterThan100);

  print("\n8___________________________________________________");
  var firstElectronic = products.firstWhere((e) => e.category == "Electronics");
  print("first Electronic Products:");
  print(firstElectronic);

  print("\n9___________________________________________________");
  products.sort((a, b) => a.price.compareTo(b.price));
  print("Sorted products:");
  for (var product in products) {
    print(
        'ID: ${product.id}, Name: ${product.name}, Price: \$${product.price}');
  }

  print("\n10___________________________________________________");

  var removeDuplicates = products.map((e) => e.category).toSet();
  print("remove duplicates:");
  print(removeDuplicates);
}
