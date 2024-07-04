import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tomisha/utils/image_resources.dart';
import 'package:tomisha/widgets/app_bar_widget.dart';

class LoginMobile extends StatelessWidget {
  const LoginMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(
        actions: [
          TextButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 19),
                child: Text(
                  "Login",
                  style: GoogleFonts.lato(
                    color: const Color(0xff319795),
                    letterSpacing: 0.84,
                    fontSize: 14,
                  ),
                ),
              ))
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1 / 1.3,
                  child: Container(
                    color: const Color(0xffE6FFFA),
                    height: 100.h,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Text(
                            'Deine Job\n website',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                              color: const Color(0xff2D3748),
                              letterSpacing: 1.26,
                              fontSize: 42,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SvgPicture.asset(
                          ImageResources.heroSection, // Path to your SVG file
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 120, right: 120, top: 30, bottom: 30),
                  child: Text(
                    'Drei einfache Schritte zu deinem neuen Job',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      color: const Color(0xff4A5568),
                      fontSize: 25,
                    ),
                  ),
                ),
                Container(
                  height: 370,
                  width: double.infinity,
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      SvgPicture.asset(
                        ImageResources
                            .mobileSectionOne, // Path to your SVG file

                        fit: BoxFit.fill,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '1.',
                              style: GoogleFonts.lato(
                                color: const Color(0xff718096),
                                letterSpacing: 1.26,
                                fontSize: 156,
                              ),
                            ),
                            TextSpan(
                              text: '  Erstellen dein Lebenslauf',
                              style: GoogleFonts.lato(
                                color: const Color(0xff718096),
                                letterSpacing: 1.26,
                                fontSize: 19,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 370,
                  width: double.infinity,
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFE6FFFA), // #E6FFFA color
                        Color(0xFFEBF4FF), // #EBF4FF color
                      ],
                      stops: [0.0, 1.0],
                      transform: GradientRotation(
                          134 * 3.1415927 / 180), // Convert degrees to radians
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '2.',
                              style: GoogleFonts.lato(
                                color: const Color(0xff718096),
                                letterSpacing: 1.26,
                                fontSize: 156,
                              ),
                            ),
                            TextSpan(
                              text: '  Erstellen dein Lebenslauf',
                              style: GoogleFonts.lato(
                                color: const Color(0xff718096),
                                letterSpacing: 1.26,
                                fontSize: 19,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        ImageResources
                            .mobileSectionTwo, // Path to your SVG file
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 377,
                  width: double.infinity,
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '3.',
                              style: GoogleFonts.lato(
                                color: const Color(0xff718096),
                                letterSpacing: 1.26,
                                fontSize: 156,
                              ),
                            ),
                            TextSpan(
                              text: '  Erstellen dein Lebenslauf',
                              style: GoogleFonts.lato(
                                color: const Color(0xff718096),
                                letterSpacing: 1.26,
                                fontSize: 19,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        ImageResources
                            .mobileSectionThree, // Path to your SVG file

                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: double.infinity,
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  color: Colors.white),
              padding: const EdgeInsets.all(32),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF319795),
                      Color(0xFF3182CE),
                    ],
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                    transform: GradientRotation(
                        95 * 3.1415927 / 180), // Convert degrees to radians
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0), // Rounded top corners
                  ),
                ),
                padding: const EdgeInsets.all(8),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Kostenlos Registrieren',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      letterSpacing: 1.26,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
