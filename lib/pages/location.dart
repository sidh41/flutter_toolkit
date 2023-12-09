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

// ipinfo.io example
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'dart:async';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter_bootstrap/flutter_bootstrap.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter_svg/flutter_svg.dart';

// class LocationPage extends StatefulWidget {
//   const LocationPage({Key? key}) : super(key: key);

//   @override
//   _LocationPageState createState() => _LocationPageState();
// }

// class _LocationPageState extends State<LocationPage> {
//   late StreamSubscription<ConnectivityResult> _connectivitySubscription;
//   String countryCode = '';
//   String country = '';
//   String region = '';
//   String postal = '';
//   String timezone = '';
//   String capital = '';
//   String currency = '';
//   String flag = '';

//   @override
//   void initState() {
//     super.initState();
//     fetchLocation();
//     _connectivitySubscription = Connectivity()
//         .onConnectivityChanged
//         .listen((ConnectivityResult result) {
//       // Got a new connectivity status, so fetch location again!
//       fetchLocation();
//     });
//   }

//   @override
//   void dispose() {
//     _connectivitySubscription.cancel();
//     super.dispose();
//   }

//   Future<void> fetchLocation() async {
//     final response = await http.get(Uri.parse('https://ipinfo.io/json'));
//     if (response.statusCode == 200) {
//       Map<String, dynamic> data = jsonDecode(response.body);
//       String countryID = data['country'] ?? '';
//       region = data['region'] ?? '';
//       postal = data['postal'] ?? '';
//       timezone = data['timezone'] ?? '';
//       final countryResponse =
//           await http.get(Uri.parse('assets/json/country.json'));
//       if (countryResponse.statusCode == 200) {
//         List<dynamic> countries = jsonDecode(countryResponse.body);
//         Map<String, dynamic> countryData = countries.firstWhere(
//             (countryData) => countryData['code'] == countryID,
//             orElse: () => {
//                   'name': '',
//                   'code': '',
//                   'dial_code': '',
//                   'flag': '',
//                   'capital': '',
//                   'currency': ''
//                 });
//         setState(() {
//           countryCode = countryData['dial_code'];
//           country = countryData['name'];
//           capital = countryData['capital'];
//           currency = countryData['currency'];
//           flag = countryData['flag'];
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Location'),
//       ),
//       body: LocationPageLayout(
//         countryCode: countryCode,
//         country: country,
//         region: region,
//         postal: postal,
//         timezone: timezone,
//         capital: capital,
//         currency: currency,
//         flag: flag,
//       ),
//     );
//   }
// }

// class LocationPageLayout extends StatelessWidget {
//   final String countryCode;
//   final String country;
//   final String region;
//   final String postal;
//   final String timezone;
//   final String capital;
//   final String currency;
//   final String flag;

//   const LocationPageLayout({
//     Key? key,
//     required this.countryCode,
//     required this.country,
//     required this.region,
//     required this.postal,
//     required this.timezone,
//     required this.capital,
//     required this.currency,
//     required this.flag,
//   }) : super(key: key);

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
//                     Text('Country: $country'),
//                     Text('Code: $countryCode'),
//                     Text('State/Region: $region'),
//                     Text('Postal: $postal'),
//                     Text('Timezone: $timezone'),
//                     Text('Capital: $capital'),
//                     Text('Currency: $currency'),
//                     SvgPicture.network(flag),
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

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  double? latitude;
  double? longitude;
  String? country;

  void _getCurrentLocation() async {
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      latitude = position.latitude;
      longitude = position.longitude;
    });
    print(
        "Latitude: $latitude, Longitude: $longitude"); // This will print the latitude and longitude in the console

    final placemarks = await placemarkFromCoordinates(latitude!, longitude!);
    setState(() {
      country = placemarks.first.country;
    });
    print(
        "Country: $country"); // This will print the country name in the console
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Country: ${country ?? ''}'),
          TextButton(
            child: Text("Get location"),
            onPressed: _getCurrentLocation,
          ),
        ],
      ),
    );
  }
}
