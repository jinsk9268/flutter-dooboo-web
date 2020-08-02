import 'package:flutter/material.dart';

import './../../styles.dart';

class MainHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget homeTitle = Container(
      padding: EdgeInsets.only(bottom: 55),
      // height: 203,
      // constraints: BoxConstraints(maxWidth: 956, maxHeight: 203),
      constraints: BoxConstraints(maxWidth: 956),
      child: Text(
        'Flexible innovation\n'
        'starts with dooboolab.',
        style: TextStyle(
          height: 1.25,
          fontSize: 64,
          color: PageColor.mainBlack,
          letterSpacing: -3.5,
        ),
      ),
    );

    Widget homeSubTitle = Container(
      padding: EdgeInsets.only(bottom: 53),
      // height: 103.5,
      // constraints: BoxConstraints(maxWidth: 572, maxHeight: 103.5),
      constraints: BoxConstraints(maxWidth: 572),
      child: Text(
          'We aim to find the IT services that the world needs.\n'
          'The goal is to consistently find and commercialize ideas that have the '
          'potential to change the market.',
          style: TextStyle(
            height: 1.8,
            fontSize: 18,
            color: PageColor.mainBlack.withOpacity(0.5),
          )),
    );

    Widget contactBtn = Container(
      width: 280,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
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
      child: RaisedButton(
        onPressed: () {},
        color: PageColor.mainBlue,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        child: Text('Contact us',
            style: TextStyle(
                height: 1.6,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xffEDF0F4))),
      ),
    );

    return Container(
        padding: EdgeInsets.only(top: 102, left: 189, bottom: 110),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            homeTitle,
            homeSubTitle,
            contactBtn,
          ],
        ));
  }
}
