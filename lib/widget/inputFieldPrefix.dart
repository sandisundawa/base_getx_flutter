import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/colors.dart';

class InputField extends StatelessWidget {
  final String? labelText;
  final TextEditingController? editingController;
  final TextInputType inputType;
  final TextCapitalization capitalization;
  final TextInputAction inputAction;
  final Function(String)? onChange;
  final Function()? onSuffixIconClick;
  final bool isEnable;
  final bool isFocus;
  final bool isObsecure;
  final double textSize;
  final Color textColor;
  final Color hintColor;
  final FontWeight fontWeight;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final AutovalidateMode autovalidateMode;
  final bool isRequired;
  final FormFieldValidator<String> validate;
  final List<TextInputFormatter>? textInputFormatter;

  const InputField(
      {Key? key,
        this.labelText, this.editingController,
        this.onChange,
        this.inputType = TextInputType.text,
        this.capitalization = TextCapitalization.none,
        this.inputAction = TextInputAction.next,
        this.isEnable = true,
        this.isFocus = false,
        this.isObsecure = false,
        this.autovalidateMode = AutovalidateMode.onUserInteraction,
        this.isRequired = false,
        this.prefixIcon, required this.textSize, required this.textColor,
        required this.fontWeight, required this.hintColor, this.suffixIcon, this.onSuffixIconClick, required this.validate, this.textInputFormatter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.top,
      textAlign: TextAlign.start,
      controller: editingController,
      inputFormatters: textInputFormatter,
      keyboardType: inputType,
      cursorColor: ColorValue.cursorColor,
      style: GoogleFonts.poppins(
          color: textColor,
          fontSize: textSize.sp,
          fontWeight: fontWeight
      ),
      autovalidateMode: autovalidateMode,
      textInputAction: inputAction,
      onChanged: onChange,
      enabled: isEnable,
      autofocus: isFocus,
      obscureText:
      inputType == TextInputType.visiblePassword ? true : isObsecure,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 16.w, right: 16.w),
        hintText: labelText,
        prefixIcon:prefixIcon != null ? prefixIcon : null,
        prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
        isCollapsed: false,
        suffixIcon: suffixIcon != null ? suffixIcon : null,
        suffixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
        hintStyle: GoogleFonts.poppins(
          color: hintColor,
          fontSize: textSize.sp,
          fontWeight: fontWeight,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorValue.borderSideInputText1Color),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorValue.borderSideInputText2Color),
        ),
      ),
      validator: validate,
    );
  }
}
