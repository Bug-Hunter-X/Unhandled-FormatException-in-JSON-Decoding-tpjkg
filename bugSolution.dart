```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        // Process the data
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        // Handle the invalid JSON error, e.g., show an error message to the user.
      } catch (e) {
        print('Error decoding JSON: $e');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle network errors or other exceptions
    print('Error: $e');
  }
}
```