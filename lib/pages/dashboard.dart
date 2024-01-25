import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_toolkit/design_System/constants.dart';
import 'package:flutter_toolkit/pages/card.dart';
import 'package:flutter_toolkit/pages/example.dart';
import 'package:flutter_toolkit/pages/list.dart';
import 'package:flutter_toolkit/pages/login.dart';
import 'package:flutter_toolkit/pages/navigation/nav.dart';
import 'package:flutter_toolkit/pages/responsive_grid.dart';
import 'package:flutter_toolkit/pages/tabs.dart';
import 'package:sidebarx/sidebarx.dart';
import '../design_System/responsive.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SidebarX Example',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primaryColor: primaryColor,
        fontFamily: 'Outfit',
        canvasColor: canvasColor,
        // scaffoldBackgroundColor: scaffoldBackgroundColor,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            color: whiteColor,
            fontSize: 46,
            fontWeight: boldFontWeight,
          ),
        ),
      ),
      home: Builder(
        builder: (context) {
          final isSmallScreen =
              MediaQuery.of(context).size.width < Responsive.screenXS;
          return Scaffold(
            key: _key,
            appBar: isSmallScreen
                ? AppBar(
                    backgroundColor: canvasColor,
                    title: Text(_getTitleByIndex(_controller.selectedIndex)),
                    leading: IconButton(
                      onPressed: () {
                        _key.currentState?.openDrawer();
                      },
                      icon: const Icon(Icons.menu),
                    ),
                  )
                : null,
            drawer: ExampleSidebarX(controller: _controller),
            body: Row(
              children: [
                if (!isSmallScreen) ExampleSidebarX(controller: _controller),
                Expanded(
                  child: _ScreensExample(controller: _controller),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    // Listen to changes in the selected index and update the title
    _controller.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  }
}

class ExampleSidebarX extends StatelessWidget {
  const ExampleSidebarX({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: canvasColor,
          borderRadius: BorderRadius.circular(0),
        ),
        hoverColor: Colors.transparent,
        hoverTextStyle: const TextStyle(color: whiteColor),
        textStyle: TextStyle(color: whiteColor.withOpacity(0.5)),
        selectedTextStyle: const TextStyle(color: whiteColor),
        itemTextPadding: const EdgeInsets.only(left: 12),
        selectedItemTextPadding: const EdgeInsets.only(left: 12),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: canvasColor),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: actionColor.withOpacity(0),
          ),
          gradient: const LinearGradient(
            colors: [accentCanvasColor, canvasColor],
          ),
          boxShadow: [
            BoxShadow(
              color: darkColor.withOpacity(0),
              blurRadius: 0,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: whiteColor.withOpacity(0.5),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: whiteColor,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: canvasColor,
        ),
      ),
      footerDivider: divider,
      headerBuilder: (context, extended) {
        return SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.network(
              'https://raw.githubusercontent.com/dnfield/flutter_svg/7d374d7107561cbd906d7c0ca26fef02cc01e7c8/example/assets/flutter_logo.svg',
              semanticsLabel: 'Flutter',
              height: 100,
              width: 70,
            ),
          ),
        );
      },
      items: [
        SidebarXItem(
          icon: Icons.login,
          label: 'Login',
          onTap: () {
            debugPrint('Login');
          },
        ),
        const SidebarXItem(
          icon: Icons.web_outlined,
          label: 'Example',
        ),
        const SidebarXItem(
          icon: Icons.grid_on_rounded,
          label: 'Grid',
        ),
        const SidebarXItem(
          icon: Icons.mouse_rounded,
          label: 'Tabs',
        ),
        const SidebarXItem(
          icon: Icons.list_outlined,
          label: 'List',
        ),
        const SidebarXItem(
          icon: Icons.copy_outlined,
          label: 'Card',
        ),
        const SidebarXItem(
          icon: Icons.menu,
          label: 'Navigation',
        ),
        // Add more sidebar items as needed
      ],
    );
  }
}

class _ScreensExample extends StatefulWidget {
  final SidebarXController controller;

  const _ScreensExample({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _ScreensExampleState createState() => _ScreensExampleState();
}

class _ScreensExampleState extends State<_ScreensExample> {
  late SidebarXController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller;

    // Listen to changes in the selected index and update the title
    _controller.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return getPageByIndex(_controller.selectedIndex);
      },
    );
  }

  Widget getPageByIndex(int index) {
    switch (index) {
      case 0:
        return LoginPage();
      case 1:
        return ExamplePage();
      case 2:
        return ResponsiveGridPage();
      case 3:
        return const TabsPage();
      case 4:
        return const ListPage();
      case 5:
        return const CardPage();
      case 6:
        return Nav();
      // Add more cases for other pages as needed
      default:
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: const Text(
            'Page not found',
            style: TextStyle(fontSize: 24.0),
          ),
        );
    }
  }
}

String _getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return 'Login';
    case 1:
      return 'Example';
    case 2:
      return 'Grid';
    case 3:
      return 'Tabs';
    case 4:
      return 'List';
    case 5:
      return 'Cards';
    case 6:
      return 'Navigation';
    // Add more cases for other pages as needed
    default:
      return 'Not found page';
  }
}

// const primaryColor = Color(0xFF685BFF);
const canvasColor = primaryColor;
const scaffoldBackgroundColor = primaryColor;
const accentCanvasColor = primaryColor;
const white = whiteColor;
final actionColor = primaryColor.withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);
