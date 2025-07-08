import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset('assets/dashboard_banner.png'), // Replace with NetworkImage or local asset
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Welcome back,\nJohn Doe 👋',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("View Profile"),
              subtitle: Text("See and edit your personal information."),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text("View Courses"),
              subtitle: Text("Continue learning or explore new topics."),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, '/courses');
              },
            ),
          ],
        ),
      ),
    );
  }
}
