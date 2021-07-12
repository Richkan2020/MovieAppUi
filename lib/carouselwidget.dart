import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CarouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 250,
        width: 420,
        child: Carousel(
          images: [

            AssetImage('assets/images/jokerposter.jpg',),
            AssetImage('assets/images/aquiteplace.jpg',),
            AssetImage('assets/images/itposter.jpg',),
            AssetImage('assets/images/bwposter.jpg',),
            AssetImage('assets/images/spidermanposter.jpg',),

          ],
          showIndicator: true,
          borderRadius: false,
          moveIndicatorFromBottom: 180.0,
          noRadiusForIndicator: true,
          overlayShadow: true,
          overlayShadowColors: Color(0xff000f33),
          overlayShadowSize: 10,
          indicatorBgPadding: 6,
          dotBgColor: Color(0xff000f33),
          dotColor: Colors.white38,
          dotPosition: DotPosition.bottomCenter,
          dotSize: 5,
          dotIncreasedColor: Colors.red,

        )
    );
  }
}
