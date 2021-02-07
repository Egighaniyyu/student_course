import 'package:flutter/material.dart';
import 'package:mastering_flutter/theme.dart';
import 'course_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/logo.png"))),
            ),
            SizedBox(
              height: 96,
            ), // memberikan jarak dari gambar logo ke splash image
            Container(
              width: 267,
              height: 200,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("images/Scenes.png"))),
            ),
            SizedBox(
              height: 52,
            ),
            Text(
              "Up Your Skill",
              style: blackTextStyle.copyWith(fontSize: 28),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "We provide content that helps\neveryone to learn anything",
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(fontSize: 20),
            ),
            SizedBox(
              height: 96,
            ),
            Container(
              width: MediaQuery.of(context).size.width -
                  (2 * defaultMargin), // membuat buttonnya responsive
              height: 50,
              child: FlatButton(
                color: blueColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => coursePage(),
                    ),
                  );
                },
                child: Text(
                  "Get Started",
                  style: whiteTextStyle.copyWith(
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 52,
            ),
          ],
        ),
      ),
    );
  }
}
