import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travis/utils/pallets.dart';
import 'package:travis/utils/recent.dart';

import 'home.dart';

class Menu extends StatefulWidget {
  @override
  _MenuRespState createState() => _MenuRespState();
}

class _MenuRespState extends State<Menu> {
  void open() {
    setState(() {
      height = height == 0.0 ? MediaQuery.of(context).size.height - 70 : 0.0;
    });
  }

  double height = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Travis-ugo',
                  style: GoogleFonts.varelaRound(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color:
                          (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 12),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Text(
                        'WHO',
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            color: (isColored
                                ? Color(0xFF303030)
                                : Color(0xFFf6f6f6)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.height / 20),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/projects');
                      },
                      child: Text(
                        'WORK',
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            color: (isColored
                                ? Color(0xFF303030)
                                : Color(0xFFf6f6f6)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.height / 20),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/service');
                      },
                      child: Text(
                        'WHAT',
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            color: (isColored
                                ? Color(0xFF303030)
                                : Color(0xFFf6f6f6)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                FlatButton(
                  onPressed: () => open(),
                  child: Text(
                    'CONTACT',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        color:
                            (isColored ? Color(0xFF303030) : Color(0xFFf6f6f6)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Center(
              child: AnimatedContainer(
                height: height,
                width: MediaQuery.of(context).size.width - 70,
                color: Colors.white,
                duration: Duration(milliseconds: 250),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
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
                              size: 45,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              open();
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 50),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Resume',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        'Contact Me',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Center(
                        child: Text('Thrinitee@gmail.com', style: largeText),
                      ),
                      SizedBox(height: 7),
                      MyIcon()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
        //  ),
      ),
    );
  }
}
