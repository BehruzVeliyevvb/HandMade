import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Wrapup extends StatelessWidget {
  const Wrapup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DelayedDisplay(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Color(0XFF32594F),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(1.0),
              width: size.width * 0.40,
              height: 130.0,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Positioned(
                      left: size.width * 0.35 / 2 - 10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.asset(
                          'assets/images/tr1.jpg',
                          height: 100,
                          width: size.width * 0.45 / 2,
                          fit: BoxFit.cover,
                        ),
                      )),
                  Positioned(
                      left: size.width * 0.35 / 4,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.asset(
                          'assets/images/tr6.jpg',
                          width: size.width * 0.45 / 2,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      )),
                  Positioned(
                      left: size.width * 0.25 / 4 - 20,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.asset(
                          'assets/images/tr7.jpg',
                          width: size.width * 0.45 / 2,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      )),
                ],
              ),
            ),
            Container(
              width: size.width * 0.50,
              height: 130,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '2021 Compilations',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                  ),
                  Text(
                    'the only products of the tour',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
