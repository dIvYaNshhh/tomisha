import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tomisha/utils/image_resources.dart';
import 'package:tomisha/widgets/wavy_baackground.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SineWaveBackground(
            width: double.infinity, // Fills the entire width
            height: MediaQuery.of(context).size.height * 0.3,
            painter: SineWavePainter(),
          ),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              ImageResources.mobileSectionOne, // Path to your SVG file
              fit: BoxFit.fill,
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
      ),
    );
  }
}
