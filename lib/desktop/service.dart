import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travis/desktop/menu.dart';
import 'package:travis/utils/pallets.dart';

import 'footer.dart';

class ServiceDesktop extends StatefulWidget {
  @override
  _ServiceDesktopState createState() => _ServiceDesktopState();
}

class _ServiceDesktopState extends State<ServiceDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (isColored ? Color(0xFFf6f6f6) : Color(0xFF1F1F1F)),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(65.0),
                  child: Center(
                    child: IconButton(
                      icon: (isColored ? moon : sun),
                      onPressed: () {
                        setState(() {
                          isColored = isColored == true ? false : true;
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100, bottom: 10),
                  child: Text(
                    'WHAT.',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 5.5,
                        fontWeight: FontWeight.w500,
                        color:
                            (isColored ? Color(0xFF3D3D3D) : Color(0xFFf6f6f6)),
                      ),
                    ),
                  ),
                ),
                Icon(
                  CupertinoIcons.chevron_compact_down,
                  size: 65,
                  color: (isColored ? Color(0xFF3D3D3D) : Color(0xFFf6f6f6)),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 3),
                Text(
                  'CREATIVE RASTER',
                  style: GoogleFonts.varelaRound(
                    textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color:
                          (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                SizedBox(height: 70),
                Text(
                  'Consistency is all i need to Hard work\nwill do the magic and Practice',
                  style: GoogleFonts.varelaRound(
                    textStyle: TextStyle(
                      color:
                          (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                      fontSize: 32,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Consistency is all i need to succed Hard work and Practice will do the magic\nHard work and Practice  succed Hard work and Practice will\n succed Hard work and Practice will',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.varelaRound(
                    textStyle: TextStyle(
                      color:
                          (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.3,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 2),
                Text(
                  'SERVICES',
                  style: GoogleFonts.varelaRound(
                    textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color:
                          (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5,
                              fontSize: 42,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Mobile Applications',
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: (isColored
                                  ? Color(0xFF303030)
                                  : Color(0xFFf6f6f6)),
                            ),
                          ),
                        ),
                        Text(
                          'Web Development',
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: (isColored
                                  ? Color(0xFF303030)
                                  : Color(0xFFf6f6f6)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 130),
                    Column(
                      children: [
                        Text(
                          'Design',
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              color: (isColored
                                  ? Color(0xFF303030)
                                  : Color(0xFFf6f6f6)),
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5,
                              fontSize: 42,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'UI Design',
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
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
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: (isColored
                                  ? Color(0xFF303030)
                                  : Color(0xFFf6f6f6)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 130),
                    Column(
                      children: [
                        Text(
                          'Deploy',
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              color: (isColored
                                  ? Color(0xFF303030)
                                  : Color(0xFFf6f6f6)),
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5,
                              fontSize: 42,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'FireBase',
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
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
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
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
                SizedBox(height: MediaQuery.of(context).size.height / 3),
                DesktopFooter()
              ],
            ),
          ),
          Menu(),
        ],
      ),
    );
  }
}
