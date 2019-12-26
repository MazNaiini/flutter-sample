import 'package:flutter/material.dart';

class ClippedRoundedCornerLogo extends StatelessWidget {

ClippedRoundedCornerLogo({ Key key, 
  this.logoPath, 
  this.width,
  this.height,
  this.padding,
  this.cornerRadius }) : super(key: key);

final String logoPath;
final double width;
final double height;
final double padding;
final double cornerRadius;

@override
  Widget build(BuildContext context) {
    return ClipRRect(
            borderRadius: BorderRadius.circular(cornerRadius ?? 0),
            child: Container(
              padding: new EdgeInsets.all(padding ?? 0),
              color: Colors.white,
              child: Image.asset(logoPath, 
                height: height ?? 150, 
                width: width ?? 150
                )
              ) 
            );
  }
}