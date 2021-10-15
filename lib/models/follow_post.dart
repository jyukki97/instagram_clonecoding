import 'follower.dart';

var post_1 = Post(
  user: taeyeon,
  description: '',
  likes: 609893,
  images: [
    "assets/images/taeyeon.jpg"
  ]
);

var post_2 = Post(
    user: minju,
    description: '#CELINE #CELINETABOU #광고',
    likes: 395842,
    images: [
      "assets/images/minju.jpg"
    ]
);

var post_3 = Post(
    user: miyeon,
    description: '🎩🖤🕊사랑하는 엠카데이🖤🤠',
    likes: 208745,
    images: [
      "assets/images/miyeon.jpg"
    ]
);

var post_4 = Post(
    user: yena,
    description: '부가티랑🐾🖤',
    likes: 233559,
    images: [
      "assets/images/yena.jpg",
      "assets/images/yena2.jpg"
    ]
);

var post_5 = Post(
    user: yuqi,
    description: 'stage boom 🎤',
    likes: 286918,
    images: [
      "assets/images/yuqi.jpg"
    ]
);

var post_6 = Post(
    user: yuqi,
    description: '🌧',
    likes: 303551,
    images: [
      "assets/images/yuqi2.jpg"
    ]
);

class Post {
  Post({
    required this.user,
    required this.description,
    required this.likes,
    required this.images
  });
  User user;
  List<String> images;
  String description;
  int likes;

}