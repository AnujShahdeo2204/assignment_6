import 'package:flutter/material.dart';

class CourseDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context)?.settings.arguments as Map? ?? {};
    final title = args['title'] ?? 'Course';
    final description = args['description'] ?? 'Course Description';

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Course Description", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(description),
            Spacer(),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Course Started!"))
                  );
                },
                icon: Icon(Icons.play_circle_fill),
                label: Text("Start Course"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
