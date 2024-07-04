import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final double width;
  final double? fontSize;
  final String title;
  final VoidCallback? onTap;
  final List<Widget>? actions;
  final bool isLeading;

  const AppBarWidget({
    super.key,
    this.height = kToolbarHeight + 13,
    this.width = double.infinity,
    this.actions,
    this.title = '',
    this.fontSize,
    this.onTap,
    this.isLeading = true,
  });

  @override
  Size get preferredSize => Size(width, height);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomRoundedAppBarClipper(),
      child: Container(
        width: double.infinity,
        height: 200,
        color: Colors.white, // AppBar background color
        child: AppBar(
          centerTitle: true,
          actions: actions,
          toolbarHeight: height,
          backgroundColor: Colors.white,
          title: Text(
            title,
            style: TextStyle(
                fontSize: fontSize ?? 20.dp,
                fontWeight: FontWeight.w400,
                color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class BottomRoundedAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width / 2,
      size.height + 30,
      size.width,
      size.height,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
