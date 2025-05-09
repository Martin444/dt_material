import 'package:dt_material/utils/dt_colors.dart';
import 'package:dt_material/utils/style/dt_style_fonts.dart';
import 'package:flutter/material.dart';

class DTInputDropDown<T> extends StatefulWidget {
  final String label;
  final String hintText;
  final String? errorText;
  final List<DropdownMenuItem<T>> items;
  final T? initialItem;
  final String? Function(T?)? validator;

  final Function(T) onSelect;

  const DTInputDropDown({
    super.key,
    required this.items,
    required this.onSelect,
    required this.label,
    required this.hintText,
    required this.errorText,
    this.initialItem,
    this.validator,
  });

  @override
  State<DTInputDropDown<T>> createState() => _InputDropDownState<T>();
}

class _InputDropDownState<T> extends State<DTInputDropDown<T>> {
  T? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: selectedValue ?? widget.initialItem,
      iconEnabledColor: DTColors.iconColor,
      decoration: InputDecoration(
        fillColor: DTColors.bgInput,
        hoverColor: DTColors.bgInput,
        focusColor: DTColors.bgInput,
        label: widget.label.isNotEmpty
            ? Text(
                widget.label,
                style: DTTextStyle.textLabelMenu,
              )
            : null,
        hintText: widget.hintText,
        hintStyle: DTTextStyle.hintTextStyle,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isCollapsed: false,
        alignLabelWithHint: false,
        errorText: widget.errorText,
        errorStyle: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
        filled: true,
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
      focusColor: Colors.transparent,
      style: DTTextStyle.hintTextStyle,
      validator: widget.validator,
      hint: Text(
        widget.hintText,
        style: DTTextStyle.hintTextStyle,
      ),
      items: widget.items,
      onChanged: (T? newValue) {
        if (newValue != null) {
          widget.onSelect(newValue);
          setState(() {
            selectedValue = newValue;
          });
        }
      },
    );
  }
}
