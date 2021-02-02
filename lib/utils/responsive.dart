import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:travis/desktop/home.dart';
import 'package:travis/desktop/porject_display.dart';
import 'package:travis/desktop/project.dart';
import 'package:travis/desktop/service.dart';
import 'package:travis/mobile/home.dart';
import 'package:travis/mobile/project.dart';
import 'package:travis/mobile/project_display.dart';
import 'package:travis/mobile/services.dart';
import 'package:travis/tab/home.dart';
import 'package:travis/tab/project.dart';
import 'package:travis/tab/service.dart';

class Response extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Mobile(),
      tablet: HomeTablet(),
      desktop: HomeDesktop(),
    );
  }
}

class Service extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ServiceMobile(),
      tablet: ServiceTab(),
      desktop: ServiceDesktop(),
    );
  }
}

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileProject(),
      tablet: TabProject(),
      desktop: Project(),
    );
  }
}

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileProjectDisplay(),
      //tablet:
      desktop: ProjectDisplay(),
    );
  }
}
