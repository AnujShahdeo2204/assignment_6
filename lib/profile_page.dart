import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(height: 40),
            Image.asset('assets/dashboard_banner.png'), // Banner image
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://i.imgur.com/QCNbOAo.png"), // Replace with actual image
            ),
            SizedBox(height: 10),
            Text("John Doe", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("john@example.com"),
            Divider(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _infoTile("12", "Courses"),
                _infoTile("5", "Badges"),
                _infoTile("23", "Rank"),
              ],
            ),
            Spacer(),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              label: Text("Back"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown, // Replaces `primary`
              ),

            ),
          ],
        ),
      ),
    );
  }

  Widget _infoTile(String value, String label) {
    return Column(
      children: [
        Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(label),
      ],
    );
  }
}
