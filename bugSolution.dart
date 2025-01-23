```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Check if the key exists before accessing it
      if (jsonData.containsKey('missingKey')) {
        final String data = jsonData['missingKey'];
        // Process data
      } else {
        // Handle the case where the key is missing
        print('Key "missingKey" not found in JSON response');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```