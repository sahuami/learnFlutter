// import 'package:flutter/material.dart';

// void main() {
//   runApp(HomePage());
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ScaffoldExample(),
//     );
//   }
// }

// class ScaffoldExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // 🔹 AppBar (Top Bar)
//       appBar: AppBar(
//         title: Text("Scaffold Demo"),
//         backgroundColor: Colors.teal,
//       ),

//       // 🔹 Main Content Area
//       body: Center(
//         child: Text(
//           "Hello! This is the body of Scaffold.",
//           style: TextStyle(fontSize: 18),
//         ),
//       ),

//       // 🔹 Background Color
//       backgroundColor: Colors.grey[200],

//       // 🔹 Floating Action Button
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.teal,
//         elevation: 8.0,
//         onPressed: () {
//           ScaffoldMessenger.of(
//             context,
//           ).showSnackBar(SnackBar(content: Text("FAB Clicked")));
//         },
//         child: const Icon(Icons.add, color: Colors.white),
//       ),

//       // 🔹 FAB Location
//       floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,

//       // 🔹 Left Drawer
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(color: Colors.teal),
//               child: Text(
//                 "Navigation Menu",
//                 style: TextStyle(color: Colors.white, fontSize: 20),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.home),
//               title: Text("Home"),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.person),
//               title: Text("Profile"),
//               onTap: () {},
//             ),
//           ],
//         ),
//       ),

//       // 🔹 Right Drawer
//       endDrawer: Drawer(child: Center(child: Text("Right Side Drawer"))),

//       // 🔹 Bottom Navigation Bar
//       // bottomNavigationBar: BottomAppBar(
//       //   shape: CircularNotchedRectangle(),
//       //   notchMargin: 2.0,
//       //   color: Colors.teal,

//       //   child: Row(
//       //     mainAxisAlignment: MainAxisAlignment.spaceAround,
//       //     children: [
//       //       IconButton(
//       //         icon: Icon(Icons.home, color: Colors.white),
//       //         onPressed: () {},
//       //       ),
//       //       IconButton(
//       //         icon: Icon(Icons.settings, color: Colors.white),
//       //         onPressed: () {},
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 0,
//         fixedColor: Colors.green,
//         items: const [
//           BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
//           BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
//           BottomNavigationBarItem(
//             label: "Profile",
//             icon: Icon(Icons.account_circle),
//           ),
//         ],
//         onTap: (int indexOfItem) {},
//       ),

//       // 🔹 Bottom Sheet
//       bottomSheet: Container(
//         color: Colors.teal[100],
//         height: 50,
//         child: Center(
//           child: Text(
//             "This is a Bottom Sheet",
//             style: TextStyle(color: Colors.black),
//           ),
//         ),
//       ),

//       // 🔹 Persistent Footer Buttons
//       persistentFooterButtons: [
//         TextButton(onPressed: () {}, child: Text("CANCEL")),
//         ElevatedButton(onPressed: () {}, child: Text("SAVE")),
//       ],

//       // 🔹 Resize when Keyboard appears
//       resizeToAvoidBottomInset: true,
//     );
//   }
// }





// import 'package:flutter/material.dart';

// void main() => runApp(HomePage());

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(debugShowCheckedModeBanner: false, home: FirstScreen());
//   }
// }

// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("First Screen")),
//       body: Center(
//         child: ElevatedButton(
//           child: Text("Go to Second Screen"),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => SecondScreen()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Second Screen")),
//       body: Center(
//         child: ElevatedButton(
//           child: Text("Go Back"),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// } 




import 'package:flutter/material.dart';

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
        '/': (context) => HomeScreen(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
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



class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Third Screen")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Go back to Home
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
          child: Text("Back to Home"),
        ),
      ),
    );
  }
}


