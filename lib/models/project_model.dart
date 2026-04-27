class Project {
  String title;
  String image;
  String category;
  String description;
  List<String> tech;
  bool hasLive;

  Project({
    required this.title,
    required this.category,
    required this.description,
    required this.tech,
    required this.image,
    this.hasLive = false,
  });
}