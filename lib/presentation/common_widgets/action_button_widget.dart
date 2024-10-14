import 'package:echoapp/core/constants/app_styles.dart';
import 'package:echoapp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ActionButtonWidget extends StatelessWidget {
  const ActionButtonWidget(
      {super.key,
      required this.text,
      this.isColored = true,
      this.onPressed,
      this.isLoading = false});
  final String text;
  final bool? isColored;
  final void Function()? onPressed;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: MaterialButton(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: onPressed,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        color: isColored! ? AppColors.black : AppColors.white,
        child: isLoading!
            ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  color: AppColors.white,
                  strokeWidth: 3.0,
                ),
              )
            : Text(text,
                style: AppStyles.s16w700.copyWith(
                    color: isColored! ? AppColors.white : AppColors.black)),
      ),
    );
  }
}
