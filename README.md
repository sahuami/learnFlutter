# my_app

A new Flutter project.

## Getting Started

1. What is Flutter?

Flutter is a UI toolkit by Google for building natively compiled apps for mobile, web, and desktop from a single codebase.

Uses Dart language.

Fast development with hot reload.

Beautiful customizable widgets.

2. Install Flutter

Go to Flutter official site

Download Flutter SDK for your OS (Windows, macOS, Linux).

Set environment variables:

Windows: Add flutter\bin to Path.

Check installation:

flutter doctor


It will show if anything is missing (like Android SDK, VS Code extension, etc.)

3. Create Your First Flutter App

Open terminal or PowerShell:

flutter create my_first_app
cd my_first_app
flutter run


This will launch a default counter app on your connected device or emulator. 

4. Flutter Basics
A. Main Structure 

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // Entry point
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(child: Text('Hello Flutter!')),
    );
  }
}

MaterialApp → main app widget

Scaffold → provides AppBar, Body, Drawer, BottomNavigation

Center → centers its child

Text → displays simple text 

B. Hot Reload/Hot Restart

Press r in terminal or Hot Reload button in VS Code/Android Studio
Press R in terminal or Hot Restart button in VS Code/Android Studio

Updates UI without losing state 


C. Widgets

Flutter uses widgets for everything:

StatelessWidget → static UI

StatefulWidget → dynamic UI with state

📖 Flutter Scaffold Example

This project demonstrates the usage of the Scaffold widget in Flutter.
The Scaffold widget provides a basic Material Design visual layout structure, including AppBar, Drawer, BottomNavigationBar, FloatingActionButton, etc. 

🚀 Features Covered

✔ AppBar → Title & action buttons
✔ Body → Main content area
✔ Drawer → Left-side navigation drawer
✔ FloatingActionButton (FAB) → Primary action button
✔ FloatingActionButtonLocation → Positioning FAB at the center dock
✔ BottomAppBar → Custom bottom navigation with icons
✔ PersistentFooterButtons → Fixed footer buttons
✔ Background Color → Custom scaffold background
✔ ResizeToAvoidBottomInset → Auto-resize when keyboard appears 

📝 Code Example 

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScaffoldExample(),
    );
  }
}

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold Example"),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),

      // Body
      body: Center(
        child: Text(
          "Hello, this is the body!",
          style: TextStyle(fontSize: 20),
        ),
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FAB Clicked");
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // Drawer
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Menu"),
              decoration: BoxDecoration(color: Colors.teal),
            ),
            ListTile(title: Text("Home"), onTap: () {}),
            ListTile(title: Text("Profile"), onTap: () {}),
          ],
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: Icon(Icons.home), onPressed: () {}),
            IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          ],
        ),
      ),

      // Background Color
      backgroundColor: Colors.grey[200],

      // Footer Buttons
      persistentFooterButtons: [
        TextButton(onPressed: () {}, child: Text("Cancel")),
        TextButton(onPressed: () {}, child: Text("Save")),
      ],
    );
  }
}

📸 Output (Structure)

+---------------------------------------------------+
| AppBar (Title, Actions)                           |
+---------------------------------------------------+
| Drawer (Side Menu)   |        Body Content        |
|                      |  "Hello, this is the body" |
|                      |                            |
+---------------------------------------------------+
| Persistent Footer Buttons (Cancel | Save)         |
+------------------+   FAB   +----------------------+
|  BottomAppBar    | (Add +) |   BottomAppBar       |
+---------------------------------------------------+



🔹 Named Routes in Flutter
1️⃣ What is Named Routing?

. Instead of directly pushing Widgets using MaterialPageRoute, you define a route name (string) for each screen in MaterialApp.routes.
.   Navigate using Navigator.pushNamed(context, '/routeName')

Advantages: Cleaner code, easy for large apps, easy to maintain.

2️⃣ Basic Structure
void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      // Initial route
      initialRoute: '/',
      
      // Named routes
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to Second Screen using route name
                Navigator.pushNamed(context, '/second');
              },
              child: Text("Go to Second Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Third Screen using route name
                Navigator.pushNamed(context, '/third');
              },
              child: Text("Go to Third Screen"),
            ),
          ],
        ),
      ),
    );
  }
}  


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Go back to previous screen
            Navigator.pop(context);
          },
          child: Text("Go Back"),
        ),
      ),
    );
  }
}
