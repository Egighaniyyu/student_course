import 'package:flutter/material.dart';
import 'package:mastering_flutter/pages/splash_page.dart';
import 'package:mastering_flutter/pages/widgets/course_tile.dart';
import 'package:mastering_flutter/theme.dart';
import 'widgets/course_tile.dart';

class coursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        // agar tidak menutupi status bar
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit
                      .fill, // agar lebar gambar menyesuaikan dengan width dan height yang sudah di tentukan
                  image: AssetImage("images/video.png"),
                ),
              ),
            ),
            ListView(
              padding: EdgeInsets
                  .zero, // secara default padding itu ada jaraknya, untuk menghapusnya gunakan value tersebut
              children: [
                SizedBox(
                  height: 225,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          defaultMargin), // agar membuat padding 24, mengambil dari defaultMargin yang dibuat di theme.dart
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ), // agar yang terkena radius hanya bagian atas saja
                    color: backgroundColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // awalnya teks berada di tengah, untuk membuatnya rata kiri gunakan kode berikut
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Brand Marketing Design",
                        style: blackTextStyle.copyWith(fontSize: 22),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "How to build strong company with passion",
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      // NOTE: Preparing
                      Text(
                        "# Preparing",
                        style: blackTextStyle.copyWith(fontSize: 18),
                      ),
                      CourseTile(
                          imageUrl: "images/icon1.png",
                          title: "Ideation",
                          value: 0.7,
                          isLocked: false),
                      CourseTile(
                          imageUrl: "images/icon2.png",
                          title: "Validate Idea",
                          value: 0.2,
                          isLocked: true),
                      CourseTile(
                          imageUrl: "images/icon3.png",
                          title: "Strong Promotion",
                          value: 0.0,
                          isLocked:
                              true), // menginputkan data ke constructor course_tile
                      SizedBox(
                        height: 25,
                      ),
                      // NOTE: Preparing
                      Text(
                        "# Targeting Costumer",
                        style: blackTextStyle.copyWith(fontSize: 18),
                      ),
                      CourseTile(
                          imageUrl: "images/icon4.png",
                          title: "App Survey",
                          value: 0.0,
                          isLocked: true),
                      CourseTile(
                          imageUrl: "images/icon5.png",
                          title: "Get Funding",
                          value: 0.0,
                          isLocked: true),
                      CourseTile(
                          imageUrl: "images/icon6.png",
                          title: "Ship to Investor",
                          value: 0.0,
                          isLocked: true),
                      // NOTE : buttons
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width -
                            (2 * defaultMargin), // membuat buttonnya responsive
                        height: 50,
                        child: FlatButton(
                          color: blueColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17)),
                          onPressed: () {},
                          child: Text(
                            "Finish and Take Quiz",
                            style: whiteTextStyle.copyWith(
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width -
                            (2 * defaultMargin), // membuat buttonnya responsive
                        height: 50,
                        child: FlatButton(
                          color: bgDisColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SplashPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Skip to Home",
                            style: disTextStyle.copyWith(
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
