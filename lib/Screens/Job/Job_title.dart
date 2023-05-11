import 'package:flutter/material.dart';

class job_title extends StatelessWidget {
  const job_title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // height: 40,
            // width: 400,
            // decoration: BoxDecoration(
            //   color: Colors.white,
            //   borderRadius: BorderRadius.circular(3),
            //   boxShadow: const [
            //     BoxShadow(
            //       color: Colors.grey,
            //       offset: Offset(1, 1),
            //       blurRadius: 1,
            //     ),
            //   ],
            // ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "JOB Title",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          // const SizedBox(height: 10),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Row(
          //     children: [
          //       Expanded(
          //         child: ElevatedButton(
          //           onPressed: () {},
          //           child: const Text('All Jobs'),
          //         ),
          //       ),
          //       SizedBox(width: 10),
          //       Expanded(
          //         child: ElevatedButton(
          //           onPressed: () {},
          //           child: const Text('View Jobs'),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // SizedBox(height: 20),
          // Stack(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(15.0),
          //       child: Container(
          //         height: 200,
          //         width: 600,
          //         padding: EdgeInsets.all(10),
          //         decoration: BoxDecoration(
          //           color: Colors.white,
          //           borderRadius: BorderRadius.circular(3),
          //           boxShadow: const [
          //             BoxShadow(
          //               color: Colors.grey,
          //               offset: Offset(1, 1),
          //               blurRadius: 1,
          //             ),
          //           ],
          //         ),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Text(
          //               "Job Title",
          //               style: TextStyle(
          //                 fontSize: 20,
          //                 fontWeight: FontWeight.bold,
          //               ),
          //             ),
          //             SizedBox(height: 5),
          //             Text(
          //               "Company Name",
          //               style: TextStyle(
          //                 fontSize: 16,
          //                 color: Colors.grey.shade700,
          //               ),
          //             ),
          //             SizedBox(height: 5),
          //             Text(
          //               "Job Type",
          //               style: TextStyle(
          //                 fontSize: 16,
          //                 color: Colors.grey.shade700,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //     Positioned(
          //       bottom: 5,
          //       right: 5,
          //       child: IconButton(
          //         onPressed: () {},
          //         icon: Padding(
          //           padding: const EdgeInsets.only(right: 6, bottom: 6),
          //           child: Icon(Icons.arrow_forward),
          //         ),
          //       ),
          //     ),
          //         ],
          //       ),
        ],
      ),
    );
  }
}
