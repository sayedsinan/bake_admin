import 'package:bake_n_cake_admin_side/color/colors.dart';
import 'package:bake_n_cake_admin_side/screens/font/styling.dart';
import 'package:bake_n_cake_admin_side/screens/my_card.dart';
import 'package:flutter/material.dart';

class NewProduct extends StatelessWidget {
  const NewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeof = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: maincolor,
        appBar: AppBar(
          backgroundColor: maincolor,
          leading: Icon(
            Icons.arrow_back_ios,
            color: textColor,
          ),
          elevation: 0,
          title: Text(
            "    Prodct adding",
            style: heading(20),
          ),

        ),
        body: MyCard(),
        );
  }
}
