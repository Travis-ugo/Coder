import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travis/models/data.dart';
import 'package:travis/models/project_data.dart';
import 'package:travis/utils/pallets.dart';
import 'package:travis/utils/recent.dart';

import 'menu.dart';

class MobileProject extends StatefulWidget {
  @override
  _MobileProjectState createState() => _MobileProjectState();
}

class _MobileProjectState extends State<MobileProject> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: (isColored ? Color(0xFFf6f6f6) : Color(0xFF0B0D0F)),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height - 50,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
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
                          'Work.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.varelaRound(
                            textStyle: TextStyle(
                              fontSize: 42,
                              color: (isColored
                                  ? Color(0xFF303030)
                                  : Color(0xFFf6f6f6)),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Icon(
                            CupertinoIcons.chevron_compact_down,
                            size: 45,
                            color: (isColored
                                ? Color(0xFF3D3D3D)
                                : Color(0xFFf6f6f6)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 200),
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
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: MobileMenu(),
            ),
          ],
        ),
      ),
    );
  }
}
