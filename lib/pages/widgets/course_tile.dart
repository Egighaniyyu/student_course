import 'package:flutter/material.dart';
import 'package:mastering_flutter/theme.dart';

class CourseTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double value;
  final bool isLocked;

  CourseTile(
      {this.imageUrl,
      this.title,
      this.value,
      this.isLocked}); // constructor untuk menampung data dari course_page

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets
          .zero, // secara default listile memiliki padding 16, untuk membuat nyanjadi tidak ada gunakan kode tersebut
      leading: Container(
        // leading : widget sebelum title
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  imageUrl)), // memberikan value dari constructor, data nya di dapat di course_page.dart
        ),
      ),
      title: Text(
        title, // memberikan value dari constructor, data nya di dapat di course_page.dart
        style: blackTextStyle.copyWith(fontSize: 18),
      ),
      subtitle: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: LinearProgressIndicator(
          // untuk membuat progressbar
          value:
              value, // memberikan value dari constructor, data nya di dapat di course_page.dart
          minHeight: 6,
          backgroundColor: Color(0xffECEEF5),
          valueColor: AlwaysStoppedAnimation(Color(0xffF35D22)),
        ),
      ),
      trailing: Container(
        // leading : widget sebelum title
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(isLocked
                ? "images/btn_locked.png"
                : "images/btn_play.png"), // memberikan value dari constructor, data nya di dapat di course_page.dart
          ),
        ),
      ),
    );
  }
}
