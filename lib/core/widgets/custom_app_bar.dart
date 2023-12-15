import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/styles.dart';

AppBar buildAppBar({title}) {
  return AppBar(
    leading: Center(
      child: SvgPicture.asset('assets/icons/arrow_back.svg',
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title??'',
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),

  );
}