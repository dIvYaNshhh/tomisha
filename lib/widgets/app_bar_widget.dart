import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final double width;
  final bool isLeading;

  const AppBarWidget({
    super.key,
    this.height = kToolbarHeight,
    this.width = double.infinity,
    this.isLeading = true,
  });

  @override
  Size get preferredSize => Size(width, height + 10.dp);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: preferredSize.height,
      color: Colors.white, // AppBar background color
      child: Column(
        children: [
          Container(
            height: 5.dp,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xFF319795),
                    Color(0xFF3182CE),
                  ],
                  begin: FractionalOffset(0.0, 0.3),
                  end: FractionalOffset(0.3, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
          ),
          AppBar(
            centerTitle: true,
            actions: [
              TextButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: 19),
                  child: Text(
                    "Login",
                    style: GoogleFonts.lato(
                      color: const Color(0xff319795),
                      letterSpacing: 0.84.dp,
                      fontSize: 17.dp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
            toolbarHeight: height,
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
