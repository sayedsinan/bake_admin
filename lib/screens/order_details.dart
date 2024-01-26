import 'package:bake_n_cake_admin_side/color/colors.dart';
import 'package:bake_n_cake_admin_side/screens/font/styling.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeof = MediaQuery.of(context);
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
          Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.white,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: SizedBox(
                      height: sizeof.size.height * 0.3,
                      width: sizeof.size.width * 1,
                      child: Image.asset(
                        'Assets/cake1.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text("Customer name :"
                    ,style: normalstyling(15),),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                   const    SizedBox(
                        width: 20,
                      ),
                      Text("Phone number :",style: normalstyling(15),),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const SizedBox(
                        width: 20,
                      ),
                      Text("Orderd Time :",style: normalstyling(15),),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text("Order ID :",style: normalstyling(15),),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const  SizedBox(
                        width: 20,
                      ),
                      Text("Date :",style: normalstyling(15),),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const  SizedBox(
                        width: 20,
                      ),
                      Text("KG :",style: normalstyling(15),),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            buttonColor),
                      ),
                      onPressed: () {},
                      
                      child: const Row(
                        children: [
                          Icon(
                            Icons.cancel_outlined,
                            color: Colors.black,
                          ),
                          SizedBox(width: 5,),
                          Text('Cancel')
                        ],
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                  
                  style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            buttonColor),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [Text('Ready')],
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
