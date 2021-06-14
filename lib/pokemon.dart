class Pokemon {
  List<String> weakness;
  String number;
  String description;
  String name;
  String thumbnailImage;
  List<String> type;

  Pokemon(
      this.weakness,
      this.number,
      this.description,
      this.name,
      this.thumbnailImage,
      this.type);

  Pokemon.fromJson(Map<String, dynamic> json) 
    : weakness = json['weakness'].cast<String>(),
    number = json['number'],
    description = json['description'],
    name = json['name'],
    thumbnailImage = json['thumbnailImage'],
    type = json['type'].cast<String>();
  

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['weakness'] = this.weakness;
    data['number'] = this.number;
    data['description'] = this.description;
    data['name'] = this.name;
    data['thumbnailImage'] = this.thumbnailImage;
    data['type'] = this.type;
    return data;
  }
}
