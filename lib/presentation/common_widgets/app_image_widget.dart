import 'package:echoapp/core/constants/app_assets.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class AppImageWidget extends StatelessWidget {
  const AppImageWidget(
      {super.key,
      this.path,
      this.radius = 0,
      this.boxFit = BoxFit.cover,
      this.height,
      this.width});
  final String? path;
  final double? radius;
  final BoxFit? boxFit;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: height,
      width: width ?? height,
      child: InteractiveViewer(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius!),
          child: FancyShimmerImage(
              boxFit: boxFit!,
              alignment: Alignment.center,

              // placeholder: (context, loadingProgress) {
              //   return Center(child: AppLoaderWidget());
              // },
              // useOldImageOnUrlChange: true,
              // errorWidget: (context, url, error) => Image.asset(
              //       AppAssets.images.bitmap,
              //       fit: BoxFit.cover,
              //     ),
              errorWidget: const Icon(Icons.error),
              imageUrl: path ?? ''),
        ),
      ),
    );
  }
}
