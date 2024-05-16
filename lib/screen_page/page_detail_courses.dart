import 'package:flutter/material.dart';

void main() {
  runApp(MachineLearning());
}

class MachineLearning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Machine Learning'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Handle back button press
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Handle search button press
              },
            ),
          ],
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/gambar/cyber1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Machine Learning',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '4.6 ★ 10.5k Learners',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TabBar(
                tabs: [
                  Tab(text: 'Overview'),
                  Tab(text: 'Lectures'),
                  Tab(text: 'Similar Courses'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    OverviewTab(),
                    LecturesTab(),
                    SimilarCoursesTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OverviewTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.access_time), // Icon for time
              title: Text('6 Hours'),
            ),
            ListTile(
              leading: Icon(Icons.badge), // Icon for certificate
              title: Text('Completion Certificate'),
            ),
            ListTile(
              leading: Icon(Icons.school), // Icon for level
              title: Text('Beginner'),
            ),
            SizedBox(height: 16),
            Text('What will I learn?'),
            Text(
              'The Machine learning basics program is designed to offer a solid foundation & work-ready skills for ML engineers.',
            ),
            SizedBox(height: 16),
            Text('Ratings and Reviews'),
            Text('3.4 ★ 3 reviews'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text('Start Learning'),
            ),
          ],
        ),
      ),
    );
  }
}

class LecturesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Lectures content goes here'),
    );
  }
}

class SimilarCoursesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Similar courses content goes here'),
    );
  }
}
