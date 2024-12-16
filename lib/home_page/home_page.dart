// import 'package:flutter/material.dart';
// import 'package:rmp_video_call/call_page.dart';

// class Homepage extends StatelessWidget {
//   const Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController callID = TextEditingController();
//     TextEditingController userName = TextEditingController();
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               TextField(
//                 controller: userName,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   label: Text('Имя'),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               TextField(
//                 controller: callID,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   label: Text('Номер комнаты'),
//                 ),
//               ),
//               const SizedBox(height: 30),
//               ElevatedButton(
//                   onPressed: () async {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => CallPage(
//                           callID: callID.text,
//                           userName: userName.text,
//                         ),
//                       ),
//                     );
//                   },
//                   child: const Text('login')),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }