import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [

            // TOP HEADER
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 40),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                ),
              ),
              child: Column(
                children: [

                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      "https://via.placeholder.com/150",
                    ),
                  ),

                  SizedBox(height: 15),

                  Text(
                    "Aarav Kumar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 5),

                  Text(
                    "Flutter Developer | Mobile App Specialist",
                    style: TextStyle(color: Colors.white70),
                  ),

                  SizedBox(height: 10),

                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Fresher | Open to Opportunities",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // ABOUT ME
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "About Me",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Passionate Flutter developer with strong foundation in mobile app development. Experienced in building beautiful and performant applications using Flutter and Firebase.",
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // STATS
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  statBox("4", "Projects"),
                  statBox("8", "Skills"),
                  statBox("2", "Experiences"),
                ],
              ),
            ),

            SizedBox(height: 20),

            // PROJECTS
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Projects",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("View All"),
                ],
              ),
            ),

            SizedBox(height: 10),

            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [

                  projectCard("E-Commerce App"),
                  projectCard("Social Media Feed"),

                ],
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),

      // BOTTOM NAV
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: "Projects",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Skills",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "About",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: "Contact",
          ),
        ],
      ),
    );
  }

  Widget statBox(String number, String title) {
    return Container(
      width: 90,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            number,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(title),
        ],
      ),
    );
  }

  Widget projectCard(String title) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(left: 16),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.apps, size: 40),
          SizedBox(height: 10),
          Text(title),
        ],
      ),
    );
  }
}