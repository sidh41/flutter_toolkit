// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_toolkit/design_System/constants.dart';
import '../services/countries_service.dart';

class CountriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Countries"),
      ),
      body: SingleChildScrollView(
        child: CountriesPageLayout(),
      ),
    );
  }
}

class CountriesPageLayout extends StatelessWidget {
  const CountriesPageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: CountryService().fetchCountries(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return Scrollable(viewportBuilder: (context, viewportConstraints) {
            bootstrapGridParameters(gutterSize: 8.0);
            return SingleChildScrollView(
              child: BootstrapContainer(
                fluid: true,
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                children: [
                  BootstrapRow(
                    children:
                        snapshot.data!.map((Map<String, dynamic> country) {
                      return BootstrapCol(
                        sizes: 'col-12 col-sm-6 col-md-3 col-lg-3',
                        child: CountryList(
                          text: country['name']['common'],
                          flagUrl: country['flags']['svg'],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            );
          });
        }
      },
    );
  }
}

class CountryList extends StatelessWidget {
  final String text;
  final String flagUrl;
  final Color textColor;
  final Color bgColor;

  const CountryList({
    Key? key,
    required this.text,
    required this.flagUrl,
    this.bgColor = lightColor,
    this.textColor = darkColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Container(
        width: double.infinity,
        height: buttonHeight,
        decoration: BoxDecoration(
          color: bgColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 60,
                child: SvgPicture.network(
                  flagUrl,
                  semanticsLabel: 'Flag',
                  height: 30.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  color: textColor,
                  fontSize: mdFontSize,
                  fontWeight: normalFontWeight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: SvgPicture.network(
//                 'https://raw.githubusercontent.com/dnfield/flutter_svg/7d374d7107561cbd906d7c0ca26fef02cc01e7c8/example/assets/flutter_logo.svg',
//                 semanticsLabel: 'Flag',
//                 height: 30,
//                 width: 5,
//               ),
//             ),
