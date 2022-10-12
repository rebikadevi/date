import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class OrderHistory extends StatelessWidget {
  const OrderHistory({Key? key}) : super(key: key);

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
                AppointmentStatus(
                    color: Colors.green,
                    insideBorderColor: Colors.green,
                    noItem: "10 Items",
                    amount: "₹4840",
                    date: "12/6/2022",
                    icon: Icons.check_circle,
                    orderStatus: "Order Completed",
                    orderNo: "Order no. 149",
                    storeName: "Chamundeshwari Kirana St..."),
                AppointmentStatus(
                    color: Colors.green,
                    insideBorderColor: Colors.green,
                    noItem: "2 Items",
                    amount: "₹4840",
                    date: "30/6/2022",
                    icon: Icons.check_circle,
                    orderStatus: "Appointment Completed",
                    orderNo: "Order no. 09",
                    storeName: "Rock Hairdressers"),
                AppointmentStatus(
                    noItem: " 10 Items",
                    insideBorderColor: Colors.red,
                    color: Colors.red,
                    amount: "₹4840",
                    date: "12/6/2022",
                    icon: Icons.stop_circle,
                    orderStatus: "Order Rejected",
                    orderNo: "Order no. 149",
                    storeName: "Chamundeshwari Kirana St..."),
                AppointmentStatus(
                    noItem: " 10 Items",
                    insideBorderColor: Colors.red,
                    color: Colors.red,
                    amount: "₹4840",
                    date: "12/6/2022",
                    icon: Icons.stop_circle,
                    orderStatus: "Order Not Completed",
                    orderNo: "Order no. 149",
                    storeName: "Chamundeshwari Kirana St..."),
                AppointmentStatus(
                    noItem: " 2 Items",
                    insideBorderColor: Colors.red,
                    color: Colors.red,
                    amount: "₹540",
                    date: "30/6/2022",
                    icon: Icons.stop_circle,
                    orderStatus: "Appointment Rejected",
                    orderNo: "Order no. 09",
                    storeName: "Rock Hairdressers"),
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
            padding: const EdgeInsets.only(bottom: 16.0, top: 8),
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
                          "Orders History",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
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
  final storeName;
  final date;
  final orderStatus;
  final orderNo;
  final icon;
  final noItem;
  final amount;
  final color;
  final insideBorderColor;
  const AppointmentStatus(
      {required this.noItem,
      required this.insideBorderColor,
      required this.color,
      required this.amount,
      required this.icon,
      required this.orderStatus,
      required this.orderNo,
      this.date,
      required this.storeName,
      Key? key})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
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
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 9),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                             // "Rock Hairdressers",
                             storeName,
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Text(
                            date,
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
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: color, width: 3),
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        icon,
                                        color: insideBorderColor,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    orderStatus,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                orderNo,
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
                                    noItem,
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
                                    amount,
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
