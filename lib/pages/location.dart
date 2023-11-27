// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter_bootstrap/flutter_bootstrap.dart';

// class LocationPage extends StatelessWidget {
//   const LocationPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Location'),
//       ),
//       body: LocationPageLayout(),
//     );
//   }
// }

// class LocationPageLayout extends StatelessWidget {
//   const LocationPageLayout({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scrollable(viewportBuilder: (context, viewportConstraints) {
//       bootstrapGridParameters(gutterSize: 16.0);
//       return SingleChildScrollView(
//         child: BootstrapContainer(
//           fluid: true,
//           padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
//           children: [
//             BootstrapRow(
//               children: [
//                 BootstrapCol(
//                     child: Column(
//                   children: [
//                     Text('Country Code: '),
//                   ],
//                 ))
//               ],
//             ),
//           ],
//         ),
//       );
//     });
//   }
// }

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:http/http.dart' as http;

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  String countryCode = '';
  String country = '';
  String region = '';
  String postal = '';
  String timezone = '';

  @override
  void initState() {
    super.initState();
    fetchLocation();
  }

  Future<void> fetchLocation() async {
    final response = await http.get(Uri.parse('https://ipinfo.io/json'));
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      String countryID = data['country'] ?? '';
      country = data['country'] ?? '';
      region = data['region'] ?? '';
      postal = data['postal'] ?? '';
      timezone = data['timezone'] ?? '';
      final dialCodeResponse = await http.get(Uri.parse(
          'https://gist.githubusercontent.com/anubhavshrimal/75f6183458db8c453306f93521e93d37/raw/f77e7598a8503f1f70528ae1cbf9f66755698a16/CountryCodes.json'));
      if (dialCodeResponse.statusCode == 200) {
        List<dynamic> dialCodes = jsonDecode(dialCodeResponse.body);
        String dialCode = dialCodes.firstWhere(
            (codeData) => codeData['code'] == countryID)['dial_code'];
        setState(() {
          countryCode = '$dialCode';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location'),
      ),
      body: LocationPageLayout(
        countryCode: countryCode,
        country: country,
        region: region,
        postal: postal,
        timezone: timezone,
      ),
    );
  }
}

class LocationPageLayout extends StatelessWidget {
  final String countryCode;
  final String country;
  final String region;
  final String postal;
  final String timezone;

  const LocationPageLayout({
    Key? key,
    required this.countryCode,
    required this.country,
    required this.region,
    required this.postal,
    required this.timezone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollable(viewportBuilder: (context, viewportConstraints) {
      bootstrapGridParameters(gutterSize: 16.0);
      return SingleChildScrollView(
        child: BootstrapContainer(
          fluid: true,
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
          children: [
            BootstrapRow(
              children: [
                BootstrapCol(
                    child: Column(
                  children: [
                    Text('Country: $country'),
                    Text('Code: $countryCode'),
                    Text('State/Region: $region'),
                    Text('Postal: $postal'),
                    Text('Timezone: $timezone'),
                  ],
                ))
              ],
            ),
          ],
        ),
      );
    });
  }
}
