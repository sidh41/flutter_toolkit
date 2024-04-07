// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_toolkit/design_System/constants.dart';
// import '../Design_System/constants.dart';
import '../Design_System/buttons.dart';

class Style1Card extends StatelessWidget {
  const Style1Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
              child: Image.network(
                'https://cors-anywhere.herokuapp.com/https://via.placeholder.com/300x150',
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card Title',
                    style: h2Style,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Card Description goes here. You can add more text and customize as needed.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Style2Card extends StatelessWidget {
  const Style2Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Image.network(
                'https://cors-anywhere.herokuapp.com/https://via.placeholder.com/300x150',
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card Title',
                    style: h2Style,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Card Description goes here. You can add more text and customize as needed.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Style3Card extends StatelessWidget {
  const Style3Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://cors-anywhere.herokuapp.com/https://via.placeholder.com/300x150',
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card Title',
                    style: h2Style,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Card Description goes here. You can add more text and customize as needed.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Style4Card extends StatelessWidget {
  const Style4Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Image.network(
                'https://cors-anywhere.herokuapp.com/https://via.placeholder.com/300x150',
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card Title',
                    style: h2Style,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Card Description goes here. You can add more text and customize as needed.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Container(
                      height: buttonHeight,
                      child: PrimaryButton(
                        text: 'Submit',
                        onPressed: () {},
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Style5Card extends StatelessWidget {
  const Style5Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Image.network(
                'https://cors-anywhere.herokuapp.com/https://via.placeholder.com/300x150',
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card Title',
                    style: h2Style,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Card Description goes here. You can add more text and customize as needed.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: buttonHeight,
                        width: MediaQuery.of(context).size.width * 0.38,
                        child: SecondaryButton(
                          text: 'Secondary',
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: mdHorizontalSpacing),
                      Container(
                        height: buttonHeight,
                        width: MediaQuery.of(context).size.width * 0.38,
                        child: PrimaryButton(
                          text: 'Primary',
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Style6Card extends StatelessWidget {
  const Style6Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Stack(
                children: [
                  Image.network(
                    'https://cors-anywhere.herokuapp.com/https://via.placeholder.com/300x150',
                    width: double.infinity,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: Card(
                      elevation: 3.0,
                      color: whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      child: Container(
                        height: 35,
                        width: 65,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: warningColor,
                              size: 18.0,
                            ),
                            SizedBox(width: 4.0),
                            Text(
                              '4.5',
                              style: h5Style,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card Title',
                    style: h2Style,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Card Description goes here. You can add more text and customize as needed.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: buttonHeight,
                        width: MediaQuery.of(context).size.width * 0.38,
                        child: SecondaryButton(
                          text: 'Secondary',
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: mdHorizontalSpacing),
                      Container(
                        height: buttonHeight,
                        width: MediaQuery.of(context).size.width * 0.38,
                        child: PrimaryButton(
                          text: 'Primary',
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Style7Card extends StatelessWidget {
  const Style7Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://cors-anywhere.herokuapp.com/https://via.placeholder.com/80x90',
                      width: 80,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Card Title',
                          style: h2Style,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Card Description goes here. You can add more text and customize as needed.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Style8Card extends StatelessWidget {
  const Style8Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0)),
                    child: Image.network(
                      'https://cors-anywhere.herokuapp.com/https://via.placeholder.com/100x130',
                      width: 100,
                      height: MediaQuery.of(context).size.height * 0.20,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 0.0),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Card Title',
                            style: h2Style,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Card Description goes here. You can add more text and customize as needed.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Style9Card extends StatelessWidget {
  const Style9Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Appointment Request',
                          style: TextStyle(
                            color: lightPrimaryColor,
                            fontSize: xsFontSize,
                          ),
                        ),
                        SizedBox(height: xsVerticalSpacing),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.watch_later_rounded,
                              color: whiteColor,
                              size: 16,
                            ),
                            SizedBox(width: xsHorizontalSpacing),
                            Text(
                              '25 Nov 2023, 10am - 11am',
                              style: TextStyle(
                                color: whiteColor,
                                fontSize: xsFontSize,
                                fontWeight: normalFontWeight,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 0.0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(18.0),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://media.istockphoto.com/id/1329569957/photo/happy-young-female-doctor-looking-at-camera.jpg?s=612x612&w=0&k=20&c=7Wq_Y2cl0T4op6Wg_3DFc-xtZfCqTTDvfaXkPGyrHDM=',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                      httpHeaders: {'Access-Control-Allow-Origin': '*'},
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Dr. Kiran', style: h4Style),
                      subtitle: Text('Ophthalmologist',
                          style: TextStyle(
                              color: mediumColor,
                              fontSize: smFontSize,
                              fontWeight: normalFontWeight)),
                      trailing: Icon(
                        Icons.info_outline,
                        color: lightPrimaryColor,
                      ),
                      onTap: () {
                        // Handle onTap action here
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: buttonHeight,
                        width: MediaQuery.of(context).size.width * 0.38,
                        child: SecondaryButton(
                          text: 'Decline',
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: mdHorizontalSpacing),
                      Container(
                        height: buttonHeight,
                        width: MediaQuery.of(context).size.width * 0.38,
                        child: PrimaryButton(
                          text: 'Accept',
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Style10Card extends StatefulWidget {
  const Style10Card({Key? key}) : super(key: key);

  @override
  State<Style10Card> createState() => _Style10CardState();
}

class _Style10CardState extends State<Style10Card> {
  bool isChecked1 = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    bootstrapGridParameters(gutterSize: 8.0);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      child: BootstrapRow(children: [
        BootstrapCol(
          sizes: 'col-6',
          child: GestureDetector(
            onTap: () {
              setState(() {
                isChecked1 = !isChecked1; // Toggle the checkbox state
              });
            },
            child: Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(
                  color: isChecked1 ? primaryColor : Colors.transparent,
                  width: isChecked1 ? 2.0 : 0.0,
                ),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Image.network(
                          'https://cors-anywhere.herokuapp.com/https://via.placeholder.com/150x150',
                          width: double.infinity,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 8.0,
                          right: 8.0,
                          child: Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: isChecked1
                                  ? primaryColor
                                  : Colors.transparent,
                            ),
                            child: Checkbox(
                              value: isChecked1, // Update the checkbox value
                              onChanged: (value) {
                                setState(() {
                                  isChecked1 =
                                      value!; // Update the checkbox state
                                });
                              },
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity: VisualDensity.standard,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              checkColor: whiteColor,
                              activeColor: primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Category 1',
                          style: h2Style,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        BootstrapCol(
          sizes: 'col-6',
          child: GestureDetector(
            onTap: () {
              setState(() {
                isChecked2 = !isChecked2; // Toggle the checkbox state
              });
            },
            child: Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(
                  color: isChecked2 ? primaryColor : Colors.transparent,
                  width: isChecked2 ? 2.0 : 0.0,
                ),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Image.network(
                          'https://cors-anywhere.herokuapp.com/https://via.placeholder.com/150x150',
                          width: double.infinity,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 8.0,
                          right: 8.0,
                          child: Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: isChecked2
                                  ? primaryColor
                                  : Colors.transparent,
                            ),
                            child: Checkbox(
                              value: isChecked2, // Update the checkbox value
                              onChanged: (value) {
                                setState(() {
                                  isChecked2 =
                                      value!; // Update the checkbox state
                                });
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity: VisualDensity.standard,
                              checkColor: whiteColor,
                              activeColor: primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Category 2',
                          style: h2Style,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class Style11Card extends StatefulWidget {
  const Style11Card({Key? key}) : super(key: key);

  @override
  State<Style11Card> createState() => _Style11CardState();
}

class _Style11CardState extends State<Style11Card> {
  int selectedRadio = -1;

  @override
  Widget build(BuildContext context) {
    bootstrapGridParameters(gutterSize: 8.0);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      child: BootstrapRow(children: [
        BootstrapCol(
          sizes: 'col-6',
          child: GestureDetector(
            onTap: () {
              _onCardTap(0);
            },
            child: CardContent(
              image:
                  'https://cors-anywhere.herokuapp.com/https://via.placeholder.com/150x150',
              text: 'Category 1',
              radioValue: 0,
              selectedRadio: selectedRadio,
              onRadioTap: _onCardTap,
            ),
          ),
        ),
        BootstrapCol(
          sizes: 'col-6',
          child: GestureDetector(
            onTap: () {
              _onCardTap(1);
            },
            child: CardContent(
              image:
                  'https://cors-anywhere.herokuapp.com/https://via.placeholder.com/150x150',
              text: 'Category 2',
              radioValue: 1,
              selectedRadio: selectedRadio,
              onRadioTap: _onCardTap,
            ),
          ),
        ),
      ]),
    );
  }

  void _onCardTap(int value) {
    setState(() {
      selectedRadio = selectedRadio == value ? -1 : value;
    });
  }
}

class Style12Card extends StatelessWidget {
  const Style12Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(32)),
              child: Stack(
                children: [
                  Image.network(
                    'https://cors-anywhere.herokuapp.com/https://images.pexels.com/photos/41498/pexels-photo-41498.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    width: double.infinity,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 4,
                    right: 4,
                    child: Stack(
                      children: [
                        // Background with blur effect
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              50.0), // Adjust corner radius as needed
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                                sigmaX: 25.0,
                                sigmaY: 25.0), // Adjust blur intensity
                            child: Container(
                              height: 60.0,
                              width: 60.0,
                              color: Colors
                                  .transparent, // Transparent container for button effect
                            ),
                          ),
                        ),

                        // Centered user icon within IconButton
                        Center(
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            child: IconButton(
                              onPressed: () {
                                // Handle button press event
                              },
                              icon: Icon(
                                Icons
                                    .music_note_rounded, // Replace with your desired user icon
                                size: 24.0, // Adjust icon size as needed
                                color:
                                    Colors.white, // Adjust icon color as needed
                              ),
                              padding:
                                  EdgeInsets.zero, // Remove default padding
                              visualDensity: VisualDensity
                                  .compact, // Reduce button hit area (optional)
                              splashRadius:
                                  20.0, // Adjust splash radius as needed
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 8,
                    right: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      child: Column(
                        children: [
                          BootstrapRow(
                            children: [
                              BootstrapCol(
                                sizes: 'col-8',
                                child: Container(
                                  height: buttonHeight,
                                  child: PrimaryButton(
                                    text: 'View Reports',
                                    icon: Icon(Icons.bar_chart),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                              BootstrapCol(
                                sizes: 'col-2',
                                offsets: 'offset-2',
                                child: Container(
                                  height: buttonHeight,
                                  child: SizedBox(
                                    width: buttonHeight,
                                    height: buttonHeight,
                                    child: FittedBox(
                                      child: PrimaryFloatingActionButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add,
                                          size: xlFontSize,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Icon(
                          //       Icons.star,
                          //       color: warningColor,
                          //       size: 18.0,
                          //     ),
                          //     SizedBox(width: 4.0),
                          //     Text(
                          //       '4.5',
                          //       style: h5Style,
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Guitar',
                          style: h1Style.copyWith(
                              fontWeight: normalFontWeight,
                              fontSize: xxxlFontSize),
                        ),
                        SizedBox(
                          width: 0.0,
                          height: 0.0,
                        ), // Adjust spacing as needed
                        Text(
                          'Assistant',
                          style: h1Style.copyWith(
                              fontWeight: normalFontWeight,
                              fontSize: xxxlFontSize),
                        ),
                        SizedBox(width: 16.0),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  final String image;
  final String text;
  final int radioValue;
  final int selectedRadio;
  final Function(int) onRadioTap;

  const CardContent({
    Key? key,
    required this.image,
    required this.text,
    required this.radioValue,
    required this.selectedRadio,
    required this.onRadioTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color:
              selectedRadio == radioValue ? primaryColor : Colors.transparent,
          width: 2.0,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  image,
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
                Positioned(
                  top: 8.0,
                  right: 8.0,
                  child: Container(
                    height: 22,
                    width: 22,
                    padding: EdgeInsets.all(0.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: selectedRadio == radioValue
                          ? Colors.transparent
                          : Colors.transparent,
                      // color: Colors.black12,
                    ),
                    child: Radio<int>(
                      value: radioValue,
                      groupValue: selectedRadio,
                      onChanged: (value) => onRadioTap(value!),
                      activeColor: primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: h2Style,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: Scrollable(
        viewportBuilder: (context, viewportConstraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Style1Card(),
                const Divider(thickness: 2, height: 30),
                Style2Card(),
                const Divider(thickness: 2, height: 30),
                Style3Card(),
                const Divider(thickness: 2, height: 30),
                Style4Card(),
                const Divider(thickness: 2, height: 30),
                Style5Card(),
                const Divider(thickness: 2, height: 30),
                Style6Card(),
                const Divider(thickness: 2, height: 30),
                Style7Card(),
                const Divider(thickness: 2, height: 30),
                Style8Card(),
                const Divider(thickness: 2, height: 30),
                Style9Card(),
                const Divider(thickness: 2, height: 30),
                Style10Card(),
                const Divider(thickness: 2, height: 30),
                Style11Card(),
                const Divider(thickness: 2, height: 30),
                Style12Card(),
                SizedBox(height: 30),
              ],
            ),
          );
        },
      ),
    );
  }
}
