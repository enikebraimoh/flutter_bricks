import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final double? borderRadius;
  final BoxDecoration decoration;

  const ShimmerWidget.rectangle({
    Key? key,
    this.width = double.infinity,
    this.height,
    this.borderRadius = 0,
  }) : decoration = const BoxDecoration(shape: BoxShape.rectangle),
       super(key: key);

  const ShimmerWidget.circle({
    Key? key,
    this.width = double.infinity,
    this.height,
    this.borderRadius = 0,
  }) : decoration = const BoxDecoration(shape: BoxShape.circle),
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color(0xffEEEFF2),
      highlightColor: const Color(0xffEEEFF2).withOpacity(0.4),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius!),
          color: Colors.grey[400],
        ),
      ),
    );
  }
}

class TextShimmerWidget extends StatelessWidget {
  final TextStyle? style;
  const TextShimmerWidget({this.style});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: style?.color ?? const Color(0xffEEEFF2),
      highlightColor: const Color(0xffEEEFF2).withOpacity(0.4),
      child: Text('#.##', style: style),
    );
  }
}
