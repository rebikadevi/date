import 'package:date_time/screens/delivery_location.dart';
import 'package:date_time/screens/my_orders.dart';
import 'package:date_time/screens/new.dart';
import 'package:date_time/screens/order_history.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("BINO"),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: SizedBox(
                  width: 300,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      backgroundColor: Colors.green,
                    ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyScreen()));
                    },
                    child: const Text('Slot Booking'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: SizedBox(
                  width: 300,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor:
                          Theme.of(context).colorScheme.onSecondaryContainer,
                      backgroundColor: Colors.blue,
                    ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyOrders()));
                    },
                    child: const Text('My Orders'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: SizedBox(
                  width: 300,
                  height: 80,
                  child: OutlinedButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const DeliveryLocation()))
                          },
                      child: const Text('Outlined')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: SizedBox(
                  width: 300,
                  height: 80,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        // onPrimary: Colors.amber,
                        elevation: 20, // Elevation
                        shadowColor: Colors.amber, // Shadow Color
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OrderHistory()));
                      },
                      child: const Text('Order History')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
