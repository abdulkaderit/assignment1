class Book {
  String title;
  String author;
  double price;

  // Constructor
  Book(this.title, this.author, this.price);

  // Method to calculate discounted price
  double discountedPrice(double discountPercent) {
    return price - (price * discountPercent / 100);
  }

  // Method to display book details
  void displayBookDetails(double discountPercent) {
    print("Title: $title");
    print("Author: $author");
    print("Original Price: \$${price.toStringAsFixed(2)}");
    print("Discounted Price ($discountPercent% off): \$${discountedPrice(discountPercent).toStringAsFixed(2)}");

  }
}

void main() {
  // Creating book objects
  Book book1 = Book("Natun Chand", "Kazi Nazrul", 150.99);
  Book book2 = Book("Nakshi Kanthar Math", "Jasimuddin", 250.50);

  // Printing details with discount
  book1.displayBookDetails(10); // 10% discount
  book2.displayBookDetails(20); // 20% discount
}
