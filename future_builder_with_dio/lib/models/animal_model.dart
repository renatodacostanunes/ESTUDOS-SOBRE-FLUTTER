class Animal {
  String name;
  String image;
  Animal({
    required this.name,
    required this.image,
  });

  factory Animal.fromMap(Map<String, dynamic> map) {
    return Animal(
      name: map['name'],
      image: map['image_link'],
    );
  }
}
