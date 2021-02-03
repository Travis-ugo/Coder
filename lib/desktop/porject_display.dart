import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travis/utils/pallets.dart';
import 'package:travis/utils/recent.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map data = {};
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    print(data);

    return Scaffold(
      backgroundColor: (isColored ? Color(0xFFe7eeed) : Color(0xFF1F1F1F)),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 150,
                    vertical: 150,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Year',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: (isColored
                                      ? Color(0xFF4B4B4B)
                                      : Color(0xFFf6f6f6)),
                                ),
                              ),
                              Text(
                                data['year'],
                                style: GoogleFonts.varelaRound(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w100,
                                    color: (isColored
                                        ? Color(0xFF4B4B4B)
                                        : Color(0xFFf6f6f6)),
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 50),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tools',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: (isColored
                                      ? Color(0xFF4B4B4B)
                                      : Color(0xFFf6f6f6)),
                                ),
                              ),
                              Text(
                                data['tool'],
                                style: GoogleFonts.varelaRound(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w100,
                                    color: (isColored
                                        ? Color(0xFF4B4B4B)
                                        : Color(0xFFf6f6f6)),
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(),
                      Text(
                        data['title'],
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 90,
                            letterSpacing: 0.5,
                            color: Color(0xFF3D68DF),
                          ),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 20),
                      Text(
                        data['subtitle'],
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            fontSize: 20,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w400,
                            color: (isColored
                                ? Color(0xFF4B4B4B)
                                : Color(0xFFf6f6f6)),
                          ),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 10),
                      Text(
                        data['info'],
                        style: GoogleFonts.varelaRound(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w100,
                            color: (isColored
                                ? Color(0xFF4B4B4B)
                                : Color(0xFFf6f6f6)),
                            letterSpacing: 0.5,
                          ),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyIcon(),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // this field should contain only png
                    // images else it will fuck with the design
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    FeatherIcons.github,
                    size: 20,
                    color: (isColored ? Color(0xFF4B4B4B) : Color(0xFFf6f6f6)),
                  ),
                  onPressed: () async {
                    await launch(Uri.parse(data['github']).toString());
                  },
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    'BACK TO PROJETS',
                    style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color:
                            (isColored ? Color(0xFF4B4B4B) : Color(0xFFf6f6f6)),
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
