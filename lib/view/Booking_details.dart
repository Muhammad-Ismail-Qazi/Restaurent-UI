import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/home.dart';


class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
              return const CustomListTile(title: "title", location: "location");
            },),
          ),
          // ElevatedButton.icon(onPressed:() {
          //
          // },
          //     icon: Icon(Icons.add),
          //   label: Text("Book Now"),
         // ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(CupertinoIcons.add),
        onPressed: () {

        },
      ),
    );
  }
}