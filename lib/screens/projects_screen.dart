import 'package:flutter/material.dart';
import '../data/project_data.dart';
import '../models/project_model.dart';

class ProjectsPage extends StatelessWidget {
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
        title: Text("My Projects", style: TextStyle(color: Colors.white)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
          ),
        ),
      ),

      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return projectCard(projects[index]);
        },
      ),
    );
  }

  Widget projectCard(Project project) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              project.image,
              height: 160,
              width: double.infinity,
              fit: BoxFit.contain,
              errorBuilder: (_, __, ___) => Container(
                height: 160,
                color: Colors.grey[300],
                child: Icon(Icons.image),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(project.category, style: TextStyle(color: Colors.grey)),
                SizedBox(height: 8),
                Text(project.description),
                SizedBox(height: 10),
                Wrap(
                  spacing: 6,
                  children: project.tech
                      .map((tech) => Chip(label: Text(tech)))
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
