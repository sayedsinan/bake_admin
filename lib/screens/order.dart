import 'package:bake_n_cake_admin_side/color/colors.dart';
import 'package:bake_n_cake_admin_side/screens/6_months.dart';
import 'package:bake_n_cake_admin_side/screens/list_tile.dart';
import 'package:bake_n_cake_admin_side/screens/widgets/drawer.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: NavDrawer(),
        backgroundColor: maincolor,
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
          backgroundColor: maincolor,
          elevation: 0,
          title: Text(
            "       Orders",
            style: GoogleFonts.aBeeZee(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_literals_to_create_immutables
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.purple[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelColor: Colors.black,
                  dividerColor: Colors.black,
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    Tab(
                      text: ' All times',
                    ),
                    Tab(
                      text: '6 months',
                    ),
                    Tab(
                      text: '30 days',
                    ),
                    Tab(
                      text: '24 hours',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    AllTime(),
                    SixMonths(),
                    AllTime(),
                    AllTime()

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
