class Tab3 {
  List<String> items;

  Tab3({required this.items});

  factory Tab3.fromJson(Map<String, dynamic> json) {
    return Tab3(
      items: List<String>.from(json['page3']),
    );
  }
}
