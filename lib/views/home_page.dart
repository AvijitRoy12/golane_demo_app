import 'package:flutter/material.dart';
import 'package:golane_demo_app/models/bottom_nav_bar.dart';
import 'package:golane_demo_app/models/tickets.dart';
import 'package:golane_demo_app/models/user_destination.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ticketing system'),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.grey),
            child: Text('Book your ticket'),
          ),
          user_route(Text('From')),
          user_route(Text('To')),
          Row(
            children: [
              Tickets(Text("Day Ticket")),
              Tickets(Text("24 hrs Ticket")),
            ],
          ),
          Row(
            children: [
              Tickets(Text("One Month Ticket")),
              Tickets(Text("Three Months Ticket")),
            ],
          ),
          BottomNavBar(),
        ],
      ),
    );
  }
}


