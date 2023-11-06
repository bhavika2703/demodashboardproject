class LatestVisitsModel {
  int? id;
  String? title;
  String? startingDate;
  String? guests;
  String? gameTitle;
  String? gameSubtitle;
  String? bottomName;
  String? bottomTime;
  String? image;

  LatestVisitsModel(
      {this.id,
        this.title,
        this.startingDate,
        this.guests,
        this.gameTitle,
        this.gameSubtitle,
        this.bottomName,
        this.bottomTime,
        this.image});

  LatestVisitsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    startingDate = json['starting date'];
    guests = json['guests'];
    gameTitle = json['game title'];
    gameSubtitle = json['game subtitle'];
    bottomName = json['bottom name'];
    bottomTime = json['bottom time'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['starting date'] = this.startingDate;
    data['guests'] = this.guests;
    data['game title'] = this.gameTitle;
    data['game subtitle'] = this.gameSubtitle;
    data['bottom name'] = this.bottomName;
    data['bottom time'] = this.bottomTime;
    data['image'] = this.image;
    return data;
  }
}