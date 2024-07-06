class DocterModel {
  String name;
  String image;
  List<String> services;
  int distance;

  DocterModel({
    required this.name,
    required this.image,
    required this.services,
    required this.distance,
  });
}

var doctors = [
  DocterModel(
    name: "Dr. Stone",
    image: "dr_stone.jpg",
    services: ["Vaccine", "Surgery"],
    distance: 10,
  )
];
