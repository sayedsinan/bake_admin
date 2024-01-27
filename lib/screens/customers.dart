import 'package:bake_n_cake_admin_side/color/colors.dart';
import 'package:bake_n_cake_admin_side/screens/customers_details.dart';
import 'package:bake_n_cake_admin_side/screens/font/styling.dart';
import 'package:bake_n_cake_admin_side/screens/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Customers extends StatelessWidget {
  const Customers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      backgroundColor: const Color(0xFFB5DBCE),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => // Ensure Scaffold is in context
              IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer()),
        ),
        backgroundColor: const Color(0xFFB5DBCE),
        title: Text(
          "      Customers",
          style: heading(20),
        ),
        elevation: 0,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.all(30),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Enter search term',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: GestureDetector(
              onTap: () {
                Get.to(()=>const CustomersDetails());
              },
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                leading: const CircleAvatar(backgroundImage: AssetImage('Assets/person.jpg'),),
                title: Row(
                  children: [
                    Text(
                      "Sinan",
                      style: normalstyling(15),
                    ),
                  const   SizedBox(
                      width: 100,
                    ),
                    Text(
                      "Orders",
                      style: normalstyling(15),
                    )
                  ],
                ),
                subtitle: Row(
                  children: [
                  const   Text("9023783412",),
                  const   SizedBox(
                      width: 90,
                    ),
                 const    Text("2"),
                  const   SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          color: delete
                        ),
                      ),
                    )
                  ],
                ),
                tileColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
