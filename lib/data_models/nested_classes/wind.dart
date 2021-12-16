class Wind {
  Wind({
    this.speed,
  });

  Wind.fromJson(dynamic json) {
    speed = json['speed'];
  }

  dynamic speed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['speed'] = speed;
    return map;
  }
}