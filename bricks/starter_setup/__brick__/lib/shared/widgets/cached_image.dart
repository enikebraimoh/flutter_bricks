import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../theme/colors.dart';

class SelarCachedImage extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? width;
  final BoxFit boxFit;
  final double borderRadius;
  final Widget? placeholder;
  final Widget? errorWidget;

  const SelarCachedImage({
    required this.imageUrl,
    this.height,
    this.width,
    this.boxFit = BoxFit.cover,
    this.borderRadius = 0,
    this.placeholder,
    this.errorWidget,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        height: height,
        width: width,
        fit: boxFit,
        placeholder: (context, url) => placeholder ?? _buildPlaceholder(),
        errorWidget:
            (context, url, error) => errorWidget ?? _buildErrorWidget(),
      ),
    );
  }

  Widget _buildPlaceholder() {
    return Container(
      height: height,
      width: width,
      color: AppColors.grey03,
      child: Center(
        child: SizedBox(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
          ),
        ),
      ),
    );
  }

  Widget _buildErrorWidget() {
    return Container(
      height: height,
      width: width,
      color: AppColors.grey03,
      child: Center(
        child: Icon(Icons.error_outline, color: AppColors.error, size: 24),
      ),
    );
  }
}
