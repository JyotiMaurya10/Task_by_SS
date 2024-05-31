class Member {
  final String name;
  final String country;
  bool isSelected;

  Member({
    required this.name,
    required this.country,
    this.isSelected = true,  
  });
}
