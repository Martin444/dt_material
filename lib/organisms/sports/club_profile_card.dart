import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ClubProfileCard extends StatelessWidget {
  final String? clubImageUrl;
  final String title;
  final String description;
  final double? rating;
  final Function()? onTapCard;

  const ClubProfileCard({
    super.key,
    this.clubImageUrl,
    required this.title,
    required this.description,
    this.rating,
    this.onTapCard,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapCard,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: const Color(0xFFF9F9F9),
          borderRadius: BorderRadius.circular(13),
          border: Border.all(
            color: const Color(0xFFDFDFDF),
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            clubImageUrl != null
                ? CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(
                      clubImageUrl!,
                    ),
                  )
                : Container(),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 8.0),
            rating != null
                ? Row(
                    children: List.generate(
                      5,
                      (index) {
                        return Icon(
                          index < rating! ? Icons.star : Icons.star_border,
                          color: Colors.amber,
                        );
                      },
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
