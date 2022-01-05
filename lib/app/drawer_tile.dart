import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:iitb_assignment/app/app_colors.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final child = Image.asset(
      "assets/removed.png",
    );
    return Neumorphic(
      style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
          color: AppColors.bgColor,
          depth: -10,
          lightSource: LightSource.topLeft),
      child: Stack(
        children: <Widget>[
          Transform.translate(
            offset: const Offset(10, 10),
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.transparent,
                    width: 0,
                  ),
                ),
                child: Opacity(
                  opacity: 0.6,
                  child: ColorFiltered(
                    colorFilter:
                        const ColorFilter.mode(Colors.black, BlendMode.srcATop),
                    child: child,
                  ),
                ),
              ),
            ),
          ),
          child
        ],
      ),
    );
  }
}
