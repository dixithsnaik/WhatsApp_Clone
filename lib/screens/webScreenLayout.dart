import 'package:flutter/material.dart';
import 'package:watsapp_clone/widgets/contscts_list.dart';
import 'package:watsapp_clone/widgets/web_chat_appbar.dart';
import 'package:watsapp_clone/widgets/web_profileBar.dart';
import 'package:watsapp_clone/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactsLists(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Column(
              children: [
                WebChatAppBar()
                //chatlist
                //Message input box
              ],
            ),
          ),
        ],
      ),
    );
  }
}
