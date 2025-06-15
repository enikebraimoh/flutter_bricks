import 'package:flutter/material.dart';
import '../../theme/colors.dart';

class AppFilledButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color? bgColor;
  final Color? foreBgColor;
  final bool isLoading;

  const AppFilledButton({
    required this.onPressed,
    required this.text,
    this.isLoading = false,
    this.bgColor,
    this.foreBgColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor ?? Theme.of(context).primaryColor,
        foregroundColor: foreBgColor ?? AppColors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 17.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isLoading) ...[
              SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  color: AppColors.primary,
                  strokeWidth: 2,
                ),
              ),
            ] else ...[
              Text(text),
            ],
          ],
        ),
      ),
    );
  }
}

class AppOutlinedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool isLoading;
  final EdgeInsets? padding;
  final Widget? icon;

  const AppOutlinedButton({
    required this.onPressed,
    required this.text,
    this.padding,
    this.isLoading = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: isLoading ? null : onPressed,
      child: Padding(
        padding: padding ?? const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isLoading) ...[
              const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
              const SizedBox(width: 8),
            ] else if (icon != null) ...[
              icon!,
              const SizedBox(width: 8),
            ],
            if (isLoading) ...[
              SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  color: AppColors.primary,
                  strokeWidth: 2,
                ),
              ),
            ] else ...[
              Text(text, style: Theme.of(context).textTheme.titleMedium),
            ],
          ],
        ),
      ),
    );
  }
}
