import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tomisha/utils/image_resources.dart';
import 'package:tomisha/widgets/app_bar_widget.dart';

class LoginDesktop extends StatelessWidget {
  const LoginDesktop({super.key});

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
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Text(
                                'Deine Job\n website',
                                textAlign: TextAlign.start,
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
                            Container(
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
                                  transform: GradientRotation(95 *
                                      3.1415927 /
                                      180), // Convert degrees to radians
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
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 370,
                          width: double.infinity,
                          margin: EdgeInsets.zero,
                          padding: EdgeInsets.zero,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
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
                          padding: EdgeInsets.only(right: 40, bottom: 10),
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.4,
                      top: MediaQuery.of(context).size.width * 0.2,
                      child: SvgPicture.asset(
                        ImageResources.upArrow, // Path to your SVG file
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
