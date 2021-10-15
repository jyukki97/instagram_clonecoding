import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/models/follow_post.dart';
import 'package:flutter_web/models/follower.dart';
import 'package:intl/intl.dart';

class HomeScroll extends StatelessWidget {
  final List<Post> post = [post_1, post_5, post_2, post_3, post_4, post_6];
  final List<User> follow = [taeyeon, minju, miyeon, yuqi, yena];

  @override
  Widget build(BuildContext context) {
    var _width = 3 * MediaQuery
        .of(context)
        .size
        .width;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            height: 150.0,
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(),
                ...follow.map((e) => storyButton(e)),
                Spacer(),
              ],
            ),
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 25.0,
              crossAxisSpacing: 25.0,
              childAspectRatio: (_width - 100) / (_width + 380)
          ),
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      child: Image.asset(
                        post[index].images[0], fit: BoxFit.cover,),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        circleImage(20, post[index].user.thumbnail),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start,
                            children: [
                              Text(
                                post[index].user.name,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("3 hrs ago",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.3)
                                ),)
                            ],
                          ),
                        ),
                        Text(
                          "${NumberFormat('###,###,###,###').format(
                              post[index].likes)} likes",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                          ),
                        ),
                        SizedBox(width: 10,),
                        Icon(Icons.favorite_border_rounded,
                          size: 15,),
                        SizedBox(width: 10,),
                        Icon(Icons.mode_comment_outlined,
                          size: 15,),
                        SizedBox(width: 10,),
                        Icon(Icons.near_me_outlined, size: 15,),
                        SizedBox(width: 10,),
                        Icon(Icons.more_horiz_rounded)
                      ],
                    ),
                  )
                ],
              ),
            );
          },
            childCount: post.length,
          ),
        ),
      ],
    );
  }
}

storyButton(user) {
  return InkWell(
    onTap: (){},
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          circleImage(34, user.thumbnail),
          SizedBox(height: 10,),
          Text(user.name, style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold
          ),),
        ],
      ),
    ),
  );
}

circleImage(radius, image) {
  return CircleAvatar(
    radius: radius,
    backgroundColor: Colors.grey.withOpacity(0.4),
    child: CircleAvatar(
      radius: radius - 2,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: radius - 5,
        backgroundImage: AssetImage(image),
      ),
    ),
  );
}