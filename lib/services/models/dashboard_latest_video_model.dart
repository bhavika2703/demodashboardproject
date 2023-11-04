class LatestVideoMenu {
  int? id;
  int? runningTime;
  String? title;
  String? name;
  String? time;
  String? video;

  LatestVideoMenu(
      {this.id,
        this.runningTime,
        this.title,
        this.name,
        this.time,
        this.video});

  LatestVideoMenu.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    runningTime = json['runningTime'];
    title = json['title'];
    name = json['name'];
    time = json['time'];
    video = json['video'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['runningTime'] = this.runningTime;
    data['title'] = this.title;
    data['name'] = this.name;
    data['time'] = this.time;
    data['video'] = this.video;
    return data;
  }
}