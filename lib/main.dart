import 'package:flutter/material.dart';
import 'package:profolioapp/screens/about_screen.dart';
import 'package:profolioapp/screens/contactPage.dart';
import 'package:profolioapp/screens/homePage.dart';
import 'package:profolioapp/screens/projects_screen.dart';
import 'package:profolioapp/screens/splashPage.dart';

import 'screens/skills_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(),
  ));
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  void changeTab(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        HomePage(onTabChange: changeTab,),
        ProjectsPage(),
        SkillsPage(),
        AboutPage(),
        ContactPage(),
      ][index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,selectedItemColor: Colors.purple,unselectedItemColor: Colors.grey,showUnselectedLabels: true,
        onTap: changeTab,
        items: [
          BottomNavigationBarItem(icon: Image.asset("assets/images/home.png", height: 24), label: "Home"),
          BottomNavigationBarItem(icon: Image.asset("assets/images/projects.png", height: 24), label: "Projects"),
          BottomNavigationBarItem(icon: Image.asset("assets/images/skills.png", height: 24), label: "Skills"),
          BottomNavigationBarItem(icon: Image.asset("assets/images/about.png", height: 24), label: "About"),
          BottomNavigationBarItem(icon: Image.asset("assets/images/contact.png", height: 24), label: "Contact"),
        ],
      ),
    );
  }
}