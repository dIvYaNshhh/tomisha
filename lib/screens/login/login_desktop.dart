import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tomisha/utils/image_resources.dart';
import 'package:tomisha/widgets/app_bar_widget.dart';
import 'package:tomisha/widgets/segment_tab_bar.dart';
import 'package:tomisha/widgets/wavy_baackground.dart';

class LoginDesktop extends StatelessWidget {
  const LoginDesktop({super.key});

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
                  aspectRatio: 5 / 2,
                  child: Container(
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
                        transform: GradientRotation(134 *
                            3.1415927 /
                            180), // Convert degrees to radians
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              padding: const EdgeInsets.only(top: 40),
                              child: Text(
                                'Deine Job\nwebsite',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.lato(
                                  color: const Color(0xff2D3748),
                                  letterSpacing: 1.26,
                                  fontWeight: FontWeight.w600,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
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
                                    fontSize: 12.dp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.08,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                  MediaQuery.of(context).size.width * 0.15),
                            ),
                          ),
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.05),
                          child: SvgPicture.asset(
                            ImageResources.heroSection, // Path to your SVG file

                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SegmentTabBar(),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 120, right: 120, top: 30, bottom: 30),
                  child: Text(
                    'Drei einfache Schritte \nzu deinem neuen Job',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      color: const Color(0xff4A5568),
                      fontSize: 40.dp,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.zero,
                          padding: EdgeInsets.zero,
                          child: Stack(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                              ),
                              Positioned(
                                left: MediaQuery.of(context).size.width * 0.5,
                                child: SvgPicture.asset(
                                  ImageResources
                                      .webSectionOne, // Path to your SVG file
                                  fit: BoxFit.contain,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  height:
                                      MediaQuery.of(context).size.width * 0.2,
                                ),
                              ),
                              Positioned(
                                left: MediaQuery.of(context).size.width * 0.15,
                                top: MediaQuery.of(context).size.height * 0.1,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '1.',
                                        style: GoogleFonts.lato(
                                          color: const Color(0xff718096),
                                          letterSpacing: 1.26,
                                          fontSize: 100.dp,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '  Erstellen dein Lebenslauf',
                                        style: GoogleFonts.lato(
                                          color: const Color(0xff718096),
                                          letterSpacing: 1.26,
                                          fontSize: 24.dp,
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
                          margin: EdgeInsets.zero,
                          child: Stack(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                              ),
                              SineWaveBackground(
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                painter: SineWavePainter(),
                              ),
                              Positioned(
                                left: MediaQuery.of(context).size.width * 0.59,
                                top: MediaQuery.of(context).size.width * 0.13,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '2.',
                                        style: GoogleFonts.lato(
                                          color: const Color(0xff718096),
                                          letterSpacing: 1.26,
                                          fontSize: 100.dp,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '  Erstellen dein Lebenslauf',
                                        style: GoogleFonts.lato(
                                          color: const Color(0xff718096),
                                          letterSpacing: 1.26,
                                          fontSize: 24.dp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: MediaQuery.of(context).size.width * 0.25,
                                top: MediaQuery.of(context).size.width * 0.1,
                                child: SvgPicture.asset(
                                  ImageResources
                                      .webSectionTwo, // Path to your SVG file
                                  fit: BoxFit.fill,
                                  width:
                                      MediaQuery.of(context).size.width * 0.14,
                                  height:
                                      MediaQuery.of(context).size.width * 0.14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.zero,
                          padding: EdgeInsets.zero,
                          child: Stack(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 1,
                                height:
                                    MediaQuery.of(context).size.height * 0.7,
                              ),
                              Positioned(
                                left: MediaQuery.of(context).size.width * 0.20,
                                top: MediaQuery.of(context).size.width * 0.1,
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  height:
                                      MediaQuery.of(context).size.width * 0.2,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffF7FAFC),
                                    borderRadius: BorderRadius.circular(
                                        MediaQuery.of(context).size.width *
                                            0.2 /
                                            2),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: MediaQuery.of(context).size.width * 0.25,
                                top: MediaQuery.of(context).size.width * 0.1,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '3.',
                                        style: GoogleFonts.lato(
                                          color: const Color(0xff718096),
                                          letterSpacing: 1.26,
                                          fontSize: 100.dp,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '  Erstellen dein Lebenslauf',
                                        style: GoogleFonts.lato(
                                          color: const Color(0xff718096),
                                          letterSpacing: 1.26,
                                          fontSize: 24.dp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: MediaQuery.of(context).size.width * 0.6,
                                top: MediaQuery.of(context).size.width * 0.1,
                                child: SvgPicture.asset(
                                  ImageResources
                                      .webSectionThree, // Path to your SVG file

                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.18,
                      top: MediaQuery.of(context).size.width * 0.15,
                      child: SvgPicture.asset(
                        ImageResources.upArrow, // Path to your SVG file
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.3,
                      top: MediaQuery.of(context).size.width * 0.52,
                      child: SvgPicture.asset(
                        ImageResources.downArrow, // Path to your SVG file
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
