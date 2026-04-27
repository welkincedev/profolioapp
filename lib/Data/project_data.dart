import '../models/project_model.dart';
List<Project> projects = [
  Project(
    title: "E-Commerce App",
    category: "Shopping Platform",
    description: "Full-featured shopping app with cart and payment integration.",
    tech: ["Flutter", "Firebase", "Razorpay"],
    image: "assets/images/ecommerce.png",
    hasLive: true,
  ),
  Project(
    title: "Chat App",
    category: "Messaging",
    description: "Realtime chat app with notifications and Firebase backend.",
    tech: ["Flutter", "Firebase"],
    image: "assets/images/chat.png",
  ),
  Project(
    title: "Weather App",
    category: "Utility",
    description: "Live weather updates using API with clean UI.",
    tech: ["Flutter", "REST API"],
    image: "assets/images/weather.png",
  ),
];