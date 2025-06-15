import 'package:flutter/material.dart';
import 'package:{{name.pascalCase()}}/generated/assets.gen.dart';
import '../../theme/colors.dart';

class AppSearchBar extends StatelessWidget {
  final String hint;
  final double borderRadius;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final Widget? suffix;
  final Color? textColor;
  const AppSearchBar({
    Key? key,
    required this.hint,
    required this.controller,
    this.onChanged,
    this.suffix,
    this.textColor,
    this.borderRadius = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onFieldSubmitted: (value) {
        // TODO: call the search and filter method
      },
      onChanged: onChanged,
      textAlignVertical: TextAlignVertical.center,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
        color: textColor ?? AppColors.textPrimary,
        fontSize: 17,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
          color: textColor ?? AppColors.textSecondary,
          fontSize: 17,
        ),
        prefixIcon: SizedBox(
          height: 20,
          width: 10,
          child: Center(
            child: Assets.icons.search.svg(width: 24.0, height: 24.0),
          ),
        ),
        suffixIcon: SizedBox(
          height: 20,
          width: 10,
          child: Center(child: suffix),
        ),
        border: InputBorder.none,
        fillColor: AppColors.surfaceLight,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), // Added border radius
          borderSide: BorderSide(color: AppColors.grey03),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), // Added border radius
          borderSide: BorderSide(color: AppColors.grey03),
        ),
        disabledBorder: InputBorder.none,
      ),
    );
  }
}
