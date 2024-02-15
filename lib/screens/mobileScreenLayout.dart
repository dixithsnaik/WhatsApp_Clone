import 'package:flutter/material.dart';
import 'package:watsapp_clone/colors.dart';
import 'package:watsapp_clone/widgets/contscts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
         
        
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined, color: textColor),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: textColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: textColor),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.black,
          surfaceTintColor: appBarColor,
          indicatorColor: tabColor,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.comment),
              label: "Chat",
            ),
            NavigationDestination(
              icon: Icon(Icons.update),
              label: "Updates",
            ),
            NavigationDestination(
              icon: Icon(Icons.group_outlined),
              label: "Communities",
            ),
            NavigationDestination(
              icon: Icon(Icons.call_outlined),
              label: "Calls",
            ),
          ],
        ),
        body: const ContactsLists(),
      ),
    );
  }
}
