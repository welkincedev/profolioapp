import 'package:flutter/material.dart';
import '../data/project_data.dart';
import '../models/project_model.dart';

class HomePage extends StatelessWidget {
  final Function(int) onTabChange;

  HomePage({required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 60, bottom: 30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                ),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjoA3eJ-woRQVyXDn8Bs2k4aut7pjixPW9jA&s",
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Welkince Clair",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Flutter Developer",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Text(
                    "About Me",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "Flutter developer focused on building clean mobile apps.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  statCard("4", "Projects"),
                  statCard("8", "Skills"),
                  statCard("0", "Experience"),
                ],
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Projects",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      onTabChange(1);
                    },
                    child: Text(
                      "View All",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),

            SizedBox(
              height: 240,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  return projectCard(projects[index]);
                },
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget statCard(String number, String title) {
    return Container(
      width: 90,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.3),),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            number,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
          Text(title),
        ],
      ),
    );
  }

  Widget projectCard(Project project) {
    return Container(
      width: 180,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                project.image,
                height: 120,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),

                  SizedBox(height: 4),

                  Text(
                    project.category,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(height: 8),

                  Wrap(
                    spacing: 4,
                    runSpacing: 4,
                    children: project.tech.take(2).map((e) {
                      return Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          e,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.blue,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}