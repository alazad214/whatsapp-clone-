import 'package:flutter/material.dart';
import 'package:whatsapp/bottom_nav_pages/chats.dart';
import 'package:whatsapp/bottom_nav_pages/communities.dart';
import 'package:whatsapp/bottom_nav_pages/calls.dart';
import 'package:whatsapp/bottom_nav_pages/updates.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text(
              "WhatsApp",
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_enhance,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search, color: Colors.white)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert, color: Colors.white)),
            ],
            bottom: const TabBar(
                indicatorColor: Colors.white,
                labelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: Colors.black45,
                tabs: [
                  Tab(
                    text: "Chats",
                  ),
                  Tab(
                    text: "Updates",
                  ),
                  Tab(
                    text: "Communities",
                  ),
                  Tab(
                    text: "Calls",
                  ),
                ]),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.teal,
            child: const Icon(
              Icons.message,
              color: Colors.white,
            ),
          ),
          body: TabBarView(children: [Chats(), Updates(), Status(), Calls()])),
    );
  }
}
