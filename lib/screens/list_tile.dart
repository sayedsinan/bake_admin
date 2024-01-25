import 'package:bake_n_cake_admin_side/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllTime extends StatelessWidget {
  const AllTime({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20,bottom: 30),
              child: ListTile(
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                leading: CircleAvatar(),
                title: Row(
                  children: [
                    Text("Red Velvet Cake "),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Order ID #242")
                  ],
                ),
                subtitle: Column(
                  children: [
                    Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          height: 20,
                          width: 40,
                          child: Center(
                              child: Text(
                            "1.0 Kg",
                            style: GoogleFonts.aBeeZee(color: Colors.black),
                          )),
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "₹ 1,200",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Text("12/12/2024"),
                      
                    ]),
                    // Text("Sinan",style: GoogleFonts.aBeeZee(color: Colors.black,fontWeight: FontWeight.bold),)
                  const  SizedBox(
                      height: 20,
                    )
                    ,Padding(
                      padding: const EdgeInsets.only(bottom: 40,left: 70),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                            height: 20,
                            width: 50,
                            color: buttonColor,
                            child: Center(
                              child: Text(
                                "Ready",
                                style: GoogleFonts.aBeeZee(color: Colors.black),
                              ),
                            ),
                          ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
