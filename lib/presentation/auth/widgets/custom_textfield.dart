import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:echoapp/core/constants/app_assets.dart';
import 'package:echoapp/core/constants/app_styles.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key,
      required this.label,
      required this.icon,
      required this.hintText,
      this.isPassword = false,
      this.isPhoneNumber = false, // Add a flag for phone number fields
      this.onChanged,
      this.initialValue,
      this.onSaved,
      this.onUnmaskedChanged,
      this.onUnmaskedSaved,
      this.validator});

  final String label;
  final String? initialValue;
  final String icon;
  final String hintText;
  final bool? isPassword;
  final bool isPhoneNumber;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final void Function(String)? onUnmaskedChanged;
  final void Function(String)? onUnmaskedSaved;
  final String? Function(String?)? validator;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isShown = false;
  late MaskTextInputFormatter _phoneFormatter;

  @override
  void initState() {
    super.initState();

    // Initialize the phone number formatter with a specific mask
    _phoneFormatter = MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##', // Mask format for Kazakhstan phone numbers
      filter: {"#": RegExp(r'[0-9]')}, // Allow only digits
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: AppStyles.s14w600),
        const SizedBox(height: 8),
        SizedBox(
          height: 65,
          child: TextFormField(
            initialValue: widget.initialValue,
            validator: widget.validator,
            onSaved: (newValue) {
              // Check if the onSaved callback is not null before calling it
              if (widget.onSaved != null) {
                widget.onSaved!(
                    newValue); // Send the masked value (formatted phone number)
              }

              // Check if the onUnmaskedSaved callback is not null before calling it
              if (widget.onUnmaskedSaved != null) {
                widget.onUnmaskedSaved!(_phoneFormatter
                    .getUnmaskedText()); // Send the unmasked value (raw phone number)
              }
            },
            onChanged: (value) {
              // Check if the onChanged callback is not null before calling it
              if (widget.onChanged != null) {
                // Send the masked value (formatted phone number)
                widget.onChanged!(value);
              }

              // Check if the onUnmaskedChanged callback is not null before calling it
              if (widget.onUnmaskedChanged != null) {
                // Send the unmasked value (raw phone number)
                widget.onUnmaskedChanged!(_phoneFormatter.getUnmaskedText());
              }
            },
            textAlignVertical: TextAlignVertical.center,
            obscureText: !isShown && widget.isPassword!,
            keyboardType:
                widget.isPhoneNumber ? TextInputType.phone : TextInputType.text,
            inputFormatters: widget.isPhoneNumber ? [_phoneFormatter] : [],
            style: AppStyles.s16w400,
            decoration: InputDecoration(
              errorMaxLines: 2,
              isDense: true,
              errorStyle: const TextStyle(height: 1),
              hintText: widget.hintText,
              contentPadding: const EdgeInsets.symmetric(vertical: 0),
              prefixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(widget.icon, height: 18),
              ),
              suffixIcon: widget.isPassword!
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isShown = !isShown;
                        });
                      },
                      icon: SvgPicture.asset(
                          isShown ? AppAssets.svg.eye : AppAssets.svg.brow),
                    )
                  : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
