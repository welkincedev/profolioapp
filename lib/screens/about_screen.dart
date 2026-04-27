import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
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
        title: Text("About Me", style: TextStyle(color: Colors.white)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
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

                  SizedBox(height: 10),

                  Text(
                    "Welkince Clair",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
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

            sectionCard(
              "About Me",
              "Motivated Flutter developer with a strong foundation in building cross-platform mobile applications. Passionate about creating clean UI and scalable solutions using modern technologies.",
            ),

            sectionCard(
              "What I Do",
              "• Build mobile apps using Flutter\n"
                  "• Integrate APIs and Firebase\n"
                  "• Design responsive UI\n"
                  "• Optimize performance",
            ),

            sectionCard(
              "Education",
              "Bachelor's Degree\nRelevant coursework in programming and software development.",
            ),

            sectionCard(
              "Career Goal",
              "Seeking opportunities as a Flutter developer to build impactful applications and grow in the software industry.",
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget sectionCard(String title, String content) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),

          SizedBox(height: 8),

          Text(content, style: TextStyle(color: Colors.grey[700])),
        ],
      ),
    );
  }
}
