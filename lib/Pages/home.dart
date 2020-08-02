import 'package:flutter/material.dart';

import './Navigation/navigation.dart';
import './Main/main_home.dart';

import '../styles.dart';

class DoobooBlogHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: PageColor.bgColor,
        body: Container(
            // 정가운데로 어떻게??
            // width: mediaSize.width,
            height: mediaSize.height,
            constraints: BoxConstraints(maxWidth: 1440),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Navigation(),
                MainHome(),
              ],
            )));
  }
}
