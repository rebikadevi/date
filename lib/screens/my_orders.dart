import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   actions: [],
      //   elevation: 0,
      //   leading: new IconButton(
      //     icon: new Icon(Icons.arrow_back_ios_new, color: Colors.black),
      //     onPressed: () => Navigator.of(context).pop(),
      //   ),
      // ),
      body: SafeArea(
        child: Stack(children: [
          Container(
            color: Colors.black12,
            child: const CustomScrollView(
              slivers: [
                CustomAppBar(),
                CustomAppBar2(),
                AppointmentStatus(),
                AppointmentPending()
              ],
            ),
          )
        ]),
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
        color: Colors.white,
        child: SizedBox(
          // height: 50,
          child: Stack(
            children: [
              new IconButton(
                icon: new Icon(Icons.arrow_back_ios_new, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar2 extends StatelessWidget {
  const CustomAppBar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        // height: 30,
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              children: [
                Stack(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "My Orders and Appointments",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppointmentStatus extends StatelessWidget {
  const AppointmentStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Color.fromRGBO(231, 229, 255, 1),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              // padding: EdgeInsets.symmetric(vertical: 9),
                              padding: EdgeInsets.symmetric(vertical: 9),

                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Chamundeshwari Kir...",
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Text(
                            "18/7/2022",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 8,
                      right: 8,
                    ),
                    child: SizedBox(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 20,
                            right: 30,
                            bottom: 58,
                            child: Container(
                              height: 4,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            top: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.orange, width: 3),
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                          child: Icon(
                                        Icons.more_horiz,
                                        size: 12,
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0),
                                      child: Text(
                                        "Pending",
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2, color: Colors.black26),
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      // child: Center(
                                      //     child:
                                      //     Icon(
                                      //   Icons.check,
                                      //   size: 12,
                                      // )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0),
                                      child: Text(
                                        "Accepted",
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2, color: Colors.black26),
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      // child: Center(
                                      //     child: Icon(
                                      //   Icons.check,
                                      //   size: 12,
                                      // )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0),
                                      child: Text(
                                        "Completed",
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Order no. 17",
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                // SizedBox()
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, left: 8.0),
                                  child: Text(
                                    "4 Items",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, right: 8.0),
                                  child: Text(
                                    "₹500",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AppointmentPending extends StatelessWidget {
  const AppointmentPending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Color.fromRGBO(231, 229, 255, 1),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 9),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Rock Hairdressers",
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Text(
                            "30/6/2022",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 8,
                      right: 8,
                    ),
                    child: SizedBox(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.orange, width: 3),
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                          child: Icon(
                                        Icons.more_horiz,
                                        size: 12,
                                      )),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Appointment Pending ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: DottedBorder(
                                  dashPattern: [8, 4, 8, 4],
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(5),
                                  padding: EdgeInsets.all(6),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(0)),
                                    child: Container(
                                        // decoration: BoxDecoration(
                                        //   borderRadius:
                                        //       BorderRadius.circular(4),
                                        //   // color: Color.fromRGBO(192, 191, 248, 1),
                                        // ),
                                        child: Column(
                                      children: [
                                        Text("07/07/2022"),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text("6:30 PM")
                                      ],
                                    )),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Appointment no. 09",
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                // SizedBox()
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, left: 8.0),
                                  child: Text(
                                    "2 Items",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, right: 8.0),
                                  child: Text(
                                    "₹540",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
