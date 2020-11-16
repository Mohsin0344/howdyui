class CardData{
  String _image;
  String _title;
  String _description;
  String _price;

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  CardData(this._image,this._title,this._description,this._price);

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get price => _price;

  set price(String value) {
    _price = value;
  }
}