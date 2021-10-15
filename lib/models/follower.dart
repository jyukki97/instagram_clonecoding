var me = User(name: "jyukki", thumbnail: "assets/images/none_thumbnail.jpg");
var taeyeon = User(name: "taeyeon_ss", thumbnail: "assets/images/taeyeon_thumbnail.jpg");
var miyeon = User(name: "noodle.zip", thumbnail: "assets/images/miyean_thumbnail.jpg");
var yuqi = User(name: "yuqisong.923", thumbnail: "assets/images/yuqi_thumbnail.jpg");
var yena = User(name: "yena.jigumina", thumbnail: "assets/images/yena_thumbnail.jpg");
var minju = User(name: "minn.__.ju", thumbnail: "assets/images/minju_thumbnail.jpg");

class User {
  User({
    required this.name,
    this.thumbnail = ""
  });
  String name;
  String thumbnail;
}