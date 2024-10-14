import 'package:echoapp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FToastService {
  final FToast _fToast;

  FToastService(this._fToast);

  void initFToast(BuildContext context) {
    _fToast.init(context);
  }

  void showToast(String message, {bool? isError = false}) {
    _fToast.showToast(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: AppColors.black,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (!isError!) const Icon(Icons.check, size: 16),
            if (isError) const Icon(Icons.cancel, size: 16),
            const SizedBox(width: 12.0),
            Text(message, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
      gravity: ToastGravity.TOP,
      toastDuration: const Duration(seconds: 2),
    );
  }
}
