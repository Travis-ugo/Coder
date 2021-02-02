import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travis/models/data.dart';
import 'package:travis/models/project_data.dart';
import 'package:travis/utils/pallets.dart';
import 'package:travis/utils/recent.dart';

import 'menu.dart';

class Project extends StatefulWidget {
  @override
  _ProjectRiriState createState() => _ProjectRiriState();
}

class _ProjectRiriState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (isColored ? Color(0xFFf6f6f6) : Color(0xFF1F1F1F)),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
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
                  padding: const EdgeInsets.only(top: 60, bottom: 10),
                  child: Text(
                    'WORK.',
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
                            fontWeight: FontWeight.w500,
                            color: (isColored
                                ? Color(0xFF3D3D3D)
                                : Color(0xFFf6f6f6)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 5,
                    ),
                    Desktop(
                      love: travis,
                      title: travis.title,
                    ),
                    Desktop(
                      love: world,
                      title: world.title,
                    ),
                    Desktop(
                      love: soccer,
                      title: soccer.title,
                    ),
                    Desktop(
                      love: telegram,
                      title: telegram.title,
                    ),
                    Desktop(
                      love: telegram,
                      title: telegram.title,
                    ),
                    Desktop(
                      love: telegram,
                      title: telegram.title,
                    ),
                    SizedBox(height: 100),
                    DesktopPin(),
                  ],
                ),
                // ),
              ],
            ),
          ),
          Menu(),
        ],
      ),
    );
  }
}
