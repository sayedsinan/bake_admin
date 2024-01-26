import 'package:bake_n_cake_admin_side/color/colors.dart';
import 'package:bake_n_cake_admin_side/screens/font/styling.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomersDetails extends StatelessWidget {
  const CustomersDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeof = MediaQuery.of(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFB5DBCE),
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: Text(
            "     Customer's Details",
            style: GoogleFonts.aBeeZee(color: Colors.black),
          ),
        ),
        backgroundColor: const Color(0xFFB5DBCE),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                child: Column(
                  children: [
                   
                    SizedBox(
                      height: sizeof.size.height*0.3,
                      width: sizeof.size.width*1,
                    child: Image.asset("Assets/person.jpg",fit: BoxFit.fill,),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:const  EdgeInsets.all(8.0),
                              child: Text("Customer name : ",style :normalstyling(15)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:const  EdgeInsets.all(8.0),
                              child: Text("Phone number : ",style: normalstyling(15),),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:const  EdgeInsets.all(8.0),
                              child: Text("E- mail : ",style: normalstyling(15),),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Payment: ",style: normalstyling(15),),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: delete,
                      ),
                      child: const Text("Block",),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
