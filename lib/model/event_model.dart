class Event {
  final String title;
  final String dayAndDate;
  final String time;
  final String end;
  final String doorOpen;
  final String status;
  final String imageUrl;
  final String location;
  final List<Category> categories; // List of event categories
  final String description;
  // int seats;

  Event({
    required this.title,
    required this.dayAndDate,
    required this.time,
    required this.status,
    required this.imageUrl,
    required this.end,
    required this.doorOpen,
    required this.location,
    required this.categories, // Initialize with a list of categories
    required this.description,
    //required this.seats,
  });
}

class Category {
  final String name;
  final double price;
  int seats;

  Category({
    required this.name,
    required this.price,
    required this.seats,
  });
}
