import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB5DBCE),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xFFB5DBCE),
        title: Text(
          "        Order Details",
          style: GoogleFonts.aBeeZee(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Container(
                        height: 250,
                        width: 250,
                        color: Colors.amber,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("Customer name :"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("Order ID :"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("Kg :"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("Date :"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("Ordered Time :"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("Phone number :"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ),
    const      SizedBox(height: 20,),
          Column(
           
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
            mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                
                  ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.cancel_outlined,
                            color: Colors.black,
                          ),
                          Text('Cancel')
                        ],
                      )),SizedBox(width: 20,)
                      ,ElevatedButton(
                        
                      onPressed: () {},
                      child: Row(
                        children: [
                          
                          Text('Ready')
                        ],
                      ))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
