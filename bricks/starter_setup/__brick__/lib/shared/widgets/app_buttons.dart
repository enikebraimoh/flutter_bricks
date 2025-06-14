import 'package:Tickets_by_Selar/shared/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFilledButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color? bgColor;
  final Color? foreBgColor;
  final bool isLoading;

  const AppFilledButton({
    super.key,
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
          foregroundColor: foreBgColor ?? AppColors.selarWhite),
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
                  color: AppColors.selarPurple,
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
    super.key,
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
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
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
                  color: AppColors.selarPurple,
                  strokeWidth: 2,
                ),
              ),
            ] else ...[
              Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.selarPurple,
                  fontFamily: GoogleFonts.dmSans().fontFamily,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
