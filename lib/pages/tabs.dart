// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_toolkit/design_System/tab_bar.dart';
import 'package:flutter_toolkit/design_System/constants.dart';

class Style1TabPage extends StatelessWidget {
  const Style1TabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Style 1: Text Tabs'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: CustomTabBar(
              tabs: [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3'),
              ],
            ),
          ),
        ),
        body: SizedBox(
          height: 100, // Set fixed height for TabBarView
          child: TabBarView(
            children: [
              Center(child: Text('Tab 1 content')),
              Center(child: Text('Tab 2 content')),
              Center(child: Text('Tab 3 content')),
            ],
          ),
        ),
      ),
    );
  }
}

class Style2TabPage extends StatelessWidget {
  const Style2TabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Style 2: Icon and Text Tabs'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: CustomTabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.search), text: 'Search'),
                Tab(icon: Icon(Icons.person), text: 'Profile'),
              ],
            ),
          ),
        ),
        body: SizedBox(
          height: 100, // Set fixed height for TabBarView
          child: TabBarView(
            children: [
              Center(child: Text('Home')),
              Center(child: Text('Search')),
              Center(child: Text('Profile')),
            ],
          ),
        ),
      ),
    );
  }
}

class Style3TabPage extends StatelessWidget {
  const Style3TabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Style 3: Icon Tabs'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: CustomTabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.search)),
                Tab(icon: Icon(Icons.person)),
              ],
            ),
          ),
        ),
        body: SizedBox(
          height: 100, // Set fixed height for TabBarView
          child: TabBarView(
            children: [
              Center(child: Text('Home')),
              Center(child: Text('Search')),
              Center(child: Text('Profile')),
            ],
          ),
        ),
      ),
    );
  }
}

class Style4TabPage extends StatelessWidget {
  const Style4TabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Style 4: Custom Colors',
            style: TextStyle(color: darkColor),
          ),
          backgroundColor: Colors.deepOrange,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              color: whiteColor,
              child: CustomTabBar(
                tabs: [
                  Tab(text: 'Tab 1'),
                  Tab(text: 'Tab 2'),
                  Tab(text: 'Tab 3'),
                ],
                backgroundColor: whiteColor,
                indicatorColor: primaryColor,
                labelColor: primaryColor,
                unselectedLabelColor: mediumColor,
              ),
            ),
          ),
        ),
        body: SizedBox(
          height: 100, // Set fixed height for TabBarView
          child: TabBarView(
            children: [
              Container(
                color: successColor,
                child: Center(child: Text('Tab 1 content')),
              ),
              Container(
                color: successColor,
                child: Center(child: Text('Tab 2 content')),
              ),
              Container(
                color: successColor,
                child: Center(child: Text('Tab 3 content')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Style5TabPage extends StatelessWidget {
  const Style5TabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: Text(
            'Style 5: Custom Indicator',
            style: TextStyle(color: darkColor),
          ),
          backgroundColor: lightColor,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: CustomTabBar(
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'Search'),
                Tab(text: 'Profile'),
              ],
              useCircularIndicator: true,
              backgroundColor: lightColor,
              indicatorColor: darkColor,
              labelColor: darkColor,
              unselectedLabelColor: mediumColor,
            ),
          ),
        ),
        body: SizedBox(
          height: 100, // Set fixed height for TabBarView
          child: TabBarView(
            children: [
              Center(child: Text('Tab 1 content')),
              Center(child: Text('Tab 2 content')),
              Center(child: Text('Tab 3 content')),
            ],
          ),
        ),
      ),
    );
  }
}

class Style6TabPage extends StatelessWidget {
  const Style6TabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: Text(
            'Style 6: Scrollable',
            style: TextStyle(color: darkColor),
          ),
          backgroundColor: lightColor,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomTabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home), text: 'Home'),
                  Tab(icon: Icon(Icons.search), text: 'Search'),
                  Tab(icon: Icon(Icons.person), text: 'Profile'),
                  Tab(icon: Icon(Icons.settings), text: 'Settings'),
                  Tab(icon: Icon(Icons.notifications), text: 'Notifications'),
                  Tab(icon: Icon(Icons.refresh), text: 'Updates'),
                  Tab(icon: Icon(Icons.home), text: 'Home'),
                  Tab(icon: Icon(Icons.search), text: 'Search'),
                  Tab(icon: Icon(Icons.person), text: 'Profile'),
                ],
                isScrollable: true,
                useCircularIndicator: true,
                backgroundColor: lightColor,
                indicatorColor: darkColor,
                labelColor: darkColor,
                unselectedLabelColor: mediumColor,
              ),
            ),
          ),
        ),
        body: SizedBox(
          height: 100, // Set a fixed height for TabBarView
          child: TabBarView(
            children: [
              Center(child: Text('Tab 1 content')),
              Center(child: Text('Tab 2 content')),
              Center(child: Text('Tab 3 content')),
              Center(child: Text('Tab 4 content')),
              Center(child: Text('Tab 5 content')),
              Center(child: Text('Tab 6 content')),
              Center(child: Text('Tab 7 content')),
              Center(child: Text('Tab 8 content')),
              Center(child: Text('Tab 9 content')),
            ],
          ),
        ),
      ),
    );
  }
}

