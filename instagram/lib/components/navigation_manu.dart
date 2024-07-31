import 'package:flutter/material.dart';
import 'package:instagram/page/my_add_post_page.dart';
import 'package:instagram/page/my_likes_page.dart';
import 'package:instagram/page/my_main_page.dart';
import 'package:instagram/page/my_profile_page.dart';
import 'package:instagram/page/my_search_page.dart';

class NavigationMenu extends StatefulWidget {
  final selectedIndex;
  const NavigationMenu({Key? key, this.selectedIndex = 0}) : super(key: key);

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  late int _selectedIndex;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
    _pageController = PageController(initialPage: _selectedIndex);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          MyMainPage(),
          SearchView(),
          MyAddPostPage(),
          MyLikesPage(),
          MyProfilePage(),
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: 'Main'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Post',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'Likes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity_outlined), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF1780C2),
        unselectedItemColor: const Color(0xFF737373),
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}