import 'package:dt_material/utils/dt_assets.dart';
import 'package:dt_material/utils/dt_colors.dart';
import 'package:dt_material/utils/style/dt_style_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:svg_flutter/svg.dart';

import '../../utils/formaters/upercase_first_letter.dart';

class DTInput extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final TextInputType? textInputType;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? formaters;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmited;
  final bool? isPassword;
  final int? maxLines;
  final bool? visibleText;
  final String? errorText;
  final TextEditingController controller;

  const DTInput({
    super.key,
    required this.controller,
    this.visibleText,
    this.hintText,
    this.labelText,
    this.textInputType,
    this.textInputAction,
    this.formaters,
    this.isPassword,
    this.onChanged,
    this.errorText,
    this.focusNode,
    this.onSubmited,
    this.maxLines,
    this.validator,
  });

  @override
  State<DTInput> createState() => _DTInputState();
}

class _DTInputState extends State<DTInput> {
  bool isVisibleText = false;

  @override
  initState() {
    super.initState();

    isVisibleText = widget.isPassword ?? false;
  }

  Widget getIcon() {
    if (widget.isPassword ?? false) {
      return Container(
        margin: EdgeInsets.only(
          right: 5,
          top: widget.errorText != null ? 0 : 10,
          bottom: widget.errorText != null ? 18 : 0,
        ),
        child: GestureDetector(
          child: SvgPicture.asset(
            isVisibleText ? DTIcons.iconEyeOpen : DTIcons.iconEyeClose,
            height: 30,
          ),
          onTap: () {
            setState(() {
              isVisibleText = !isVisibleText;
            });
          },
        ),
      );
    } else {
      return Container();
    }
  }

  List<TextInputFormatter> getFormatForTypeInput() {
    if (widget.formaters != null) return widget.formaters!;
    switch (widget.textInputType) {
      case TextInputType.name:
        return [UppercaseFirstLetterFormatter()];
      case TextInputType.number:
      case TextInputType.phone:
        return [
          FilteringTextInputFormatter.digitsOnly,
          FilteringTextInputFormatter.allow(RegExp("[0-9]")),
        ];
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: widget.errorText != null ? Alignment.centerRight : Alignment.topRight,
      children: [
        TextFormField(
          obscureText: isVisibleText,
          validator: widget.validator,
          textInputAction: widget.textInputAction,
          keyboardType: widget.textInputType,
          focusNode: widget.focusNode,
          maxLines: widget.maxLines ?? 1,
          inputFormatters: getFormatForTypeInput(),
          decoration: InputDecoration(
            fillColor: DTColors.bgInput,
            hoverColor: DTColors.bgInput,
            focusColor: DTColors.bgInput,
            hintText: widget.hintText,
            hintStyle: DTTextStyle.hintTextStyle,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            isCollapsed: false,
            alignLabelWithHint: false,
            errorText: widget.errorText,
            errorStyle: const TextStyle(
              fontWeight: FontWeight.w400,
            ),
            filled: true,
            // contentPadding: const EdgeInsets.symmetric(
            //   horizontal: 10,
            //   vertical: 3,
            // ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: DTColors.primaryColor),
              borderRadius: BorderRadius.circular(8),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: DTColors.borderInputColor),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: DTColors.borderInputColor),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          style: DTTextStyle.hintTextStyle,
          controller: widget.controller,
          onChanged: widget.onChanged,
          onFieldSubmitted: widget.onSubmited,
        ),
        getIcon(),
      ],
    );
  }
}
