```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Check if the response body is not empty before decoding
      if(response.body.isNotEmpty){
        final data = jsonDecode(response.body);
        // ... process data ...
      } else {
        print('Empty response body');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode} - ${response.body}');
    }
  } on FormatException catch (e) {
    print('Invalid JSON format: $e');
  } catch (e) {
    print('Error: $e');
  }
}
```