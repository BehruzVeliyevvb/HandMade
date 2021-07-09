import 'package:flutter/material.dart';
import 'package:handmadee/HomeScreen/HomeScreen.dart';

import 'components/bot_style.dart';
import 'components/input_style.dart';
import 'components/login_tap.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => node.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.04,
              ),
              LoginTap(),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                  padding: EdgeInsets.symmetric(
                      vertical: size.width * 0.1,
                      horizontal: size.height * 0.03),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome!',
                          style: TextStyle(
                              fontSize: 30,
                              color: Color(0XFF32594F),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Please Log In to Your Account',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        InputStyle(text: 'Email'),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hoverColor: Color(0XFF32594F),
                          ),
                          obscureText: true,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Forgot Password?',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.08,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              width: size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                color: Color(0XFF32594F),
                              ),
                              child: Center(
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            )),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: size.height * 0.002,
                              width: size.width * 0.08,
                              color: Colors.black,
                            ),
                            Center(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Text('OR'),
                              ),
                            ),
                            Container(
                              height: size.height * 0.002,
                              width: size.width * 0.08,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: size.height * 0.1,
                              width: size.width * 0.2,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0XFF32594F),
                                    width: 0.5,
                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/googleLogo.png'))),
                              ),
                            )
                          ],
                        )
                      ])),
              BotStyle(),
            ],
          ),
        ),
      ),
    );
  }
}
