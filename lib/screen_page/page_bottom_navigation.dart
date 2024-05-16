import 'package:flutter/material.dart';
import 'package:project_sliciui/screen_page/page_MyCourses.dart';
import 'package:project_sliciui/screen_page/page_home.dart';


class PageBottomNavigationBar extends StatefulWidget {
  const PageBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<PageBottomNavigationBar> createState() =>
      _PageBottomNavigationBarState();
}

class _PageBottomNavigationBarState extends State<PageBottomNavigationBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          // handle tap
        },
        child: TabBarView(
          controller: tabController,
          children: [
            HomeScreen(),
            PageMyCourses(),
            // Tambahkan widget untuk tab ketiga di sini
            Placeholder(),
            // Contoh penggunaan Placeholder sebagai widget untuk tab ketiga
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabController.index,
        onTap: (index) {
          tabController.animateTo(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            activeIcon: Icon(Icons.home, color: Colors.blueAccent),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'My Courses',
            activeIcon: Icon(Icons.library_books, color: Colors.blueAccent),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Blogs',
            activeIcon: Icon(Icons.article, color: Colors.blueAccent),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Profile',
            activeIcon: Icon(Icons.person, color: Colors.blueAccent),
          ),
        ],
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}