import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Courses")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _courseTile(context, "Flutter Basics", "Introduction to Flutter."),
            _courseTile(context, "Dart Language", "Learn Dart in depth."),
          ],
        ),
      ),
    );
  }

  Widget _courseTile(BuildContext context, String title, String subtitle) {
    return Card(
      margin: EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(Icons.menu_book),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.pushNamed(context, '/courseDetail', arguments: {
            'title': title,
            'description': subtitle,
          });
        },
      ),
    );
  }
}
