import 'package:flutter/material.dart';
import '../design_System/constants.dart';
import '../design_System/responsive.dart';

class ResponsiveRowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int columnCount;

    // Determine the column count based on screen size
    if (Responsive.isScreenXL(context)) {
      columnCount = 3;
    } else if (Responsive.isScreenLG(context)) {
      columnCount = 3;
    } else if (Responsive.isScreenMD(context)) {
      columnCount = 3;
    } else if (Responsive.isScreenXS(context)) {
      columnCount = 1;
    } else {
      // Default column count for unknown screen sizes
      columnCount = 6;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Row Example'),
      ),
      body: Scrollable(
        viewportBuilder: (context, viewportConstraints) {
          return Container(
            color: Colors.blue,
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Hi, this is ROW',
                  style: TextStyle(fontSize: lgFontSize, color: whiteColor),
                ),
                if (columnCount == 1)
                  Container(
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.all(16.0),
                    color: Colors.red,
                    child: Column(
                      children: [
                        Text(
                          'Column 1',
                          style: TextStyle(
                            fontSize: lgFontSize,
                            color: whiteColor,
                          ),
                        ),
                        Text(
                          'This is a Text Widget',
                          style: TextStyle(
                            fontSize: mdFontSize,
                            color: whiteColor,
                          ),
                        ),
                      ],
                    ),
                  )
                else if (Responsive.isScreenXS(context))
                  Column(
                    children: [
                      for (var i = 0; i < columnCount; i++)
                        Container(
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.all(16.0),
                          color: Colors.red,
                          child: Column(
                            children: [
                              Text(
                                'Column ${i + 1}',
                                style: TextStyle(
                                  fontSize: lgFontSize,
                                  color: whiteColor,
                                ),
                              ),
                              if (i == 0)
                                Text(
                                  'This is a Text Widget',
                                  style: TextStyle(
                                    fontSize: mdFontSize,
                                    color: whiteColor,
                                  ),
                                ),
                            ],
                          ),
                        ),
                    ],
                  )
                else
                  Row(
                    children: [
                      for (var i = 0; i < columnCount; i++)
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            padding: EdgeInsets.all(16.0),
                            color: Colors.red,
                            child: Column(
                              children: [
                                Text(
                                  'Column ${i + 1}',
                                  style: TextStyle(
                                    fontSize: lgFontSize,
                                    color: whiteColor,
                                  ),
                                ),
                                if (i == 0)
                                  Text(
                                    'This is a Text Widget',
                                    style: TextStyle(
                                      fontSize: mdFontSize,
                                      color: whiteColor,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                Text(
                  'Hi, again this is ROW',
                  style: TextStyle(fontSize: lgFontSize, color: whiteColor),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
