import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travis/desktop/menu.dart';
import 'package:travis/models/data.dart';
import 'package:travis/models/project_data.dart';
import 'package:travis/utils/pallets.dart';
import 'package:travis/utils/recent.dart';

class TabProject extends StatefulWidget {
  @override
  _ProjectsMobileDesignState createState() => _ProjectsMobileDesignState();
}

class _ProjectsMobileDesignState extends State<TabProject> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: (isColored ? Color(0xFFf6f6f6) : Color(0xFF303030)),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height / 2 - 50),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Work.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                          fontSize: 80,
                          color: (isColored
                              ? Color(0xFF303030)
                              : Color(0xFFf6f6f6)),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  //  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 2),

                  Column(
                    children: [
                      SizedBox(height: 26),
                      Center(
                        child: Text(
                          'SELECT PROJECT',
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: (isColored
                                  ? Color(0xFF303030)
                                  : Color(0xFFf6f6f6)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 8,
                      ),
                      MobileData(
                        love: travis,
                        title: travis.title,
                      ),
                      MobileData(
                        love: world,
                        title: world.title,
                      ),
                      MobileData(
                        love: soccer,
                        title: soccer.title,
                      ),
                      MobileData(
                        love: telegram,
                        title: telegram.title,
                      ),
                      MobileData(
                        love: telegram,
                        title: telegram.title,
                      ),
                      MobileData(
                        love: telegram,
                        title: telegram.title,
                      ),
                      SizedBox(height: 100),
                      MobilePin(),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 25,
              left: MediaQuery.of(context).size.width / 2.5,
              child: IconButton(
                icon: (isColored ? moon : sun),
                onPressed: () {
                  setState(() {
                    isColored = isColored == true ? false : true;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Menu(),
            ),
          ],
        ),
      ),
    );
  }
}
