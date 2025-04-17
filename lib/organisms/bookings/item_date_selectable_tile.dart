// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:dt_material/dt_material.dart';
import 'package:flutter/material.dart';

class ItemDateSelectable extends StatelessWidget {
  final DateTime date;
  final bool isEnable;
  final bool isSelected;
  const ItemDateSelectable({
    super.key,
    required this.isEnable,
    required this.isSelected,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    final String day = date.day.toString();
    final String dayName = DateFormat('E', 'es_ES').format(date).capitalizeFirstLetter();
    return IgnorePointer(
      ignoring: !isEnable,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: isEnable
            ? isSelected
                ? DTStyleContainers.itemDateSelectedContainer
                : DTStyleContainers.itemDateEnableContainer
            : DTStyleContainers.itemDateDisableContainer,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              day,
              style: DTTextStyle.dateDayItem.copyWith(
                color: isEnable
                    ? isSelected
                        ? DTColors.textColor2
                        : DTColors.textColor5
                    : DTColors.textColor6,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Flexible(
              child: Text(
                dayName,
                style: DTTextStyle.dateNameItem.copyWith(
                  color: isEnable
                      ? isSelected
                          ? DTColors.textColor2
                          : DTColors.textColor5
                      : DTColors.textColor6,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
