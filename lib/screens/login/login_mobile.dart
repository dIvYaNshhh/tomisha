import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tomisha/utils/image_resources.dart';
import 'package:tomisha/widgets/app_bar_widget.dart';
import 'package:tomisha/widgets/wavy_baackground.dart';
import 'package:tomisha/widgets/segment_tab_bar.dart';

class LoginMobile extends StatelessWidget {
  const LoginMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarWidget(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1 / 1.5,
                  child: Container(
                    color: const Color(0xffE6FFFA),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Text(
                            'Deine Job\n website',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w700,
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
                const SegmentTabBar(),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Drei einfache Schritte\n zu deinem neuen Job',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      color: const Color(0xff4A5568),
                      fontSize: 25,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.zero,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.3,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  right:
                                      MediaQuery.of(context).size.width * 0.1),
                              child: SvgPicture.asset(
                                ImageResources
                                    .mobileSectionOne, // Path to your SVG file
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.1,
                            child: RichText(
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
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                      ),
                      SineWaveBackground(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.5,
                        painter: SineWavePainter(),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.23,
                        right: MediaQuery.of(context).size.width * 0.1,
                        child: SvgPicture.asset(
                          ImageResources
                              .mobileSectionTwo, // Path to your SVG file
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.05,
                        child: RichText(
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
                  height: 190,
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
                      colors: [
                        Color(0xFF319795),
                        Color(0xFF3182CE),
                      ],
                      begin: FractionalOffset(0.0, 0.7),
                      end: FractionalOffset(0.7, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
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
