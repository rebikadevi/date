// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';



// class State1 extends StatefulWidget {
//   const State1({super.key});

//   @override
//   State<State1> createState() => _State1State();
// }

// class _State1State extends State<State1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Stack(children: [
//           Container(
//             color: Colors.black12,
//             child: CustomScrollView(
//               slivers: [
//                 CustomAppBar(),
//                 // DateAndTime(),
//                 DateATime()
//               ],
//             ),
//           )
//         ]),
//       ),
//     );
//   }
// }

// class CustomAppBar extends StatelessWidget {
//   const CustomAppBar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SliverToBoxAdapter(
//       child: Container(
//         color: Color.fromRGBO(231, 229, 255, 1),
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height,
//           child: Stack(
//             children: [
//               Column(
                
//                 children: [
//                   Row(
//                     children: [
//                       IconButton(
                        
//                         icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
//                         onPressed: () => Navigator.of(context).pop(),
//                       ),
//                     ],
//                   ),
                  
//                   Row(
//                     children: [SizedBox(width: 80,),
//                       Text(
//                         "Pick Date And Time",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 19,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




// class DateAndTime extends StatefulWidget {
//   const DateAndTime({super.key});

//   @override
//   State<DateAndTime> createState() => _DateAndTimeState();
// }

// class _DateAndTimeState extends State<DateAndTime> {

//   DateTime selectedDate =DateTime.now();

//   final firstDate = DateTime(2010,1);
//     final lastDate = DateTime(2022,12);

//   @override
//   Widget build(BuildContext context) {
//     return SliverToBoxAdapter(
//       child: Container(
//         height: MediaQuery.of(context).size.height,
//         width:  MediaQuery.of(context).size.width ,
//         color: Colors.white,
//         // appBar: AppBar(
//         //     elevation: 0,
//         //     backgroundColor: Colors.white,
//         //     leading: IconButton(
//         //       onPressed: () => Navigator.of(context).pop(),
//         //       icon: const Icon(
//         //         Icons.arrow_back_ios,
//         //         color: Colors.black,
//         //       ),
//         //     ),
//         // ),
        
//       //  child: 
//           // const Padding(
//           //   padding: EdgeInsets.only(bottom: 30),
//           //   child: Center(
//           //     child: Text("Pick Date And Time",
//           //     style: TextStyle(
//           //         fontWeight: FontWeight.bold,
//           //                     fontSize: 20,
//           //     ),
//           //     ),
//           //   ),
//           // )
          
//       // child:    Container(
//       //         decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),
//       //          color: Color.fromRGBO(255, 235, 220,100),
//       //         ),
//       //   //       height:MediaQuery.of(context).size.height,

//       //   // width: MediaQuery.of(context).size.width ,
          
//       //       child: SizedBox(
//       //        height:MediaQuery.of(context).size.height,

//       //   width: MediaQuery.of(context).size.width ,
//       //         child: CalendarDatePicker(
//       //           initialDate: selectedDate, 
                
//       //           firstDate: firstDate, 
//       //           lastDate: lastDate, 
//       //           onDateChanged: (newDate){
//       //             setState(() {
//       //               selectedDate = newDate;
//       //             });
//       //           }),
//       //       ),
//       //     ),
//       //       Divider(),
           
//       //       SizedBox(height: 15),
//       //       Container(
              
//       //         decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),
//       //          color: Color.fromRGBO(255, 235, 220,100),
//       //         ),
//       //         height: MediaQuery.of(context).size.height,
//       //         width: 300,
               
//       //         child: Row(
//       //           children: [ Text("Set Time",
//       //       style: TextStyle(
//       //         fontSize: 16,
//       //         fontWeight: FontWeight.bold,
//       //       ),),
//       //       SizedBox(height: 15),

//       //             Container(
//       //               width: 200,
//       //               height: 200,
//       //               child: CupertinoDatePicker(
//       //                 mode:CupertinoDatePickerMode.time,
//       //                 initialDateTime: selectedDate,
//       //                 minimumDate: firstDate,
//       //                 maximumDate: lastDate,
//       //                 onDateTimeChanged: (newDate){
//       //                   setState(() {
//       //                     selectedDate = newDate;
//       //                   });
//       //                 },
//       //               ),
//       //             ),
//       //           ],
//       //         ),
//       //          ),
            
//             // SizedBox(height: 25),
//             // MaterialButton(
//             //       shape: RoundedRectangleBorder(
//             //           borderRadius: BorderRadius.circular(24)),
//             //       onPressed: () {
                    
//             //       },
//             //       color: Color.fromRGBO(234,118,33,1),
//             //       child: SizedBox(
//             //         width: MediaQuery.of(context).size.width,
//             //         height: 50,
//             //         child: const Center(child: Text("Continue",
//             //         style: TextStyle(
//             //           color: Colors.white,
//             //           fontSize: 20,
//             //           fontWeight: FontWeight.bold,
//             //         ),)),
//             //       ),
//             //     ),


                     
//       ),
//     );
//   }
// }


// class DateATime extends StatefulWidget {
//   const DateATime({super.key});

//   @override
//   State<DateATime> createState() => _DateATimeState();
// }

// class _DateATimeState extends State<DateATime> {
//   @override
//   Widget build(BuildContext context) {
//     return SliverToBoxAdapter(
//       child: Container(
//         color: Colors.amber,
//         width: MediaQuery.of(context).size.width,
//         child: Column(
//        children:[ Text("Hi",style: TextStyle(color: Colors.black),),Text("hi",style: TextStyle(color: Colors.black))]
//       ),),
//     );
//   }
// }