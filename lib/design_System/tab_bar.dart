import 'package:flutter/material.dart';
import 'package:flutter_toolkit/design_System/constants.dart';

class CustomTabBar extends StatelessWidget {
  final List<Tab> tabs;
  final Color? backgroundColor;
  final Color? indicatorColor;
  final Color? labelColor;
  final Color? unselectedLabelColor;
  final bool iconTextRow;
  final bool useCircularIndicator;
  final bool isScrollable;
  final bool isAlignLeft;
  final TabController? tabController;

  CustomTabBar({
    Key? key,
    required this.tabs,
    this.backgroundColor,
    this.indicatorColor,
    this.labelColor,
    this.unselectedLabelColor,
    this.iconTextRow = false,
    this.useCircularIndicator = false,
    this.isScrollable = false,
    this.isAlignLeft = false,
    this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: tabs,
      isScrollable: isScrollable,
      labelColor: labelColor,
      unselectedLabelColor: unselectedLabelColor,
      indicator: useCircularIndicator
          ? MyCustomIndicator(
              indicatorColor ?? Colors.white,
              indicatorSize: 8.0,
            )
          : UnderlineTabIndicator(
              borderSide: BorderSide(
                color: indicatorColor ?? Colors.white,
                width: 2.0,
              ),
            ),
      indicatorSize: useCircularIndicator
          ? TabBarIndicatorSize.label
          : TabBarIndicatorSize.tab,
      labelStyle: TextStyle(
        textBaseline:
            iconTextRow ? TextBaseline.alphabetic : TextBaseline.ideographic,
        fontFamily: 'Outfit', // Set the default font family
      ),
    );
  }
}

class MyCustomIndicator extends Decoration {
  final Color color;
  final double indicatorSize;

  MyCustomIndicator(this.color, {required this.indicatorSize});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _MyCustomIndicatorPainter(this, color, indicatorSize);
  }
}

class _MyCustomIndicatorPainter extends BoxPainter {
  final MyCustomIndicator decoration;
  final Color color;
  final double indicatorSize;

  _MyCustomIndicatorPainter(this.decoration, this.color, this.indicatorSize);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final centerX = offset.dx + configuration.size!.width / 2;
    final bottomY = configuration.size!.height;
    final radius = indicatorSize / 2;
    final rect = Rect.fromCircle(
        center: Offset(centerX, bottomY - radius), radius: radius);

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    canvas.drawOval(rect, paint);
  }
}
