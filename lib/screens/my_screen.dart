// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class MyScreen extends StatefulWidget {
//   const MyScreen({super.key});

//   @override
//   State<MyScreen> createState() => _MyScreenState();
// }

// class _MyScreenState extends State<MyScreen> {

//   DateTime selectedDate =DateTime.now();

//   final firstDate = DateTime(2010,1);
//     final lastDate = DateTime(2022,12);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//           elevation: 0,
//           backgroundColor: Colors.white,
//           leading: IconButton(
//             onPressed: () => Navigator.of(context).pop(),
//             icon: const Icon(
//               Icons.arrow_back_ios,
//               color: Colors.black,
//             ),
//           ),
//       ),
      
//      body: Padding(
//        padding: const EdgeInsets.all(8),
//        child: Column(
//         children: [
//           const Padding(
//             padding: EdgeInsets.only(bottom: 30),
//             child: Center(
//               child: Text("Pick Date And Time",
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                               fontSize: 20,
//               ),
//               ),
//             ),
//           ),
          
//           Container(
//               decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),
//                color: Color.fromRGBO(255, 235, 220,100),
//               ),
//             height:300,
//             width: 300,
          
//             child: CalendarDatePicker(
//               initialDate: selectedDate, 
              
//               firstDate: firstDate, 
//               lastDate: lastDate, 
//               onDateChanged: (newDate){
//                 setState(() {
//                   selectedDate = newDate;
//                 });
//               }),
//           ),
//             Divider(),
//             Text("Set Time",
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),),
//             SizedBox(height: 15),
//             Container(
              
//               decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),
//                color: Color.fromRGBO(255, 235, 220,100),
//               ),
//               height: 120,
//               width: 300,
               
//               child: CupertinoDatePicker(
//                 mode:CupertinoDatePickerMode.time,
//                 initialDateTime: selectedDate,
//                 minimumDate: firstDate,
//                 maximumDate: lastDate,
//                 onDateTimeChanged: (newDate){
//                   setState(() {
//                     selectedDate = newDate;
//                   });
//                 },
//               ),
//                ),
            
//             SizedBox(height: 25),
//             MaterialButton(
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(24)),
//                   onPressed: () {
                    
//                   },
//                   color: Color.fromRGBO(234,118,33,1),
//                   child: SizedBox(
//                     width: 270,
//                     height: 50,
//                     child: const Center(child: Text("Continue",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),)),
//                   ),
//                 ),

          
//         ],
//        ),
//      ),
      
                   
//     );
//   }
// }