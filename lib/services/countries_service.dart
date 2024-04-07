import 'package:http/http.dart' as http;
import 'dart:convert';

class CountryService {
  static final String countriesUrl = 'https://restcountries.com/v3.1/all';

  Future<List<Map<String, dynamic>>> fetchCountries() async {
    final response = await http.get(Uri.parse(countriesUrl));

    if (response.statusCode == 200) {
      final countriesData = jsonDecode(response.body) as List;
      return countriesData.cast<Map<String, dynamic>>();
    } else {
      throw Exception('Failed to load countries');
    }
  }
}
