import 'dart:convert';

import '../models/product.dart';
import 'package:http/http.dart' as http;

class RemoteService
{
  Future<dynamic> get() async{
    // final data = json[0]['id'];
    var client = http.Client();
    var uri = Uri.parse('https://5cwegzpo3j.execute-api.ap-south-1.amazonaws.com/stage/tredr/v1/business/get-products/82');
    var response = await client.get(uri,headers:{ 'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoiNjJlYTA2YjMwY2JiMDQ3NmRmZDE5NjAzIiwiaWF0IjoxNjYxNDk4MTU1LCJleHAiOjE2NzA0OTgxNTUsImlzcyI6ImNyZWRlbmNlIn0.uKAr4eFjQooWN95FM1-De4FIpYPEVxqGt5rsV9VOGcs '});
    if(response.statusCode == 200){
      var json = response.body;
      
      return response.body;
      
      


    }

  }
}


// class RemoteService
// {
//   Future<dynamic> get() async{
//     // final data = json[0]['id'];
//     var client = http.Client();
//     var uri = Uri.parse('https://5cwegzpo3j.execute-api.ap-south-1.amazonaws.com/stage/tredr/v1/business/get-products/82');
//     var response = await client.get(uri,headers:{ 'Content-Type': 'application/json',
//       'Accept': 'application/json',
//       'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoiNjJlYTA2YjMwY2JiMDQ3NmRmZDE5NjAzIiwiaWF0IjoxNjYxNDk4MTU1LCJleHAiOjE2NzA0OTgxNTUsImlzcyI6ImNyZWRlbmNlIn0.uKAr4eFjQooWN95FM1-De4FIpYPEVxqGt5rsV9VOGcs '});
//     if(response.statusCode == 200){
//       var json = response.body;
      
//       return response.body;
      


//     }

//   }
// }