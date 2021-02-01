import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travis/mobile/menu.dart';
import 'package:travis/utils/pallets.dart';
import 'package:travis/utils/recent.dart';

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: (isColored ? Color(0xFFf6f6f6) : Color(0xFF0B0D0F)),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 18),
                        IconButton(
                          icon: (isColored ? mMoon : mSun),
                          onPressed: () {
                            setState(() {
                              isColored = isColored == true ? false : true;
                            });
                          },
                        ),
                        SizedBox(height: 70),
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('assets/black..jpg'),
                          radius: 95,
                        ),
                        SizedBox(height: 70),
                        Text(
                          "Hi, i'm Travis Okonicha",
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 26,
                              letterSpacing: 1.2,
                              color: (isColored
                                  ? Color(0xFF303030)
                                  : Color(0xFFf6f6f6)),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          '''i design and build beautiful mobile and desktop for users design and build beautiful''',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 14,
                              letterSpacing: 0.9,
                              color: (isColored
                                  ? Color(0xFF303030)
                                  : Color(0xFFf6f6f6)),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        MyIcon(),
                        SizedBox(height: 70),
                        Text(
                          'Travis-ugo',
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              color: (isColored
                                  ? Color(0xFFD3D3D3)
                                  : Color(0xFF3B3B3B)),
                              letterSpacing: 0.5,
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                        SizedBox(height: 60),
                        Icon(
                          CupertinoIcons.chevron_compact_down,
                          size: 45,
                          color: (isColored
                              ? Color(0xFF3D3D3D)
                              : Color(0xFFf6f6f6)),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 200),
                      Text(
                        'YOUNG AND CREATIVE',
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            color: (isColored
                                ? Color(0xFF303030)
                                : Color(0xFFf6f6f6)),
                            letterSpacing: 0.5,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      Text(
                        'Consistency is all i need to Hard work\nwill do the magic and Practice',
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            color: (isColored
                                ? Color(0xFF303030)
                                : Color(0xFFf6f6f6)),
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.5,
                            fontSize: 18,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Consistency is all i need to succed\nHard work and Practice will do the magic\nHard work and Practice ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            color: (isColored
                                ? Color(0xFF303030)
                                : Color(0xFFf6f6f6)),
                            fontWeight: FontWeight.w100,
                            letterSpacing: 0.3,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(height: 150),
                      RecentWork(),
                      SizedBox(height: 50),
                      MobilePin(),
                    ],
                  ),
                ],
              ),
            ),
            MobileMenu(),
          ],
        ),
      ),
    );
  }
}
