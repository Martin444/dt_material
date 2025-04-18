import 'package:dt_material/dt_material.dart';
import 'package:flutter/material.dart';

class PendingBookTile extends StatelessWidget {
  final String photoUrl;
  final String detailBook;
  final Function()? onTapCard;
  const PendingBookTile({
    super.key,
    required this.photoUrl,
    required this.detailBook,
    this.onTapCard,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapCard,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: DTColors.bgButton,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(photoUrl),
                  radius: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Text(
                    detailBook,
                    style: DTTextStyle.pendingBookingDetailTitle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
