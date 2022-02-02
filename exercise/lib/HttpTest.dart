import 'dart:convert' as convert;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:core';

// void main(List<String> arguments) async {
//   // This example uses the Google Books API to search for books about http.
//   // https://developers.google.com/books/docs/overview
//   var url = Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});
//
//   // Await the http get response, then decode the json-formatted response.
//   var response = await http.get(url);
//   if (response.statusCode == 200) {
//     var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
//     var itemCount = jsonResponse['totalItems'];
//     print('Number of books about http: $itemCount.');
//   } else {
//     print('Request failed with status: ${response.statusCode}.');
//   }
// }

class RestTest extends StatefulWidget {
  const RestTest({Key? key}) : super(key: key);

  @override
  _RestTestState createState() => _RestTestState();
}

class _RestTestState extends State<RestTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HTTP REST Test')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: ListBody(
          children: [
            ElevatedButton(
              onPressed: () async {
                var url = Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});
                var response = await http.get(url);
                if (response.statusCode == 200) {
                  var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
                  print(jsonResponse);
                  var itemCount = jsonResponse['totalItems'];
                  print('Number of books about http: $itemCount.');
                } else {
                  print('Request failed with status: ${response.statusCode}.');
                }
              },
              child: Text('GET HTTPS'),
            ),
            ElevatedButton(
              onPressed: () async {
                Map<String, String> headers = {
                  'Content-Type': 'text/plain',
                  'Accept': 'application/json',
                  'Accept-Encoding': 'gzip, deflate, br',
                  'Connection': 'keep-alive',
                  'Authorization':
                      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhbGxvY2F0ZWQiOjEsImF1dGhvcml6ZWQiOnRydWUsImVtYWlsIjoiZXNwZW5pZWxAZ29vZ2xlLmNvbSIsImV4cCI6MTY0MzcxMzE4OCwic2VxX21lbWJlciI6MSwidXNlcl9sZXZlbCI6NX0.HhA9JwrLlvWDi9oE4vzSVt7tSmwVpyyUua9L971VW_k'
                };
                var url = Uri.http('192.168.0.17:3001', '/study/chapters', {'q': '{http}'});
                http.Response response = await http.get(url, headers: headers);
                print(response.headers);
                if (response.statusCode == 200) {
                  var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
                  print(jsonResponse);
                } else {
                  print('Request failed with status: ${response.statusCode}.');
                }
              },
              child: Text('GET HTTP'),
            ),
          ],
        ),
      ),
    );
  }
}
