import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/constant/text_style.dart';
import 'package:ui/home.dart';

import '../constant/space_values.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                title: Text(
                  "Ismail",
                  style: CustomFontStyle.font12ClrFntWtBldBlk,
                ),
                leading: CircleAvatar(),
                trailing: CircleAvatar(
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.notifications)),
                ),
              ),
            ),
            Spaces.y2,
            Container(
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                title: Text(
                  "Account Setting",
                  style: CustomFontStyle.font12ClrBlk,
                ),
                leading: const Icon(CupertinoIcons.profile_circled),
                trailing: CircleAvatar(
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.edit)),
                ),
              ),
            ),
            Spaces.y2,
            Container(

              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Language",
                      style: CustomFontStyle.font12ClrBlk,
                    ),
                    leading: const Icon(CupertinoIcons.conversation_bubble),
                    trailing: CircleAvatar(
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Feedback",
                      style: CustomFontStyle.font12ClrBlk,
                    ),
                    leading: const Icon(CupertinoIcons.conversation_bubble),
                    trailing: CircleAvatar(
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Rate us",
                      style: CustomFontStyle.font12ClrBlk,
                    ),
                    leading: const Icon(CupertinoIcons.star),
                    trailing: CircleAvatar(
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "New version",
                      style: CustomFontStyle.font12ClrBlk,
                    ),
                    leading: const Icon(CupertinoIcons.up_arrow),
                    trailing: CircleAvatar(
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
                    ),
                  ),

                ],
              ),
            ),
            Spaces.y2,
            ElevatedButton(onPressed: () {}, child: const Text("Log out"))
          ],
        ),
      ),
    );
  }
}