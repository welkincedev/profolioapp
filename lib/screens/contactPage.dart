import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Contact", style: TextStyle(color: Colors.white)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 10),

            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjoA3eJ-woRQVyXDn8Bs2k4aut7pjixPW9jA&s",
              ),
            ),

            SizedBox(height: 15),

            Text(
              "Welkince Clair",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            Text("Flutter Developer", style: TextStyle(color: Colors.grey)),

            SizedBox(height: 25),

            contactCard(Icons.email, "Email", "welkince.dev@gmail.com"),

            contactCard(Icons.code, "GitHub", "github.com/welkthedev"),

            contactCard(Icons.phone, "Phone", "+91 987654321"),
          ],
        ),
      ),
    );
  }

  Widget contactCard(IconData icon, String title, String value) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: Colors.blue),
          ),

          SizedBox(width: 15),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(value, style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
