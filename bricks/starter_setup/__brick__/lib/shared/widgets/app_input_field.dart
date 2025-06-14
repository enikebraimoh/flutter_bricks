import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart';

class AppInputField extends StatefulWidget {
  final String? labelText;
  final TextInputType keyboardType;
  final bool isPassword;
  final bool showPasswordToggle;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final FormFieldSetter<String>? onSaved;
  final FocusNode? focusNode;
  final VoidCallback? onTap;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final String? hintText;
  final Widget? prefixIcon;
  final String? initialValue;
  final bool enabled;
  final bool autofocus;
  final bool readOnly;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final bool alignLabelWithHint;
  final TextEditingController? controller;
  final double? height;
  final TextStyle? style;
  final VoidCallback? onTogglePassword;

  const AppInputField({
    super.key,
    this.labelText,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.showPasswordToggle = false,
    this.autofocus = false,
    this.validator,
    this.onChanged,
    this.inputFormatters,
    this.onEditingComplete,
    this.onSaved,
    this.readOnly = false,
    this.focusNode,
    this.onTap,
    this.textInputAction = TextInputAction.next,
    this.hintText,
    this.prefixIcon,
    this.initialValue,
    this.enabled = true,
    this.controller,
    this.height,
    this.minLines,
    this.maxLength,
    this.maxLines,
    this.alignLabelWithHint = false,
    this.style,
    this.onTogglePassword,
  });

  @override
  State<AppInputField> createState() => _AppInputFieldState();
}

class _AppInputFieldState extends State<AppInputField> {
  late FocusNode _focusNode;
  bool isError = false;
  String? errorString;
  bool _obscureText = true;

  @override
  void initState() {
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        setState(() {});
      }
    });
    _obscureText = widget.isPassword;
    super.initState();
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null) ...[
          Text(
            widget.labelText!,
            style: TextStyle(
              color: AppColors.selarBlack,
              fontSize: 14,
              fontFamily: GoogleFonts.dmSans().fontFamily,
            ),
          ),
          const SizedBox(height: 4),
        ],
        FocusScope(
          child: Focus(
            focusNode: _focusNode,
            child: TextFormField(
              readOnly: widget.readOnly,
              obscureText: widget.isPassword && _obscureText,
              onSaved: widget.onSaved,
              onChanged: widget.onChanged,
              controller: widget.controller,
              initialValue: widget.initialValue,
              autofocus: widget.autofocus,
              onTap: widget.onTap,
              minLines: widget.minLines ?? 1,
              maxLines: widget.isPassword ? 1 : (widget.maxLines ?? 1),
              keyboardType: widget.keyboardType,
              textInputAction: widget.textInputAction,
              inputFormatters: widget.inputFormatters,
              enabled: widget.enabled,
              style: widget.style,
              decoration: InputDecoration(
                hintText: widget.hintText,
                prefixIcon: widget.prefixIcon,
                suffixIcon: widget.isPassword && widget.showPasswordToggle
                    ? IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                          widget.onTogglePassword?.call();
                        },
                      )
                    : null,
                alignLabelWithHint: widget.alignLabelWithHint,
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              validator: (val) {
                if (widget.validator != null) {
                  final error = widget.validator!(val);
                  setState(() {
                    isError = error != null;
                    errorString = error;
                  });
                  return error;
                }
                return null;
              },
            ),
          ),
        ),
        if (isError) ...[
          const SizedBox(height: 4),
          Text(
            errorString ?? "",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
          ),
        ],
        // if (widget.isPassword) ...[
        //   const SizedBox(height: 8),
        //   Text(
        //     'For a strong password ensure that your password contain Alphabet & Numeric',
        //     style: Theme.of(context).textTheme.bodySmall,
        //   ),
        // ],
      ],
    );
  }
}
