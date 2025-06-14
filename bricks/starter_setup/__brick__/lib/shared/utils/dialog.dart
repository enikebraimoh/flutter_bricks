import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class DialogUtil {
  static void showLoadingDialog(BuildContext context, {String? text}) {
    // Schedule the dialog to show after the current build phase
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showGeneralDialog(
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierDismissible: false,
        transitionDuration: const Duration(milliseconds: 200),
        context: context,
        pageBuilder: (_, __, ___) {
          return const Material(
            type: MaterialType.transparency,
            child: Align(alignment: Alignment.center, child: Text("Loading...")
                // CircularProgressIndicator()
                ),
          );
        },
        transitionBuilder: (_, anim, __, child) {
          return SlideTransition(
            position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
                .animate(anim),
            child: child,
          );
        },
      );
    });
  }

  static void dismissLoadingDialog(BuildContext context) {
    // Schedule the dismiss after the current build phase
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.mounted) {
        Navigator.pop(context);
      }
    });
  }

  static void dismissWithNavigationService(BuildContext context) {
    // Schedule the dismiss after the current build phase
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.mounted) {
        AutoRouter.of(context).back();
      }
    });
  }
}
