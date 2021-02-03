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
                        SizedBox(height: 60),
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('assets/black..jpg'),
                          radius: 90,
                        ),
                        SizedBox(height: 70),
                        Text(
                          "Hi, i'm Travis Okonicha",
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              letterSpacing: 0.8,
                              color: (isColored
                                  ? Color(0xFF3F3F3F)
                                  : Color(0xFFf6f6f6)),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          '\ni design and build beautiful mobile and desktop user friendly aplications with perfection',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 12,
                              letterSpacing: 0.9,
                              color: (isColored
                                  ? Color(0xFF3F3F3F)
                                  : Color(0xFFf6f6f6)),
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        MyIcon(),
                        SizedBox(height: 50),
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
                                  : Color(0xFFf6f6f6))
                              .withOpacity(0.3),
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
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          'Progresive software developer specialize in creating beatiful UI and fast mobile, desktop applications',
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              color: (isColored
                                  ? Color(0xFF2E2E2E)
                                  : Color(0xFFf6f6f6)),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                              fontSize: 16,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Text(
                          'with progressing skills, i design and build awesome user friendly applications that run with speed  as well as PWA web applications',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              color: (isColored
                                  ? Color(0xFF303030)
                                  : Color(0xFFf6f6f6)),
                              fontWeight: FontWeight.w100,
                              letterSpacing: 0.3,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 150),
                      RecentWork(),
                      SizedBox(height: 35),
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
