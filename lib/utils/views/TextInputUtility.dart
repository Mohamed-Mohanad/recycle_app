import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recycle_app_v2/utils/style/AppColors.dart';
import 'package:recycle_app_v2/utils/style/AppTextStyles.dart';
import 'package:recycle_app_v2/utils/views/MyAppBorders.dart';


import 'package:responsive_flutter/responsive_flutter.dart';

Widget buildFormLabel({BuildContext context, String text, bool isRequired}) {
  return Container(
    padding: const EdgeInsets.fromLTRB(4, 0, 4, 4),
    child: Row(
      children: [
        if (isRequired)
          Row(
            children: [
              Text("*", style: requiredIconTextStyle(context)),
              SizedBox(
                width: ResponsiveFlutter.of(context).scale(8),
              ),
            ],
          ),
        Expanded(
          child: Text(
            text,
            style: secondaryTextStyle(context),
          ),
        )
      ],
    ),
  );
}

Widget buildCrudTextFormField({
  BuildContext context,
  bool isObscureText = false,
  Icon prefixIcon,
  IconButton suffixIconButton,
  String initialValue,
  String hintText,
  bool readOnly,
  TextEditingController controller,
  GestureTapCallback onTap,
  TextInputType inputType,
  void onSaved(String input),
  void onChanged(String input),
  String validator(String input),
}) {
  return Container(
    child: TextFormField(
      initialValue: initialValue,
      style: primaryTextStyle(context),
      validator: validator,
      keyboardType: inputType,
      textInputAction: TextInputAction.done,
      onSaved: onSaved,
      onChanged: onChanged,
      controller: controller,
      autofocus: false,
      obscureText: isObscureText,
      onTap: onTap,
      readOnly: readOnly != null ? readOnly : false,
      decoration: new InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            horizontal: ResponsiveFlutter.of(context).scale(32),
            vertical: ResponsiveFlutter.of(context).verticalScale(10)),
        fillColor: whiteColor,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIconButton,
        enabledBorder: formInputBorderStyle(context),
        errorBorder: formInputBorderErrorStyle(context),
        focusedBorder: focusedFormInputBorderStyle(context),
        focusedErrorBorder: focusedFormInputBorderStyle(context),
        errorStyle: errorTextStyle(context),
        filled: true,
        hintStyle: hintTextStyle(context),
        hintText: hintText,
      ),
    ),
  );
}

Widget customTextField({
  String hintText,
  int hight,
  double borderRadius,
}) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(11),
      child: TextField(
          maxLines: hight,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            hintText: hintText,
          )),
    ),
  );
}

/*
inputFormatters: [new WhitelistingTextInputFormatter(RegExp("[0-9]"))],

TextField(
          maxLength: 3,
          inputFormatters: <TextInputFormatter>[
            WhitelistingTextInputFormatter.digitsOnly,
          ],
          keyboardType: TextInputType.number,
        ),
 */
/*

        isPasswordVisible = false;

        child: TextFormField(
                  controller: _textEditConConfirmPassword,
                  focusNode: _passwordConfirmFocus,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  validator: _validateConfirmPassword,
                  obscureText: !isConfirmPasswordVisible,
                  decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      suffixIcon: IconButton(
                        icon: Icon(isConfirmPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            isConfirmPasswordVisible =
                                !isConfirmPasswordVisible;
                          });
                        },
                      ),
                      icon: Icon(Icons.vpn_key))),
            ),
 */
