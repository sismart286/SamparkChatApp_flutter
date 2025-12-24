import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampark_chat_app_25/Config/Images.dart';
import 'package:sampark_chat_app_25/Pages/ContactPage/Widgets/ContactSearch.dart';
import 'package:sampark_chat_app_25/Pages/ContactPage/Widgets/NewContactTile.dart';
import 'package:sampark_chat_app_25/Pages/Home/Widget/ChatTile.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isSearchEnable = false.obs;
    return Scaffold(
      appBar: AppBar(
        title: Text("Select contact"),
        actions: [
          Obx(
            () => IconButton(
              onPressed: () {
                isSearchEnable.value = !isSearchEnable.value;
              },
              icon: isSearchEnable.value
                  ? const Icon(Icons.close)
                  : const Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Obx(
              () => isSearchEnable.value
                  ? const ContactSearch()
                  : const SizedBox(),
            ),
            const SizedBox(height: 10),
            NewContactTile(
              btnName: "New contact",
              icon: Icons.person_add,
              ontap: () {},
            ),
            const SizedBox(height: 10),
            NewContactTile(
              btnName: "New Group",
              icon: Icons.group_add,
              ontap: () {},
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text("Contacts on Sampark"),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed("chatPage");
                  },
                  child: ChatTile(
                    imageUrl: AssetsImage.girlPic,
                    name: "Saas Kumari",
                    lastChat: "Baad me baat karte hai",
                    lastTime: "09:23 PM",
                  ),
                ),
                ChatTile(
                  imageUrl: AssetsImage.boyPic,
                  name: "Nitish Kumar",
                  lastChat: "Abhi baat karte hai",
                  lastTime: "09:23 PM",
                ),
                ChatTile(
                  imageUrl: AssetsImage.girlPic,
                  name: "Saas Kumari",
                  lastChat: "Baad me baat karte hai",
                  lastTime: "09:23 PM",
                ),
                ChatTile(
                  imageUrl: AssetsImage.boyPic,
                  name: "Nitish Kumar",
                  lastChat: "Abhi baat karte hai",
                  lastTime: "09:23 PM",
                ),
                ChatTile(
                  imageUrl: AssetsImage.girlPic,
                  name: "Saas Kumari",
                  lastChat: "Baad me baat karte hai",
                  lastTime: "09:23 PM",
                ),
                ChatTile(
                  imageUrl: AssetsImage.boyPic,
                  name: "Nitish Kumar",
                  lastChat: "Abhi baat karte hai",
                  lastTime: "09:23 PM",
                ),
                ChatTile(
                  imageUrl: AssetsImage.girlPic,
                  name: "Saas Kumari",
                  lastChat: "Baad me baat karte hai",
                  lastTime: "09:23 PM",
                ),
                ChatTile(
                  imageUrl: AssetsImage.boyPic,
                  name: "Nitish Kumar",
                  lastChat: "Abhi baat karte hai",
                  lastTime: "09:23 PM",
                ),
                ChatTile(
                  imageUrl: AssetsImage.girlPic,
                  name: "Saas Kumari",
                  lastChat: "Baad me baat karte hai",
                  lastTime: "09:23 PM",
                ),
                ChatTile(
                  imageUrl: AssetsImage.boyPic,
                  name: "Nitish Kumar",
                  lastChat: "Abhi baat karte hai",
                  lastTime: "09:23 PM",
                ),
                ChatTile(
                  imageUrl: AssetsImage.girlPic,
                  name: "Saas Kumari",
                  lastChat: "Baad me baat karte hai",
                  lastTime: "09:23 PM",
                ),
                ChatTile(
                  imageUrl: AssetsImage.boyPic,
                  name: "Nitish Kumar",
                  lastChat: "Abhi baat karte hai",
                  lastTime: "09:23 PM",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
