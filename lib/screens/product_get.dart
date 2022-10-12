
import 'package:date_time/services/remote_servie.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductGet extends StatefulWidget {
  const ProductGet({super.key});

  @override
  State<ProductGet> createState() => _ProductGetState();
}

class _ProductGetState extends State<ProductGet> {
  List<Product>? products;
  var isLoaded = false;

  @override
  void initState() {

    super.initState();
    //fetch data fro api
    getData();

  }

  getData() async {
    products = await RemoteService().get();
    if (products != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Products")),
      ),
      body: Visibility(
        visible: isLoaded,
        child:  ListView.builder(
            itemCount: products?.length,
            // itemCount: 2,

            itemBuilder: (context, index) {
              return Container(
                 child:Text('hi'),
              );
            }
          ),
          replacement: Center(child: CircularProgressIndicator(),
          ),  
      )    
    );
  }
}