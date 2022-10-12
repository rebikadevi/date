import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  // DateTime selectedDate = DateTime.now();

  // final firstDate = DateTime(2010, 1);
  // final lastDate = DateTime(2022, 12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   leading: IconButton(
      //     onPressed: () => Navigator.of(context).pop(),
      //     icon: const Icon(
      //       Icons.arrow_back_ios,
      //       color: Colors.black,
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Stack(children: [
          Container(
            color: Colors.black12,
            child: const CustomScrollView(
              slivers: [
                CustomAppBar2(),
                DateATime(),
                // CustomAppBar2(),
                // AppointmentStatus(),
                // AppointmentPending()
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class CustomAppBar2 extends StatelessWidget {
  const CustomAppBar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.white,
        child: SizedBox(
          // height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon:
                            Icon(Icons.arrow_back_ios_new, color: Colors.black),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      // SizedBox(
                      //   width: 80,
                      // ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Pick Date And Time",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Color.fromRGBO(255, 235, 220, 1),
        child: SizedBox(
          height: 60,
          child: Stack(
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  // const SizedBox(
                  //   width: 140,
                  // ),
                  Text(
                    "Pick Dat And Time",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DateATime extends StatefulWidget {
  const DateATime({Key? key}) : super(key: key);

  @override
  State<DateATime> createState() => _DateATimeState();
}

class _DateATimeState extends State<DateATime> {
  DateTime selectedDate = DateTime.now();

  final firstDate = DateTime(2010, 1);
  final lastDate = DateTime(2022, 12);
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              // const Padding(
              //   padding: EdgeInsets.only(bottom: 30),
              //   child: Center(
              //     child: Text(
              //       "Pick Date And Time",
              //       style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //         fontSize: 20,
              //       ),
              //     ),
              //   ),
              // ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(255, 235, 220, 1),
                ),
                height: 300,
                width: 287,
                child: CalendarDatePicker(
                    initialDate: selectedDate,
                    firstDate: firstDate,
                    lastDate: lastDate,
                    onDateChanged: (newDate) {
                      setState(() {
                        selectedDate = newDate;
                      });
                    }),
              ),
              // Divider(),
              SizedBox(
                height: 20,
              ),

              // Start

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(255, 235, 220, 1),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Text(
                        "Set Time",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(255, 235, 220, 1),
                      ),
                      height: 120,
                      width: 287,
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.time,
                        initialDateTime: selectedDate,
                        minimumDate: firstDate,
                        maximumDate: lastDate,
                        onDateTimeChanged: (newDate) {
                          setState(() {
                            selectedDate = newDate;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),

              // End
              // Text(
              //   "Set Time",
              //   style: TextStyle(
              //     fontSize: 16,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // SizedBox(height: 15),
              // Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(15),
              //     color: Color.fromRGBO(255, 235, 220, 100),
              //   ),
              //   height: 120,
              //   width: 300,
              //   child: CupertinoDatePicker(
              //     mode: CupertinoDatePickerMode.time,
              //     initialDateTime: selectedDate,
              //     minimumDate: firstDate,
              //     maximumDate: lastDate,
              //     onDateTimeChanged: (newDate) {
              //       setState(() {
              //         selectedDate = newDate;
              //       });
              //     },
              //   ),
              // ),
              SizedBox(height: 20),
              SizedBox(
                // height: MediaQuery.of(context).size.height / 5.5,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    onPressed: () {},
                    color: Color.fromRGBO(234, 118, 33, 1),
                    child: SizedBox(
                      width: 320,
                      height: 50,
                      child: const Center(
                          child: Text(
                        "CONFIRM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
