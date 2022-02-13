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
  Map<String, String> _headers = {
    'Content-Type': '',
    'Accept': 'application/json',
    'Accept-Encoding': 'gzip',
    'Authorization':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhbGxvY2F0ZWQiOjEsImF1dGhvcml6ZWQiOnRydWUsImVtYWlsIjoiZXNwZW5pZWxAZ29vZ2xlLmNvbSIsImV4cCI6MTY0NDI4MTg1OCwic2VxX21lbWJlciI6MSwidXNlcl9sZXZlbCI6NX0.q6YY0xy87gmwvxZCk4JMxSbyzehlc2oHt9DRnvnSV0c'
  };
  var _apiUrl = '192.168.0.17:3001';

  // var _apiUrl = '192.168.1.167:3001';

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
                print(response.headers);
                if (response.statusCode == 200) {
                  var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
                  print(jsonResponse);
                  var itemCount = jsonResponse['totalItems'];
                  print('Number of books about http: $itemCount.');
                } else {
                  print('Request failed with status: ${response.statusCode}.');
                }
              },
              child: Text('HTTPS GET'),
            ),
            ElevatedButton(
              onPressed: () async {
                var o = await _httpGet('/study/chapters');
                print(o);
              },
              child: Text('HTTP GET'),
            ),
            ElevatedButton(
              onPressed: () async {
                Map<String, dynamic> _body = {'seq_chapter': 1, 'seq_sentence_log': 0};
                var o = await _httpPost('/study/sentence', _body);
                print(o);
              },
              child: Text('HTTP POST'),
            ),
          ],
        ),
      ),
    );
  }

  Future<Map<String, dynamic>> _httpGet(_uri) async {
    _headers['Content-Type'] = 'text/plain';
    Map<String, dynamic> _json;
    var url = Uri.http(_apiUrl, _uri);
    http.Response response = await http.get(url, headers: _headers);
    _json = convert.jsonDecode(response.body) as Map<String, dynamic>;
    switch (response.statusCode) {
      case 200:
      case 201:
        break;

      default:
        _json["error"] = 'Request failed with status: ${response.statusCode}.';
        break;
    }
    return _json;
  }

  Future<Map<String, dynamic>> _httpPost(_uri, Map<String, dynamic> _body) async {
    _headers['Content-Type'] = 'application/json';
    print(_headers);
    Map<String, dynamic> _json;
    var url = Uri.http(_apiUrl, _uri);
    http.Response response = await http.post(url, body: convert.jsonEncode(_body), headers: _headers);
    _json = convert.jsonDecode(response.body) as Map<String, dynamic>;
    switch (response.statusCode) {
      case 200:
      case 201:
        break;

      default:
        _json["error"] = 'Request failed with status: ${response.statusCode}.';
        break;
    }
    return _json;
  }
}
