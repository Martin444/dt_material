import 'package:dt_material/utils/dt_colors.dart';
import 'package:dt_material/utils/formaters/currency_converter.dart';
import 'package:dt_material/utils/overflow_text.dart';
import 'package:dt_material/utils/style/dt_style_fonts.dart';
import 'package:dt_material/widgets/cards/cart/model/cart_item_model.dart';
import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {
  final CartItemModel item;
  final Function(CartItemModel) onAddCart;
  final Function(CartItemModel) onRemoveCart;
  const CartTile({
    super.key,
    required this.item,
    required this.onAddCart,
    required this.onRemoveCart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: DTColors.primaryBackground,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            color: Colors.black.withOpacity(0.4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            flex: 1,
            child: Image.network(
              item.photoUrl!,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                DTOverflowTextDetector(
                  message: item.name!,
                  children: [
                    Text(
                      item.name!,
                      style: DTTextStyle.title3,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: DTOverflowTextDetector(
                          message: item.price!.toString().convertToCorrency(),
                          children: [
                            Text(
                              item.price!.toString().convertToCorrency(),
                              style: DTTextStyle.description1,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              onRemoveCart(item);
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: DTColors.bgButton,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '${item.quantity}',
                            style: DTTextStyle.description1,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              onAddCart(item);
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: DTColors.bgButton,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
