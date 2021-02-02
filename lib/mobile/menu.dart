import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travis/utils/pallets.dart';
import 'package:travis/utils/recent.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileMenu extends StatefulWidget {
  @override
  _MenuMobileState createState() => _MenuMobileState();
}

class _MenuMobileState extends State<MobileMenu> {
  void open() {
    setState(() {
      height = height == 0.0 ? MediaQuery.of(context).size.height - 50 : 0.0;
      suplus = suplus == 0 ? 0 : 0;
    });
  }

  PageController pageController = PageController();
  int currentIndex = 0;
  double height = 0;
  double suplus = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () async {
                  await launch(Uri.parse(
                          'https://docs.google.com/document/d/1nKMbH01EI-gC5ubz_brdXwkJOOK2nMLLmQCe8rGzDf8/edit?usp=sharing')
                      .toString());
                },
                child: Text(
                  'Resume',
                  style: GoogleFonts.varelaRound(
                    textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1,
                      color:
                          (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  CupertinoIcons.equal,
                  size: 26,
                  color: (isColored ? Color(0xFF303030) : Color(0xFFF3F3F3)),
                ),
                onPressed: () {
                  open();
                },
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Center(
            child: AnimatedContainer(
              height: height,
              width: MediaQuery.of(context).size.width - 50,
              color: (isColored ? Color(0xFFECECEC) : Color(0xFF555555)),
              duration: Duration(milliseconds: 250),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        mouseCursor: SystemMouseCursors.click,
                        icon: Icon(
                          CupertinoIcons.xmark,
                          size: 25,
                          color: (isColored
                              ? Color(0xFF303030)
                              : Color(0xFFF3F3F3)),
                        ),
                        onPressed: () {
                          open();
                        },
                      ),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                      open();
                    },
                    child: Text(
                      'WHO',
                      style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                          color: (isColored
                              ? Color(0xFF303030)
                              : Color(0xFFF3F3F3)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/projects');
                      open();
                    },
                    child: Text(
                      'WORK',
                      style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                          color: (isColored
                              ? Color(0xFF303030)
                              : Color(0xFFF3F3F3)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/service');
                      open();
                    },
                    child: Text(
                      'WHAT',
                      style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                          color: (isColored
                              ? Color(0xFF303030)
                              : Color(0xFFF3F3F3)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Container(
                    height:
                        MediaQuery.of(context).size.height / 3 - 10 - suplus,
                    width: MediaQuery.of(context).size.width,
                    color: (isColored ? Color(0xFFC5C5C5) : Color(0xFF363636)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'GET IN TOUCH',
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1,
                              color: (isColored
                                  ? Color(0xFF303030)
                                  : Color(0xFFF3F3F3)),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        FooterIcon(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
