import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travis/mobile/menu.dart';
import 'package:travis/utils/pallets.dart';
import 'package:travis/utils/recent.dart';
import 'footer.dart';

class ServiceMobile extends StatefulWidget {
  @override
  _ServiceMobileState createState() => _ServiceMobileState();
}

class _ServiceMobileState extends State<ServiceMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: (isColored ? Color(0xFFf6f6f6) : Color(0xFF0B0D0F)),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height - 50,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: IconButton(
                            icon: (isColored ? mMoon : mSun),
                            onPressed: () {
                              setState(() {
                                isColored = isColored == true ? false : true;
                              });
                            },
                          ),
                        ),
                        Text(
                          'WHAT.',
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              color: (isColored
                                  ? Color(0xFF303030)
                                  : Color(0xFFf6f6f6)),
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5,
                              fontSize: 42,
                            ),
                          ),
                        ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 180),
                        Text(
                          'CREATIVE RASTER',
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: (isColored
                                  ? Color(0xFF303030)
                                  : Color(0xFFf6f6f6)),
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 80),
                        Text(
                          'Consistency is all i need to Hard work will do the magic and Practice',
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              color: (isColored
                                  ? Color(0xFF303030)
                                  : Color(0xFFf6f6f6)),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                              fontSize: 23,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Consistency is all i need to succed Hard work and Practice will do the magic Hard work and Practice  succed',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w100,
                              letterSpacing: 0.3,
                              color: (isColored
                                  ? Color(0xFF303030)
                                  : Color(0xFFf6f6f6)),
                            ),
                          ),
                        ),
                        SizedBox(height: 150),
                        Text(
                          'SERVICES',
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.0,
                              color: (isColored
                                  ? Color(0xFF303030)
                                  : Color(0xFFf6f6f6)),
                            ),
                          ),
                        ),
                        SizedBox(height: 70),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Develope',
                                  style: GoogleFonts.varelaRound(
                                    textStyle: TextStyle(
                                      color: (isColored
                                          ? Color(0xFF303030)
                                          : Color(0xFFf6f6f6)),
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.5,
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Mobile Apps',
                                  style: GoogleFonts.varelaRound(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                      color: (isColored
                                          ? Color(0xFF303030)
                                          : Color(0xFFf6f6f6)),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Web Dev',
                                  style: GoogleFonts.varelaRound(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                      color: (isColored
                                          ? Color(0xFF303030)
                                          : Color(0xFFf6f6f6)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 50),
                            Column(
                              children: [
                                Text(
                                  'Design',
                                  style: GoogleFonts.varelaRound(
                                    textStyle: TextStyle(
                                      color: (isColored
                                          ? Color(0xFF303030)
                                          : Color(0xFFf6f6f6)),
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.5,
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'UI Design',
                                  style: GoogleFonts.varelaRound(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                      color: (isColored
                                          ? Color(0xFF303030)
                                          : Color(0xFFf6f6f6)),
                                    ),
                                  ),
                                ),
                                Text(
                                  'UX Design',
                                  style: GoogleFonts.varelaRound(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                      color: (isColored
                                          ? Color(0xFF303030)
                                          : Color(0xFFf6f6f6)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 50),
                            Column(
                              children: [
                                Text(
                                  'Deploy',
                                  style: GoogleFonts.varelaRound(
                                    textStyle: TextStyle(
                                      color: (isColored
                                          ? Color(0xFF303030)
                                          : Color(0xFFf6f6f6)),
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.5,
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  'FireBase',
                                  style: GoogleFonts.varelaRound(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                      color: (isColored
                                          ? Color(0xFF303030)
                                          : Color(0xFFf6f6f6)),
                                    ),
                                  ),
                                ),
                                Text(
                                  'AWS',
                                  style: GoogleFonts.varelaRound(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                      color: (isColored
                                          ? Color(0xFF303030)
                                          : Color(0xFFf6f6f6)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 14),
                      ],
                    ),
                  ),
                  MobileFooter(),
                  MobilePin(),
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
