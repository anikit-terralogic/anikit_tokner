/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/arrow-right-ic.png
  AssetGenImage get arrowRightIc => const AssetGenImage('assets/images/arrow-right-ic.png');

  /// File path: assets/images/background_image_tokens.png
  AssetGenImage get backgroundImageTokens => const AssetGenImage('assets/images/background_image_tokens.png');

  /// File path: assets/images/backgroundimages.png
  AssetGenImage get backgroundimages => const AssetGenImage('assets/images/backgroundimages.png');

  /// File path: assets/images/chevron-right-ic.png
  AssetGenImage get chevronRightIc => const AssetGenImage('assets/images/chevron-right-ic.png');

  /// File path: assets/images/chevron-right.png
  AssetGenImage get chevronRight => const AssetGenImage('assets/images/chevron-right.png');

  /// File path: assets/images/content.png
  AssetGenImage get content => const AssetGenImage('assets/images/content.png');

  /// File path: assets/images/creators.png
  AssetGenImage get creators => const AssetGenImage('assets/images/creators.png');

  /// File path: assets/images/curve_image.png
  AssetGenImage get curveImage => const AssetGenImage('assets/images/curve_image.png');

  /// File path: assets/images/ellipse.png
  AssetGenImage get ellipse => const AssetGenImage('assets/images/ellipse.png');

  /// File path: assets/images/facebook.png
  AssetGenImage get facebook => const AssetGenImage('assets/images/facebook.png');

  /// File path: assets/images/github.png
  AssetGenImage get github => const AssetGenImage('assets/images/github.png');

  /// File path: assets/images/holder.png
  AssetGenImage get holder => const AssetGenImage('assets/images/holder.png');

  /// File path: assets/images/holdingphone.png
  AssetGenImage get holdingphone => const AssetGenImage('assets/images/holdingphone.png');

  /// File path: assets/images/ic_background_tokens.png
  AssetGenImage get icBackgroundTokens => const AssetGenImage('assets/images/ic_background_tokens.png');

  /// File path: assets/images/image.png
  AssetGenImage get image => const AssetGenImage('assets/images/image.png');

  /// File path: assets/images/image_background.png
  AssetGenImage get imageBackground => const AssetGenImage('assets/images/image_background.png');

  /// File path: assets/images/instagram.png
  AssetGenImage get instagram => const AssetGenImage('assets/images/instagram.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/medium.png
  AssetGenImage get medium => const AssetGenImage('assets/images/medium.png');

  /// File path: assets/images/menu.png
  AssetGenImage get menu => const AssetGenImage('assets/images/menu.png');

  /// File path: assets/images/one_background.png
  AssetGenImage get oneBackground => const AssetGenImage('assets/images/one_background.png');

  /// File path: assets/images/quotation.png
  AssetGenImage get quotation => const AssetGenImage('assets/images/quotation.png');

  /// File path: assets/images/reddit.png
  AssetGenImage get reddit => const AssetGenImage('assets/images/reddit.png');

  /// File path: assets/images/three_background.png
  AssetGenImage get threeBackground => const AssetGenImage('assets/images/three_background.png');

  /// File path: assets/images/twitter.png
  AssetGenImage get twitter => const AssetGenImage('assets/images/twitter.png');

  /// File path: assets/images/two_background.png
  AssetGenImage get twoBackground => const AssetGenImage('assets/images/two_background.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        arrowRightIc,
        backgroundImageTokens,
        backgroundimages,
        chevronRightIc,
        chevronRight,
        content,
        creators,
        curveImage,
        ellipse,
        facebook,
        github,
        holder,
        holdingphone,
        icBackgroundTokens,
        image,
        imageBackground,
        instagram,
        logo,
        medium,
        menu,
        oneBackground,
        quotation,
        reddit,
        threeBackground,
        twitter,
        twoBackground
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
