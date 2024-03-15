import 'package:bake_n_cake_admin_side/color/colors.dart';
import 'package:bake_n_cake_admin_side/controller/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MesseageIndex extends StatelessWidget {
  const MesseageIndex({super.key, required this.index});
final int index;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ChatController>();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: maincolor,
        title: Text(
         controller.userData[index].name,
          style: GoogleFonts.aBeeZee(color: Colors.black),
        ),
        leading: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
             CircleAvatar(
              backgroundImage: NetworkImage(controller.userData[index].image)
            )
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Icon(
              Icons.call,
              color: buttonColor,
            ),
          )
        ],
      ),
    );
  }
}
