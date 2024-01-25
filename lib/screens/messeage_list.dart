import 'package:bake_n_cake_admin_side/color/colors.dart';
import 'package:bake_n_cake_admin_side/screens/chat_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Messeage extends StatelessWidget {
  const Messeage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      appBar: AppBar(
        backgroundColor: maincolor,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child:  Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        title: Text(
          "        Messages",
          style: GoogleFonts.aBeeZee(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(const MesseageIndex());
                },
                child: ListTile(
                  leading: const CircleAvatar(),
                  title: const Text("Sinan"),
                  subtitle: const Text("Message"),
                  trailing: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        height: 30,
                        width: 30,
                        color: Colors.green,
                        child: const Center(child: Text("2")),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                height: 1,
                color: Colors.grey,
              )
            ],
          );
        }),
      ),
    );
  }
}
