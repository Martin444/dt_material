import 'package:dt_material/dt_material.dart';
import 'package:flutter/material.dart';

class DTSummaryDetail extends StatelessWidget {
  final List<DetailItemPrice> detailItems;
  final ButtonPrimary? buttonConfirm;
  const DTSummaryDetail({
    super.key,
    required this.detailItems,
    this.buttonConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'Detalle',
              style: DTTextStyle.confirmTimeTile,
            ),
            const SizedBox(height: 16),
            ...detailItems.map((item) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: item,
                )),
          ],
        ),
        if (buttonConfirm != null) ...[buttonConfirm!]
      ],
    );
  }
}

class DetailItemPrice extends StatelessWidget {
  final String titleDetail;
  final String? priceDetail;
  final bool? isTotal;
  final bool? isSubTotal;
  const DetailItemPrice({
    super.key,
    required this.titleDetail,
    this.priceDetail,
    this.isTotal,
    this.isSubTotal,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle getTextStyle() {
      if (isTotal ?? false) {
        return DTTextStyle.totalDetailItem;
      } else if (isSubTotal ?? false) {
        return DTTextStyle.subTotalDetailItem;
      } else {
        return DTTextStyle.taxDetailItem;
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleDetail,
          style: getTextStyle(),
        ),
        if (priceDetail != null)
          Text(
            priceDetail!.convertToCorrency(),
            style: getTextStyle(),
          ),
      ],
    );
  }
}