class Style7TabPage extends StatelessWidget {
  const Style7TabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Adjust the length for your tabs
      child: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: Text(
            'Style 7: Left Align',
            style: TextStyle(color: darkColor),
          ),
          backgroundColor: lightColor,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomTabBar(
                tabs: [
                  Tab(text: 'Home'),
                  Tab(text: 'Search'),
                  Tab(text: 'Profile'),
                ],
                isScrollable: true,
                useCircularIndicator: false,
                backgroundColor: lightColor,
                indicatorColor: darkColor,
                labelColor: darkColor,
                unselectedLabelColor: mediumColor,
              ),
            ),
          ),
        ),
        body: SizedBox(
          height: 100, // Set a fixed height for TabBarView
          child: TabBarView(
            children: [
              Center(child: Text('Tab 1 content')),
              Center(child: Text('Tab 2 content')),
              Center(child: Text('Tab 3 content')),
            ],
          ),
        ),
      ),
    );
  }
}

class Style8TabPage extends StatelessWidget {
  const Style8TabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9, // Adjust the length for your tabs
      child: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: Text(
            'Style 8: Center Align',
            style: TextStyle(color: darkColor),
          ),
          backgroundColor: lightColor,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Align(
              alignment: Alignment.center,
              child: CustomTabBar(
                tabs: [
                  Tab(text: 'Home'),
                  Tab(text: 'Search'),
                  Tab(text: 'Profile'),
                ],
                isScrollable: true,
                backgroundColor: lightColor,
                indicatorColor: darkColor,
                labelColor: darkColor,
                unselectedLabelColor: mediumColor,
              ),
            ),
          ),
        ),
        body: SizedBox(
          height: 100, // Set a fixed height for TabBarView
          child: TabBarView(
            children: [
              Center(child: Text('Tab 1 content')),
              Center(child: Text('Tab 2 content')),
              Center(child: Text('Tab 3 content')),
            ],
          ),
        ),
      ),
    );
  }
}

class Style9TabPage extends StatelessWidget {
  const Style9TabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9, // Adjust the length for your tabs
      child: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: Text(
            'Style 9: Right Align',
            style: TextStyle(color: darkColor),
          ),
          backgroundColor: lightColor,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Align(
              alignment: Alignment.centerRight,
              child: CustomTabBar(
                tabs: [
                  Tab(text: 'Home'),
                  Tab(text: 'Search'),
                  Tab(text: 'Profile'),
                ],
                isScrollable: true,
                backgroundColor: lightColor,
                indicatorColor: darkColor,
                labelColor: darkColor,
                unselectedLabelColor: mediumColor,
              ),
            ),
          ),
        ),
        body: SizedBox(
          height: 100, // Set a fixed height for TabBarView
          child: TabBarView(
            children: [
              Center(child: Text('Tab 1 content')),
              Center(child: Text('Tab 2 content')),
              Center(child: Text('Tab 3 content')),
            ],
          ),
        ),
      ),
    );
  }
}

class TabsPage extends StatelessWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollable(
        viewportBuilder: (context, viewportConstraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 200, child: Style1TabPage()),
                const Divider(thickness: 2, height: 30),
                SizedBox(height: 200, child: Style2TabPage()),
                const Divider(thickness: 2, height: 30),
                SizedBox(height: 200, child: Style3TabPage()),
                const Divider(thickness: 2, height: 30),
                SizedBox(height: 200, child: Style4TabPage()),
                const Divider(thickness: 2, height: 30),
                SizedBox(height: 200, child: Style5TabPage()),
                const Divider(thickness: 2, height: 30),
                SizedBox(height: 200, child: Style6TabPage()),
                const Divider(thickness: 2, height: 30),
                SizedBox(height: 200, child: Style7TabPage()),
                const Divider(thickness: 2, height: 30),
                SizedBox(height: 200, child: Style8TabPage()),
                const Divider(thickness: 2, height: 30),
                SizedBox(height: 200, child: Style9TabPage()),
              ],
            ),
          );
        },
      ),
    );
  }
}
