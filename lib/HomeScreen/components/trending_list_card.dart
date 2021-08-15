import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:handmadee/Models/Trending.dart';

import '../../constants.dart';

class TrendingList extends StatelessWidget {
  const TrendingList(
      {required this.index, required this.trendinglist, Key? key})
      : super(key: key);
  final Trending trendinglist;
  final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DelayedDisplay(
      delay: Duration(milliseconds: 100 * index + 1),
      fadingDuration: Duration(milliseconds: 600 * index + 1),
      child: Padding(
        padding: EdgeInsets.only(right: kDefaultPadding),
        child: SizedBox(
            width: size.width * 0.4,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  width: size.width * 0.7,
                  height: size.height * 0.3,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Colors.black.withAlpha(40),
                      offset: const Offset(0, 0),
                    )
                  ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      trendinglist.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
