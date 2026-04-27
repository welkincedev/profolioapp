import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
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
        title: Text(
          "Skills & Expertise",
          style: TextStyle(color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            sectionTitle("Mobile Framework"),
            skillBar("Flutter", 0.9),

            sectionTitle("Programming Language"),
            skillBar("Dart", 0.9),

            sectionTitle("Backend"),
            skillBar("Firebase", 0.85),

            sectionTitle("Integration"),
            skillBar("REST API", 0.85),

            sectionTitle("Version Control"),
            skillBar("Git & GitHub", 0.9),

            sectionTitle("Design"),
            skillBar("UI/UX Design", 0.8),
            skillBar("Responsive Design", 0.85),

            sectionTitle("Soft Skills"),
            skillBar("Problem Solving", 0.88),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget skillBar(String name, double value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(name), Text("${(value * 100).toInt()}%")],
        ),

        SizedBox(height: 5),

        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: value,
            minHeight: 6,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation(Colors.purple),
          ),
        ),

        SizedBox(height: 10),
      ],
    );
  }
}
