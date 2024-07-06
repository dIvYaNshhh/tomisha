import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

enum SegmentSelection { arbeitnehmer, arbeitgeber, temporarburo }

class SegmentTabBar extends StatefulWidget {
  const SegmentTabBar({super.key});

  @override
  State<SegmentTabBar> createState() => _SegmentTabBarState();
}

class _SegmentTabBarState extends State<SegmentTabBar> {
  SegmentSelection selection = SegmentSelection.arbeitnehmer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: SegmentedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return const Color(0xFF81E6D9);
              }
              return Colors.white;
            },
          ),
          side: MaterialStateProperty.resolveWith<BorderSide>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return const BorderSide(
                  color: Color(0xFF81E6D9),
                  width: 1.0, // Border width
                );
              }
              return const BorderSide(
                color: Color(0xffCBD5E0), // Border color
                width: 1.0, // Border width
              );
            },
          ),
          shape: MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
            (Set<MaterialState> states) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0), // Rounded corners
              );
            },
          ),
        ),
        segments: [
          ButtonSegment(
            value: SegmentSelection.arbeitnehmer,
            label: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Arbeitnehmer',
                style: GoogleFonts.lato(
                  color: selection == SegmentSelection.arbeitnehmer
                      ? Colors.white
                      : const Color(0xff319795),
                  letterSpacing: 0.84.dp,
                  fontSize: 14.dp,
                ),
              ),
            ),
          ),
          ButtonSegment(
            value: SegmentSelection.arbeitgeber,
            label: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Arbeitgeber',
                style: GoogleFonts.lato(
                  color: selection == SegmentSelection.arbeitgeber
                      ? Colors.white
                      : const Color(0xff319795),
                  letterSpacing: 0.84.dp,
                  fontSize: 14.dp,
                ),
              ),
            ),
          ),
          ButtonSegment(
            value: SegmentSelection.temporarburo,
            label: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Temporärbüro',
                style: GoogleFonts.lato(
                  color: selection == SegmentSelection.temporarburo
                      ? Colors.white
                      : const Color(0xff319795),
                  letterSpacing: 0.84.dp,
                  fontSize: 14.dp,
                ),
              ),
            ),
          )
        ],
        selected: <SegmentSelection>{selection},
        showSelectedIcon: false,
        onSelectionChanged: (Set<SegmentSelection> newSelection) {
          setState(() {
            selection = newSelection.first;
          });
        },
      ),
    );
  }
}
