void main() {
  String API_URL = '';

  if (API_URL.isEmpty) {
    API_URL = 'https://example.com';
  }

  print(API_URL.toUpperCase());
}
