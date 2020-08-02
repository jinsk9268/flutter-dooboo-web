import 'package:flutter/material.dart';

import './../../../styles.dart';

// statefull tap 으로 처리해야할것 같으나 ...일단은 하드 코딩
// TabController은 아닌거같은데 각 메뉴 틀릭하면 Widget을 불러오는 방식?? switch case 사용 가능?
class NaviTextMenu extends StatelessWidget {
  final String navMenuTitle;
  final double textOpacity;
  const NaviTextMenu({Key key, this.navMenuTitle, this.textOpacity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        navMenuTitle.toUpperCase(),
        style: TextStyle(
          // height: 15,
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: PageColor.mainBlack.withOpacity(textOpacity),
          letterSpacing: 1.85714,
        ),
      ),
    );
  }
}
