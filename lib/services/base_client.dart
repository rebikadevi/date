// import 'package:http/http.dart' as http;


// const String baseUrl = 'https://5cwegzpo3j.execute-api.ap-south-1.amazonaws.com/stage/tredr/'
// class BaseClient{
//   var client = http.Client();
//   Future<dynamic> get(String api) async{
//     var url = Uri.parse(baseUrl + api); 
//     var _headers = {
//       'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoiNjJlYTA2YjMwY2JiMDQ3NmRmZDE5NjAzIiwiaWF0IjoxNjYxNDk4MTU1LCJleHAiOjE2NzA0OTgxNTUsImlzcyI6ImNyZWRlbmNlIn0.uKAr4eFjQooWN95FM1-De4FIpYPEVxqGt5rsV9VOGcs ',
//       'api_key': '',
//     };
     
//      var response = await client.get(url, headers: _headers);
//      if(response.statusCode==200){
//       return response.body;
//      }else{

//      }

//   }
// }