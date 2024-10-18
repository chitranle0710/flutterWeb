import 'package:flutter/widgets.dart';
import 'image_builder.dart';

abstract class AppIcon {
  AppIcon._();

  static const String _assetPath = "icons/";

  static AppIconBuilder get iconShopping =>
      AppIconBuilder('${_assetPath}ic_logo.svg');
}

class AppIconBuilder {
  final String assetPath;

  AppIconBuilder(this.assetPath);

  Widget widget({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    Alignment alignment = Alignment.center,
    Color? color,
    BorderRadius? borderRadius,
    Widget? placeholder,
    String? errorImageUrl,
    int? memCacheHeight,
  }) {
    return ImageBuilder(
      assetPath,
      key: key,
      width: width,
      height: height,
      fit: fit,
      color: color,
      alignment: alignment,
      placeholder: placeholder,
      errorImageUrl: errorImageUrl,
      memCacheHeight: memCacheHeight,
    );
  }
}
