import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responcive/screen_size.dart';
import 'package:responcive/sizing_infermation.dart';

class BaseWidget extends StatelessWidget {
  

  
  final Widget Function(
      BuildContext context, SizingInformation? sizingInformation)? builder;
   BaseWidget({Key? key, this.builder}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(builder: (context, boxSizing) {

      var sizingInformation = SizingInformation(
        orientation: mediaQuery.orientation,
        deviceType: getDeviceType(mediaQuery),
        screenSize: mediaQuery.size,
        localWidgetSize: Size(boxSizing.maxWidth, boxSizing.maxHeight),
      );

      return builder!(context, sizingInformation);
    });
  }
  
}

extension ScaleFactor on num {
  double  w(BoxConstraints constrains) {

      return this * constrains.maxWidth;
   
  }
  // String capitalize() {
  //   return '${this[0].toUpperCase()}${substring(1)}';
  // }
}
// class ScreenScaleFactor {
//   ScreenScaleFactor._();
//   static final ScreenScaleFactor _instance = ScreenScaleFactor._();
//   factory ScreenScaleFactor() => _instance;

//   static late double scale;
//   static late MediaQueryData _media;

//   static void initialize() {
//     _media = MediaQueryData.fromView(window);
//     if (kIsWeb) {
//       scale = _media.size.width / _media.size.height;
//     } else {
//       scale = _media.size.height / _media.size.width;
//     }
//   }

//   static double get screenHeight => _media.size.height;
//   static double get screenWidth => _media.size.width;
// }

// extension ScaleFactor on num {
//   double get toFont {
//     if (kIsWeb) {
//       return this * ScreenScaleFactor.scale * 0.5;
//     } else {
//       return this * ScreenScaleFactor.scale * 0.45;
//     }
//   }

//   double get toHeight {
//     if (kIsWeb) {
//       return this * ScreenScaleFactor.scale * 0.5;
//     } else {
//       return this * ScreenScaleFactor.scale * 0.45;
//     }
//   }

//   double get toWidth {
//     if (kIsWeb) {
//       return this * ScreenScaleFactor.scale * 0.5;
//     } else {
//       return this * ScreenScaleFactor.scale * 0.45;
//     }
//   }
// }

