import 'package:bake_n_cake_admin_side/color/colors.dart';
import 'package:bake_n_cake_admin_side/screens/font/styling.dart';
import 'package:bake_n_cake_admin_side/screens/order_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AllTime extends StatelessWidget {
  const AllTime({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeof = MediaQuery.of(context);
    return ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: ()=>Get.to(OrderDetails()),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(6),
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('Assets/cake1.jpg'),
                  ),
                  title: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Red Velvet Cake",
                            style: heading(15),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Container(
                                  height: sizeof.size.height * 0.02,
                                  width: sizeof.size.width * 0.14,
                                  color: contaienerColor,
                                  child: Center(child: Text("1.0 KG",style: normalstyling(15),)),
                                ),
                              ),
                             const  SizedBox(width: 12,),
                              Text("₹1,200",style: heading(15),)
                            ],
                          ),
              
                         Row(
                       
                          children: [
                            Padding(
                              padding:  const EdgeInsets.only(right: 70),
                              child: Text("Sinan",style: heading(15),),
                            ),
                          ],
                        )
                        ],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: [
                          Text(
                            "Order ID #1231",
                            style: heading(15),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '12/03/2022',
                            style: normalstyling(15),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: sizeof.size.height * 0.03,
                              width: sizeof.size.width * 0.15,
                              color: buttonColor,
                              child: Center(
                                child: Text(
                                  " Done",
                                  style: normalstyling(15),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        );
      },
    );
  }
}
