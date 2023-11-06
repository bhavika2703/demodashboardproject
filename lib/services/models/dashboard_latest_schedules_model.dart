class LatestScheduleModel {
  int? id;
  String? title;
  String? startingDate;
  String? endingDate;
  String? gameTitle;
  String? type;
  String? gameSubtitle;
  String? bottomName;
  String? bottomTime;
  String? image;

  LatestScheduleModel(
      {this.id,
        this.title,
        this.startingDate,
        this.endingDate,
        this.gameTitle,
        this.type,
        this.gameSubtitle,
        this.bottomName,
        this.bottomTime,
        this.image});

  LatestScheduleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    startingDate = json['starting date'];
    endingDate = json['ending date'];
    gameTitle = json['game title'];
    type = json['type'];
    gameSubtitle = json['game subtitle'];
    bottomName = json['bottom name'];
    bottomTime = json[' bottom time'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['starting date'] = this.startingDate;
    data['ending date'] = this.endingDate;
    data['game title'] = this.gameTitle;
    data['type'] = this.type;
    data['game subtitle'] = this.gameSubtitle;
    data['bottom name'] = this.bottomName;
    data[' bottom time'] = this.bottomTime;
    data['image'] = this.image;
    return data;
  }
}