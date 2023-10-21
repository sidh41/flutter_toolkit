// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_toolkit/design_System/constants.dart';

class ResponsiveGridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Grid"),
      ),
      body: SingleChildScrollView(
        child: ResponsiveGridPageLayout(),
      ),
    );
  }
}

class ResponsiveGridPageLayout extends StatelessWidget {
  const ResponsiveGridPageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollable(viewportBuilder: (context, viewportConstraints) {
      bootstrapGridParameters(gutterSize: 8.0);
      return SingleChildScrollView(
        child: BootstrapContainer(
            fluid: true,
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: xlVerticalSpacing),
                    ],
                  ),
                ],
              ),
              BootstrapRow(children: [
                BootstrapCol(
                  sizes: 'col-12',
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Grid system',
                          style: h2Style,
                        ),
                      ),
                      const SizedBox(height: xsVerticalSpacing),
                    ],
                  ),
                ),
                BootstrapCol(
                    sizes: 'col-1',
                    child: ColumnWidget(
                      text: 'Col 1',
                    )),
                BootstrapCol(
                    sizes: 'col-1',
                    child: ColumnWidget(
                      text: 'Col 2',
                    )),
                BootstrapCol(
                    sizes: 'col-1',
                    child: ColumnWidget(
                      text: 'Col 3',
                    )),
                BootstrapCol(
                    sizes: 'col-1',
                    child: ColumnWidget(
                      text: 'Col 4',
                    )),
                BootstrapCol(
                    sizes: 'col-1',
                    child: ColumnWidget(
                      text: 'Col 5',
                    )),
                BootstrapCol(
                    sizes: 'col-1',
                    child: ColumnWidget(
                      text: 'Col 6',
                    )),
                BootstrapCol(
                    sizes: 'col-1',
                    child: ColumnWidget(
                      text: 'Col 7',
                    )),
                BootstrapCol(
                    sizes: 'col-1',
                    child: ColumnWidget(
                      text: 'Col 8',
                    )),
                BootstrapCol(
                    sizes: 'col-1',
                    child: ColumnWidget(
                      text: 'Col 9',
                    )),
                BootstrapCol(
                    sizes: 'col-1',
                    child: ColumnWidget(
                      text: 'Col 10',
                    )),
                BootstrapCol(
                    sizes: 'col-1',
                    child: ColumnWidget(
                      text: 'Col 11',
                    )),
                BootstrapCol(
                    sizes: 'col-1',
                    child: ColumnWidget(
                      text: 'Col 12',
                    )),
              ]),
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-12 col-sm-6 col-md-4 col-lg-2 col-xl-2',
                    child: ColumnWidget(
                      text: 'Col 1',
                    )),
                BootstrapCol(
                    sizes: 'col-12 col-sm-6 col-md-4 col-lg-2 col-xl-2',
                    child: ColumnWidget(
                      text: 'Col 2',
                    )),
                BootstrapCol(
                    sizes: 'col-12 col-sm-6 col-md-4 col-lg-2 col-xl-2',
                    child: ColumnWidget(
                      text: 'Col 3',
                    )),
                BootstrapCol(
                    sizes: 'col-12 col-sm-6 col-md-4 col-lg-2 col-xl-2',
                    child: ColumnWidget(
                      text: 'Col 4',
                    )),
                BootstrapCol(
                    sizes: 'col-12 col-sm-6 col-md-4 col-lg-2 col-xl-2',
                    child: ColumnWidget(
                      text: 'Col 5',
                    )),
                BootstrapCol(
                    sizes: 'col-12 col-sm-6 col-md-4 col-lg-2 col-xl-2',
                    child: ColumnWidget(
                      text: 'Col 6',
                    )),
              ]),
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-6 col-sm-6 col-md-3 col-lg-3 col-xl-3',
                    child: ColumnWidget(
                      text: 'Col 1',
                    )),
                BootstrapCol(
                    sizes: 'col-6 col-sm-6 col-md-3 col-lg-3 col-xl-3',
                    child: ColumnWidget(
                      text: 'Col 2',
                    )),
                BootstrapCol(
                    sizes: 'col-6 col-sm-6 col-md-3 col-lg-3 col-xl-3',
                    child: ColumnWidget(
                      text: 'Col 3',
                    )),
                BootstrapCol(
                    sizes: 'col-6 col-sm-6 col-md-3 col-lg-3 col-xl-3',
                    child: ColumnWidget(
                      text: 'Col 4',
                    )),
              ]),
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-4',
                    child: ColumnWidget(
                      text: 'Col 1',
                    )),
                BootstrapCol(
                    sizes: 'col-4',
                    child: ColumnWidget(
                      text: 'Col 2',
                    )),
                BootstrapCol(
                    sizes: 'col-4',
                    child: ColumnWidget(
                      text: 'Col 3',
                    )),
              ]),
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-6',
                    child: ColumnWidget(
                      text: 'Col 1',
                    )),
                BootstrapCol(
                    sizes: 'col-6',
                    child: ColumnWidget(
                      text: 'Col 2',
                    )),
              ]),
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-12',
                    child: ColumnWidget(
                      text: 'Col 1',
                    )),
              ]),
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-1',
                    child: ColumnWidget(
                      text: 'Col 1',
                    )),
                BootstrapCol(
                    sizes: 'col-10',
                    child: ColumnWidget(
                      text: 'Col 2 (Wider)',
                    )),
                BootstrapCol(
                    sizes: 'col-1',
                    child: ColumnWidget(
                      text: 'Col 3',
                    )),
              ]),
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-2',
                    child: ColumnWidget(
                      text: 'Col 1',
                    )),
                BootstrapCol(
                    sizes: 'col-8',
                    child: ColumnWidget(
                      text: 'Col 2 (Wider)',
                    )),
                BootstrapCol(
                    sizes: 'col-2',
                    child: ColumnWidget(
                      text: 'Col 3',
                    )),
              ]),
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-3',
                    child: ColumnWidget(
                      text: 'Col 1',
                    )),
                BootstrapCol(
                    sizes: 'col-6',
                    child: ColumnWidget(
                      text: 'Col 2 (Wider)',
                    )),
                BootstrapCol(
                    sizes: 'col-3',
                    child: ColumnWidget(
                      text: 'Col 3',
                    )),
              ]),
              Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: xlVerticalSpacing),
                    ],
                  ),
                ],
              ),
              BootstrapRow(children: [
                BootstrapCol(
                  sizes: 'col-12',
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Invisible For Sizes',
                          style: h2Style,
                        ),
                      ),
                      const SizedBox(height: xsVerticalSpacing),
                    ],
                  ),
                ),
                BootstrapCol(
                    sizes: 'col-3',
                    invisibleForSizes: 'xs',
                    child: ColumnWidget(
                      text: 'Invisible for xs',
                    )),
                BootstrapCol(
                    sizes: 'col-3',
                    invisibleForSizes: 'sm',
                    child: ColumnWidget(
                      text: 'Invisible for sm',
                    )),
                BootstrapCol(
                    sizes: 'col-3',
                    invisibleForSizes: 'md',
                    child: ColumnWidget(
                      text: 'Invisible for md',
                    )),
                BootstrapCol(
                    sizes: 'col-3',
                    invisibleForSizes: 'lg',
                    child: ColumnWidget(
                      text: 'Invisible for lg',
                    )),
                BootstrapCol(
                    sizes: 'col-3',
                    invisibleForSizes: 'xl',
                    child: ColumnWidget(
                      text: 'Invisible for xl',
                    )),
              ]),
              Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: xlVerticalSpacing),
                    ],
                  ),
                ],
              ),
              BootstrapRow(children: [
                BootstrapCol(
                  sizes: 'col-12',
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Reordering',
                          style: h2Style,
                        ),
                      ),
                      const SizedBox(height: xsVerticalSpacing),
                    ],
                  ),
                ),
                BootstrapCol(
                    sizes: 'col-4',
                    orders:
                        'order-3 order-sm-3 order-md-3 order-lg-3 order-xl-3',
                    child: ColumnWidget(
                      text: 'First, but last',
                    )),
                BootstrapCol(
                    sizes: 'col-4',
                    orders:
                        'order-2 order-sm-2 order-md-2 order-lg-2 order-xl-2',
                    child: ColumnWidget(
                      text: 'Second',
                    )),
                BootstrapCol(
                    sizes: 'col-4',
                    orders:
                        'order-1 order-sm-1 order-md-1 order-lg-1 order-xl-1',
                    child: ColumnWidget(
                      text: 'Third, but first',
                    )),
              ]),
              Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: xlVerticalSpacing),
                    ],
                  ),
                ],
              ),
              BootstrapRow(children: [
                BootstrapCol(
                  sizes: 'col-12',
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Offsetting columns',
                          style: h2Style,
                        ),
                      ),
                      const SizedBox(height: xsVerticalSpacing),
                    ],
                  ),
                ),
                BootstrapCol(
                    sizes: 'col-4',
                    child: ColumnWidget(
                      text: 'Col 1',
                    )),
                BootstrapCol(
                    sizes: 'col-4',
                    offsets: 'offset-xl-4',
                    child: ColumnWidget(
                      text: 'col 2, offset-4',
                    )),
              ]),
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-4',
                    child: ColumnWidget(
                      text: 'Col 1',
                    )),
                BootstrapCol(
                    sizes: 'col-4',
                    offsets: 'offset-xl-3',
                    child: ColumnWidget(
                      text: 'col 2, offset-3',
                    )),
              ]),
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-4',
                    child: ColumnWidget(
                      text: 'Col 1',
                    )),
                BootstrapCol(
                    sizes: 'col-4',
                    offsets: 'offset-xl-2',
                    child: ColumnWidget(
                      text: 'col 2, offset-2',
                    )),
              ]),
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-4',
                    child: ColumnWidget(
                      text: 'Col 1',
                    )),
                BootstrapCol(
                    sizes: 'col-4',
                    offsets: 'offset-xl-1',
                    child: ColumnWidget(
                      text: 'col 2, offset-1',
                    )),
              ]),
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-4',
                    child: ColumnWidget(
                      text: 'Col 1',
                    )),
                BootstrapCol(
                    sizes: 'col-4',
                    offsets: 'offset-xl-0',
                    child: ColumnWidget(
                      text: 'col 2, offset-0',
                    )),
              ]),
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-4',
                    offsets: 'offset-xl-4',
                    child: ColumnWidget(
                      text: 'Col 1, offset-4',
                    )),
                BootstrapCol(
                    sizes: 'col-4',
                    child: ColumnWidget(
                      text: 'col 2',
                    )),
              ]),
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-4',
                    offsets: 'offset-xl-3',
                    child: ColumnWidget(
                      text: 'Col 1, offset-3',
                    )),
                BootstrapCol(
                    sizes: 'col-4',
                    child: ColumnWidget(
                      text: 'col 2',
                    )),
              ]),
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-4',
                    offsets: 'offset-xl-2',
                    child: ColumnWidget(
                      text: 'Col 1, offset-2',
                    )),
                BootstrapCol(
                    sizes: 'col-4',
                    child: ColumnWidget(
                      text: 'col 2',
                    )),
              ]),
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-4',
                    offsets: 'offset-xl-1',
                    child: ColumnWidget(
                      text: 'Col 1, offset-1',
                    )),
                BootstrapCol(
                    sizes: 'col-4',
                    child: ColumnWidget(
                      text: 'col 2',
                    )),
              ]),
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-4',
                    offsets: 'offset-xl-0',
                    child: ColumnWidget(
                      text: 'Col 1, offset-0',
                    )),
                BootstrapCol(
                    sizes: 'col-4',
                    child: ColumnWidget(
                      text: 'col 2',
                    )),
              ]),
              Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: xlVerticalSpacing),
                    ],
                  ),
                ],
              ),
              BootstrapRow(
                children: [
                  BootstrapCol(
                    sizes: 'col-12',
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Nesting',
                            style: h2Style,
                          ),
                        ),
                        const SizedBox(height: xsVerticalSpacing),
                      ],
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-6',
                    child: Container(
                      padding: const EdgeInsets.only(top: 8.0),
                      color: Colors.blue[100], // Set the background color
                      child: Column(
                        children: [
                          ColumnWidget(
                            text: 'Level 1: .col-6',
                            textColor: whiteColor,
                            bgColor: primaryColor,
                          ),
                          BootstrapRow(
                            children: [
                              BootstrapCol(
                                sizes: 'col-6',
                                child: ColumnWidget(
                                  text: 'Level 2: .col-6',
                                  textColor: whiteColor,
                                  bgColor: primaryColor,
                                ),
                              ),
                              BootstrapCol(
                                sizes: 'col-6',
                                child: ColumnWidget(
                                  text: 'Level 2: .col-6',
                                  textColor: whiteColor,
                                  bgColor: primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-6',
                    child: Container(
                      padding: const EdgeInsets.only(top: 8.0),
                      color: Colors.blue[100],
                      child: Column(
                        children: [
                          ColumnWidget(
                            text: 'Level 1: .col-6',
                            textColor: whiteColor,
                            bgColor: primaryColor,
                          ),
                          BootstrapRow(
                            children: [
                              BootstrapCol(
                                sizes: 'col-3',
                                child: ColumnWidget(
                                  text: 'Level 2: .col-3',
                                  textColor: whiteColor,
                                  bgColor: primaryColor,
                                ),
                              ),
                              BootstrapCol(
                                sizes: 'col-3',
                                child: ColumnWidget(
                                  text: 'Level 2: .col-3',
                                  textColor: whiteColor,
                                  bgColor: primaryColor,
                                ),
                              ),
                              BootstrapCol(
                                sizes: 'col-3',
                                child: ColumnWidget(
                                  text: 'Level 2: .col-3',
                                  textColor: whiteColor,
                                  bgColor: primaryColor,
                                ),
                              ),
                              BootstrapCol(
                                sizes: 'col-3',
                                child: ColumnWidget(
                                  text: 'Level 2: .col-3',
                                  textColor: whiteColor,
                                  bgColor: primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              BootstrapRow(children: [
                BootstrapCol(
                    sizes: 'col-12',
                    invisibleForSizes: 'sm md lg xl',
                    child: Title(
                        text: '"xs" Screen layout', textColor: darkColor)),
                BootstrapCol(
                    sizes: 'col-12',
                    invisibleForSizes: 'xs md lg xl',
                    child: Title(
                      text: '"sm" Screen layout',
                      textColor: successColor,
                    )),
                BootstrapCol(
                    sizes: 'col-12',
                    invisibleForSizes: 'xs sm lg xl',
                    child: Title(
                      text: '"md" Screen layout',
                      textColor: warningColor,
                    )),
                BootstrapCol(
                    sizes: 'col-12',
                    invisibleForSizes: 'xs sm md xl',
                    child: Title(
                      text: '"lg" Screen layout',
                      textColor: dangerColor,
                    )),
                BootstrapCol(
                    sizes: 'col-12',
                    invisibleForSizes: 'xs sm md lg',
                    child: Title(
                      text: '"xl" Screen layout',
                      textColor: primaryColor,
                    )),
              ]),
            ]),
      );
    });
  }
}

class Title extends StatelessWidget {
  final String text;
  final Color textColor;

  const Title({Key? key, required this.text, this.textColor = darkColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end, // Stick to bottom
      children: [
        Container(
          height: MediaQuery.of(context).size.height, // Occupy full height
          child: Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: xlFontSize,
                fontWeight: boldFontWeight,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ColumnWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color bgColor;

  const ColumnWidget(
      {Key? key,
      required this.text,
      this.bgColor = lightColor,
      this.textColor = darkColor})
      : super(key: key);

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
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: mdFontSize,
              fontWeight: normalFontWeight,
            ),
          ),
        ),
      ),
    );
  }
}
