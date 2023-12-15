import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_course/core/utils/styles.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import 'widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Cart'),
      body: MyCartViewBody(),
    );
  }


}
