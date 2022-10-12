// import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class DeliveryLocation extends ConsumerStatefulWidget {
  const DeliveryLocation({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DeliveryLocationState();
}

class _DeliveryLocationState extends ConsumerState<DeliveryLocation> {
  // TextEditingController emailController = TextEditingController();
  final titleTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            color: Colors.black12,
            child: CustomScrollView(
              slivers: [
                CustomAppBar(),
                CustomAppBar2(),
                AddressDetails(),
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
        color: Color.fromRGBO(231, 229, 255, 1),
        child: SizedBox(
          height: 60,
          child: Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Text(
                    "Delivery location",
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

class CustomAppBar2 extends StatelessWidget {
  const CustomAppBar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        // height: 30,
        child: Container(
          color: Color.fromRGBO(231, 229, 255, 1),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.pin_drop_outlined,
                            color: Color.fromRGBO(106, 91, 255, 1),
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0,
                                    right: 8.0,
                                    top: 8.0,
                                    bottom: 1.0),
                                child: Text(
                                  "Park View layout",
                                  // textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Sahakar Nagar, Banglore North, Banglore,\nKarnataka, 560092,India",
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
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

class AddressDetails extends ConsumerStatefulWidget {
  const AddressDetails({Key? key}) : super(key: key);
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddressDetailsState();
}

class _AddressDetailsState extends ConsumerState<AddressDetails> {
  final titleTextEditingController = TextEditingController();

  @override
  Widget build(
    BuildContext context,
  ) {
    return SliverToBoxAdapter(
      child: Container(
        height: MediaQuery.of(context).size.height,
        // width: 100,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 16.0, right: 16.0, top: 16.0, left: 8.0),
                child: Text(
                  "Add additional details",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomInputFieldFb2(
                    inputController: titleTextEditingController,
                    hintText: "Door No. / Flat / Block No.*"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomInputFieldFb2(
                    inputController: titleTextEditingController,
                    hintText: "Road / Area / Apartment"),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 16.0, right: 16.0, top: 16.0, left: 8.0),
                child: Text(
                  "Save address",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                  // style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            width: 2.0,
                            color: Color.fromRGBO(106, 91, 255, 1),
                          ),
                          // surfaceTintColor: Colors.red,
                          shape: StadiumBorder(),
                          textStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                        child: Row(
                          // crossAxisAlignment: ,
                          children: [
                            Icon(
                              Icons.add,
                              size: 13,
                              // color: Colors.blue,
                              color: Color.fromRGBO(106, 91, 255, 1),
                            ),
                            Text(
                              "Home",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(106, 91, 255, 1),
                                fontSize: 13,
                              ),
                            )
                          ],
                        )),
                    OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            width: 2.0,
                            color: Color.fromRGBO(106, 91, 255, 1),
                          ),
                          // surfaceTintColor: Colors.red,
                          shape: StadiumBorder(),
                          textStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                        child: Row(
                          // crossAxisAlignment: ,
                          children: [
                            Icon(
                              Icons.add,
                              size: 13,
                              // color: Colors.blue,
                              color: Color.fromRGBO(106, 91, 255, 1),
                            ),
                            Text(
                              "Work",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(106, 91, 255, 1),
                                fontSize: 13,
                              ),
                            )
                          ],
                        )),
                    OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            width: 2.0,
                            color: Color.fromRGBO(106, 91, 255, 1),
                          ),
                          // surfaceTintColor: Colors.red,
                          shape: StadiumBorder(),
                          textStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                        child: Row(
                          // crossAxisAlignment: ,
                          children: [
                            Icon(
                              Icons.add,
                              size: 13,
                              // color: Colors.blue,
                              color: Color.fromRGBO(106, 91, 255, 1),
                            ),
                            Text(
                              "Other",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(106, 91, 255, 1),
                                fontSize: 13,
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 180,
              // ),

              Align(
                heightFactor: 5,
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  onPressed: () {},
                  color: Color.fromRGBO(234, 118, 33, 1),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: const Center(
                        child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
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

class CustomInputFieldFb2 extends StatelessWidget {
  final TextEditingController inputController;
  final String hintText;
  final Color primaryColor;

  const CustomInputFieldFb2(
      {Key? key,
      required this.inputController,
      required this.hintText,
      this.primaryColor = Colors.black26})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.1)),
      ]),
      child: TextField(
        controller: inputController,
        onChanged: (value) {
          //Do something wi
        },
        keyboardType: TextInputType.text,
        style: const TextStyle(fontSize: 14, color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
              color: Colors.black.withOpacity(.75),
              fontWeight: FontWeight.w400),
          fillColor: Colors.transparent,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: primaryColor, width: 2.0),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primaryColor, width: 2.0),
          ),
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primaryColor, width: 2.0),
          ),
        ),
      ),
    );
  }
}
