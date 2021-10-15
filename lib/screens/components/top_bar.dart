import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web/models/follower.dart';

class TopBar extends StatelessWidget {

  final List<Widget> topIcons = [
    iconButtonTemp(Icons.home_outlined),
    iconButtonTemp(Icons.search),
    iconButtonTemp(Icons.live_tv_rounded),
    iconButtonTemp(Icons.favorite_border_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: EdgeInsets.symmetric(horizontal: 45),
      child: Row(
        children: [
          InkWell(
            onTap: (){},
            child: Row(
              children: [
                SvgPicture.asset(
                    "assets/icons/Instagram_icon.svg",
                    width: 20,
                    color: Colors.black,
                    semanticsLabel: 'instagram icon'
                ),
                SizedBox(width: 20,),
                SvgPicture.asset(
                    "assets/icons/Instagram_logo.svg",
                    width: 100,
                    color: Colors.black,
                    semanticsLabel: 'instagram logo'
                )
              ],
            ),
          ),
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(child: SizedBox()),
                  ...topIcons,
                  Expanded(child: SizedBox())
                ],
              )
          ),
          Row(
            children: [
              InkWell(
                onTap: (){},
                child: SvgPicture.asset(
                    "assets/icons/direct_message.svg",
                    width: 20,
                    color: Colors.black,
                    semanticsLabel: 'A red up arrow'
                ),
              ),
              SizedBox(width: 20,),
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(me.thumbnail),
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget iconButtonTemp(icon) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15),
    child: IconButton(
      autofocus: false,
      icon: Icon(
        icon,
        size: 25,
      ),
      onPressed: (){},
    ),
  );
}