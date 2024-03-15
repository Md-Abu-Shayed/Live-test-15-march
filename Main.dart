void main() {
  List<Map<String, dynamic>> fruits = [
    {"name": "Apple", "color": "Red", "price": 2.5},
    {"name": "Banana", "color": "Yellow", "price": 1.0},
    {"name": "Grapes", "color": "Purple", "price": 3.0}
  ];

  displayFruitDetails(fruits);
  applyPriceDiscount(fruits, 10);
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  print("Fruit Details:");
  for (var fruit in fruits) {
    print("Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price'].toStringAsFixed(2)}");
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    fruit['price'] -= (fruit['price'] * discountPercentage / 100);
  }
}
