import 'package:flutter/material.dart';

class SetImageIcons{

String iconsPath = "assets/images/";
  Image setImageIcon({String? imgPath,double? width,double? height,color}){

    return Image(image: AssetImage("$iconsPath$imgPath"),width: width,height: height,color: color,);
  }
}
class SetBottomBarIcon{

String iconsPath = "assets/icons/";
  Image setImageIcon({String? imgPath,double? width,double? height,color}){

    return Image(image: AssetImage("$iconsPath$imgPath"),width: width,height: height,color: color,);
  }
}