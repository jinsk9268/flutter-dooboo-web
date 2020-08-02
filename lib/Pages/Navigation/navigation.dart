import 'package:flutter/material.dart';

import './Widget/navi_text_menu.dart';

import '../../styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Navigation extends StatelessWidget {
  @override
  // 나머지 위젯도 파일 분리??
  Widget build(BuildContext context) {
    Widget imgLogoWidget = Container(
      width: 86,
      height: 84,
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 10, color: PageColor.bgColor),
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              boxShadow: [
                BoxShadow(
                    color: PageColor.tlShadow,
                    offset: Offset(-6.0, -6.0),
                    blurRadius: 16.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: PageColor.brShadow,
                    offset: Offset(6.0, 6.0),
                    blurRadius: 16.0,
                    spreadRadius: 1.0)
              ]),
          child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://s3-alpha-sig.figma.com/img/2646/664c/6cab4425eda83a50b9061250ad1bde09?Expires=1597017600&Signature=V6gaiD5rwy5-GWrzsj1siS2TQbFXJTqC5wuIaUbAMhy1wVsgeMYOI~RnwwUSKeZ8X7q1kKblLLmbPC-MGdjfoyZz6tAKiq3HDkdSzwXwS1tK6K4LohQ9xmkZaU~FYHhr16YfsYheuRghvDZ6UcbOzTrYQ5UF0fzO3f6BmZDLe7bN6RXXTc2NF0wcwon9M4hUqVZXlm7eK1jmB6btd34MeeNO6GzjhtuTIQy4R14S-dvbslue-ggXZPbPS-bVdz8~vFOwrbs~Sy9Hs4jlyVOx99VxOlNy80VHMekQiK-LhjJk1EkiQKfti45ALBakjNzwS3fhqmMVDAWv8p7888Xzxg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'))),
    );

// 중복된 부분 줄일 수 있는 방법?? 버튼으로 진행??
    Widget searchWidget = Container(
        width: 42,
        height: 42,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                boxShadow: [
                  BoxShadow(
                      color: PageColor.tlShadow,
                      offset: Offset(-6.0, -6.0),
                      blurRadius: 16.0,
                      spreadRadius: 1.0),
                  BoxShadow(
                      color: PageColor.brShadow,
                      offset: Offset(6.0, 6.0),
                      blurRadius: 16.0,
                      spreadRadius: 1.0)
                ]),
            child: CircleAvatar(
                radius: 50,
                backgroundColor: PageColor.bgColor,
                child: Icon(
                  FontAwesomeIcons.search,
                  size: 14,
                  color: PageColor.logoText,
                ))));

    Widget loginWidget = Container(
        width: 42,
        height: 42,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                boxShadow: [
                  BoxShadow(
                      color: PageColor.tlShadow,
                      offset: Offset(-6.0, -6.0),
                      blurRadius: 16.0,
                      spreadRadius: 1.0),
                  BoxShadow(
                      color: PageColor.brShadow,
                      offset: Offset(6.0, 6.0),
                      blurRadius: 16.0,
                      spreadRadius: 1.0)
                ]),
            child: CircleAvatar(
                radius: 50,
                backgroundColor: PageColor.bgColor,
                child: Text('Log in',
                    style:
                        TextStyle(fontSize: 12, color: PageColor.logoText)))));

    return Container(
      padding: EdgeInsets.all(25.0),
      height: 135,
      child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imgLogoWidget,
            Spacer(),
            NaviTextMenu(
              navMenuTitle: 'home',
              textOpacity: 1.0,
            ),
            SizedBox(width: 87),
            NaviTextMenu(
              navMenuTitle: 'react native seoul',
              textOpacity: 0.6,
            ),
            SizedBox(width: 87),
            NaviTextMenu(
              navMenuTitle: 'graphql seoul',
              textOpacity: 0.6,
            ),
            Spacer(),
            searchWidget,
            SizedBox(width: 28),
            loginWidget
          ]),
    );
  }
}
