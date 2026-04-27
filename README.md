# 📱 Flutter Portfolio App

A modern, clean, and responsive **personal portfolio application built with Flutter**. It showcases projects, skills, about information, and contact details with a smooth bottom navigation experience.

---

## ✨ Features

* 🏠 Home page with featured projects
* 📂 Projects listing page
* 🧠 Skills & expertise section
* 👤 About section
* 📞 Contact page
* 🔄 Bottom navigation for smooth screen switching
* 🎨 Clean UI with gradient AppBars and modern cards
* 📱 Responsive layout for mobile and web

---

## 🛠️ Tech Stack

* Flutter 💙
* Dart
* Material Design
* Stateful & Stateless Widgets

---

## 📁 Project Structure

```
lib/
│
├── main.dart
├── models/
│   └── project_model.dart
│
├── data/
│   └── project_data.dart
│
├── screens/
│   ├── homePage.dart
│   ├── projects_screen.dart
│   ├── skills_screen.dart
│   ├── about_screen.dart
│   ├── contactPage.dart
│   └── splashPage.dart
│
└── widgets/
    └── project_card.dart
```

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/your-username/portfolio-app.git
```

### 2. Move to project directory

```bash
cd portfolio-app
```

### 3. Install dependencies

```bash
flutter pub get
```

### 4. Run the app

```bash
flutter run
```

---

## 📦 Dependencies

Make sure Flutter SDK is installed.

```yaml
dependencies:
  flutter:
    sdk: flutter
```

---

## 🧠 App Architecture

* `MainPage` controls bottom navigation
* Each screen is a separate widget
* Project data is managed in a separate file (`project_data.dart`)
* Reusable widgets for clean UI structure

---

## 📸 Screenshots

Add your screenshots here:

```
assets/screenshots/home.png
assets/screenshots/projects.png
```

---

## 🔮 Future Improvements

* 🌙 Dark mode support
* ✨ Animations between screens
* 🔥 Firebase integration for dynamic projects
* 🛠️ Admin panel for project updates
* 🌐 Full responsive web version
