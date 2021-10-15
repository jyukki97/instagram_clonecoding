import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web/screens/components/top_bar.dart';

import 'components/home_scroll.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TopBar(),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: SizedBox()
                ),
                Expanded(
                    flex: 6,
                    child: HomeScroll()
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 45),
                      alignment: Alignment.centerRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                              "assets/icons/table.svg",
                              width: 20,
                              color: Colors.black.withOpacity(0.3),
                              semanticsLabel: 'table'
                          ),
                          SizedBox(height: 20,),
                          SvgPicture.asset(
                              "assets/icons/grid.svg",
                              width: 20,
                              color: Colors.black,
                              semanticsLabel: 'grid'
                          ),
                          SizedBox(height: 20,),
                          SvgPicture.asset(
                              "assets/icons/vertical_view.svg",
                              width: 20,
                              color: Colors.black.withOpacity(0.3),
                              semanticsLabel: 'vertical_view'
                          ),
                        ],
                      )
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}