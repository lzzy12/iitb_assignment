import 'dart:ui';

import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final child = Image.asset(
      "assets/removed.png",
    );
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 210, 213, 218),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      padding: const EdgeInsets.all(15),
      child: Container(
          padding: EdgeInsets.zero,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)),
              boxShadow: [
                BoxShadow(color: Colors.white, blurRadius: 10, spreadRadius: 10)
              ]),
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
                        colorFilter: const ColorFilter.mode(
                            Colors.black, BlendMode.srcATop),
                        child: child,
                      ),
                    ),
                  ),
                ),
              ),
              child
            ],
          )),
    );
  }
}
