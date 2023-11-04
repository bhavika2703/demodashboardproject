class LatestEvaluationsModel {
  int? id;
  String? title;
  String? description;
  String? time;
  String? name;
  String? image;
  String? evaluation;
  double? average;
  double? max;
  double? spinAvg;
  List<String>? bowler;

  LatestEvaluationsModel(
      {this.id,
        this.title,
        this.description,
        this.time,
        this.name,
        this.image,
        this.evaluation,
        this.average,
        this.max,
        this.spinAvg,
        this.bowler});

  LatestEvaluationsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    time = json['time'];
    name = json['name'];
    image = json['image'];
    evaluation = json['evaluation'];
    average = json['avrage'];
    max = json['max'];
    spinAvg = json['spinAvg'];
    bowler = json['bowler'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['time'] = this.time;
    data['name'] = this.name;
    data['image'] = this.image;
    data['evaluation'] = this.evaluation;
    data['avrage'] = this.average;
    data['max'] = this.max;
    data['spinAvg'] = this.spinAvg;
    data['bowler'] = this.bowler;
    return data;
  }
}