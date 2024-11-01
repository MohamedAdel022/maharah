import 'package:flutter/material.dart';
class ImageHelper{
  static Widget loadFromAsset(
      String imageFilePath, {
        double? width,
        double? height,
        BorderRadius? radius,
        BoxFit? fit,
        Color? tintColor,
        Alignment? alignment
      }){
    return ClipRRect(
      borderRadius: radius?? BorderRadius.zero,
      child: Image.asset(
        imageFilePath,
        width: width,
        height: height,
        fit: fit?? BoxFit.contain,
        color: tintColor,
        alignment: alignment?? Alignment.center,
      ),
    );
  }
  static Widget loadFromNetwork(
      String imageFilePath, {
        double? width,
        double? height,
        BorderRadius? radius,
        BoxFit? fit,
        Color? tintColor,
        Alignment? alignment
      }){
    return ClipRRect(
      borderRadius: radius?? BorderRadius.zero,
      child: Image.network(
        imageFilePath,
        width: width,
        height: height,
        fit: fit?? BoxFit.cover,
        color: tintColor,
        alignment: alignment?? Alignment.center,
        errorBuilder: (context, error, stackTrace) {
          return loadFromAsset('assets/images/hotel2.png',fit: fit);
        } ,
      ),
    );
  }
}