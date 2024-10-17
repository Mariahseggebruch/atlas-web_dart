import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    var url = Uri.parse('https://rickandmortyapi.com/api/character');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List<dynamic> characters = data['results'];
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      print('Failed to load characters');
    }
  } catch (error) {
    print('error caught: $error');
  }
}
