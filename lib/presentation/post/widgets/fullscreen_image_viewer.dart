import 'package:echoapp/core/theme/app_colors.dart';
import 'package:echoapp/presentation/common_widgets/app_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FullscreenImageViewer extends StatefulWidget {
  final List<String> images;
  final int initialIndex;

  const FullscreenImageViewer(
      {super.key, required this.images, required this.initialIndex});

  @override
  State<FullscreenImageViewer> createState() => _FullscreenImageViewerState();
}

class _FullscreenImageViewerState extends State<FullscreenImageViewer> {
  PageController? pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.initialIndex);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        if (details.primaryDelta! > 20) {
          // If dragging down, close the viewer
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            PageView.builder(
              controller: pageController,
              itemCount: widget.images.length,
              itemBuilder: (context, index) {
                return Hero(
                  tag: widget.images[index],
                  child: AppImageWidget(
                    path: widget.images[index],
                    boxFit: BoxFit.contain,
                  ),
                );
              },
            ),
            Positioned(
                bottom: 250,
                right: 0,
                left: 0,
                child: Center(
                  child: SmoothPageIndicator(
                      effect: const WormEffect(
                          dotHeight: 12,
                          dotWidth: 12,
                          dotColor: AppColors.white),
                      controller: pageController!,
                      count: widget.images.length),
                )),
            Positioned(
                right: 20,
                top: 80,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.cancel_sharp,
                        size: 30, color: Colors.grey)))
          ],
        ),
      ),
    );
  }
}
