import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handmadee/HomeScreen/components/section.dart';
import 'package:handmadee/HomeScreen/components/trending_list_card.dart';
import 'package:handmadee/HomeScreen/components/wrapup.dart';
import 'package:handmadee/Models/Category.dart';
import 'package:handmadee/Models/Trending.dart';

import '../../constants.dart';
import 'demopromo_list.dart';
import 'header.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Header(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Section(
                    title: 'Categories',
                  ),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Wrap(
                          spacing: 18,
                          children: [
                            ...List.generate(categorylist.length, (index) {
                              return InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 90,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          offset: Offset.zero,
                                          blurRadius: 15.0,
                                        )
                                      ]),
                                  child: Center(
                                    child: Wrap(
                                      direction: Axis.vertical,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      children: [
                                        Container(
                                          height: 42,
                                          width: 42,
                                          child: SvgPicture.asset(
                                            categorylist[index].image,
                                            color: Color(0XFF32594F),
                                          ),
                                        ),
                                        Text(
                                          categorylist[index].title,
                                          style: TextStyle(
                                            fontSize: 16,
                                            height: 1.5,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            })
                          ],
                        ),
                      ),
                    ),
                  ),
                  Section(title: 'Today`s Promo '),
                  SizedBox(
                    height: 8,
                  ),
                  DemoPromoList(),
                  SizedBox(
                    height: 8,
                  ),
                  Section(title: 'Trending Products '),
                  SizedBox(
                    height: 8,
                  ),
                  Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(
                          left: kDefaultPadding,
                          right: kDefaultPadding,
                          bottom: kDefaultPadding,
                        ),
                        child: Row(
                          children: [
                            ...List.generate(trendingList.length, (index) {
                              return TrendingList(
                                trendinglist: trendingList[index],
                                index: index,
                              );
                            })
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                    child: Text(
                      'Special products',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Wrapup(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
