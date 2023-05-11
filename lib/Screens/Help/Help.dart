import 'package:flutter/material.dart';
import 'package:prosper_user/Screens/Help/help_seeker.dart';

class card4 extends StatelessWidget {
  const card4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1, 1),
                  blurRadius: 1,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "Help",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => help_seeker()),
              );
            },
            child: SizedBox(
              width: 200,
              height: 40,
              child: Center(child: const Text("Help Seeker", style: TextStyle(fontSize: 20))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            child: SizedBox(
              width: 200,
              height: 40,
              child: Center(child: const Text("Help Provider", style: TextStyle(fontSize: 20),)),
            ),
          ),
        ],
      ),
    );
  }
}
