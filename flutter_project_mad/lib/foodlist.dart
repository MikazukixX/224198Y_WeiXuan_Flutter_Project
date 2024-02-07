class FoodList {
  String name;
  String price;
  String rating;
  String imagepath;
  String description;

  FoodList({
    this.name,
    this.price,
    this.rating,
    this.imagepath,
    this.description
  });

  String get _name => name;
   String get _price => price;
    String get _rating => rating;
   String get _imagepath => imagepath;
   String get _description => description;
}