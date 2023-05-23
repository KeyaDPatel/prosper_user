// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Profile Page',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       body: Center(
//         child: Text(
//           'Home Page',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: 0,
//         onTap: (index) {
//           if (index == 1) {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => ProfilePage()),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
//
// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);
//
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//   User? _user;
//
//   @override
//   void initState() {
//     super.initState();
//     _checkCurrentUser();
//   }
//
//   void _checkCurrentUser() {
//     final user = FirebaseAuth.instance.currentUser;
//     setState(() {
//       _user = user;
//     });
//   }
//
//   void _googleLogin() async {
//     if (kDebugMode) {
//       print("googleLogin method Called");
//     }
//     GoogleSignIn googleSignIn = GoogleSignIn();
//     try {
//       var result = await googleSignIn.signIn();
//       if (result == null) {
//         return;
//       }
//
//       if (kDebugMode) {
//         print("Result $result");
//       }
//       if (kDebugMode) {
//         print(result.displayName);
//       }
//       if (kDebugMode) {
//         print(result.email);
//       }
//       if (kDebugMode) {
//         print(result.photoUrl);
//       }
//
//       _checkCurrentUser();
//     } catch (error) {
//       if (kDebugMode) {
//         print(error);
//       }
//     }
//   }
//
//   Future<void> _logout() async {
//     await GoogleSignIn().disconnect();
//     FirebaseAuth.instance.signOut();
//     _checkCurrentUser();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Login Screen'),
//         actions: [
//           if (_user != null)
//             TextButton(
//               onPressed: _logout,
//               child: const Text(
//                 'LogOut',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//         ],
//       ),
//       body: Center(
//         child: _user == null
//             ? ElevatedButton(
//           onPressed: _googleLogin,
//           child: const Text('Google Login'),
//         )
//             : Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (_user!.photoURL != null)
//               CircleAvatar(
//                 radius: 50,
//                 backgroundImage: NetworkImage(_user!.photoURL!),
//               ),
//             const SizedBox(height: 16),
//             Text(
//               _user!.displayName ?? '',
//               style: const TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               _user!.email ?? '',
//               style: const TextStyle(
//                 fontSize: 16,
//                 color: Colors.grey,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:firebase_auth/firebase_auth.dart'; // Assuming you're using Firebase Authentication
//
// ...

// ElevatedButton.icon(
// onPressed: () async {
// User? user = FirebaseAuth.instance.currentUser; // Check if user is logged in
//
// if (user != null) {
// // User is logged in, navigate to add company form page
// Navigator.push(
// context,
// MaterialPageRoute(builder: (context) => AddCompanyFormPage()),
// );
// } else {
// // User is not logged in, handle accordingly (e.g., show login screen)
// Navigator.push(
// context,
// MaterialPageRoute(builder: (context) => LoginScreen()),
// );
// }
// },
// // Button style and properties
// style: ElevatedButton.styleFrom(
// backgroundColor: Colors.blue.shade100,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(8),
// side: BorderSide(
// color: Colors.blue.shade900,
// width: 1.1,
// ),
// ),
// elevation: 8,
// padding: const EdgeInsets.symmetric(horizontal: 12),
// ),
// // Button icon
// icon: Icon(
// Icons.add,
// color: Colors.blue.shade900,
// size: 25,
// ),
// // Button label
// label: Text(
// 'Add My Company',
// style: TextStyle(
// fontSize: 12,
// color: Colors.blue.shade900,
// ),
// ),
// )
