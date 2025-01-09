```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Incorrectly assuming the response body is a JSON string
      final data = jsonDecode(response.body);
      // ... process data ...
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle errors; This will catch any JSON decoding exceptions too.
    print('Error: $e');
  }
}
```