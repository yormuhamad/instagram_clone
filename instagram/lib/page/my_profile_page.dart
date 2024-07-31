import 'package:flutter/material.dart';
import 'package:instagram/page/profile_leader_Card.dart';
import 'package:instagram/page/profile_post_card.dart';
import 'package:instagram/page/profile_reels_cards.dart';
import 'package:instagram/page/profile_save_cards.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back),),
          backgroundColor: const Color.fromARGB(255, 204, 199, 199),
          title: const Text('Profile'),
          actions: [
            IconButton(
              onPressed: () {},
            icon: const Badge(
              textColor: Colors.white,
              label: Text("5"),
              child: Icon(Icons.notifications))),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [const ProfileHeaderCard()];
          }, 
          body: 
          const Column(
            children: [
              TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.add_a_photo),
                  ),
                   Tab(
                  icon: Icon(Icons.play_circle_outline),
                  ),
                   Tab(
                  icon: Icon(Icons.bookmark_outline),
                  ),
                  ]),
                  Expanded(
                    child: TabBarView(children: [
                      ProfilePostCards(),
                      ProfileReelsCards(),
                      ProfileSaveCards(),
                      // Center(child: Text("Page2")),
                    ]),
                    )
            ],
          ))),
    );
  }
}



class ProfileCountTitle extends StatelessWidget {
  const ProfileCountTitle({
    super.key, required this.count, required this.title,
  });
  final String count;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
        style: const TextStyle(
          fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          Text(
            title,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
      ],
    );
  }
}