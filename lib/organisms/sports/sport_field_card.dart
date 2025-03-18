import 'package:cached_network_image/cached_network_image.dart';
import 'package:dt_material/dt_material.dart';
import 'package:dt_material/utils/formaters/currency_converter.dart';
import 'package:dt_material/utils/overflow_text.dart';
import 'package:flutter/material.dart';

class SportFieldCard extends StatelessWidget {
  final String title;
  final String clubName;
  final Function()? onTapCard;
  final String? clubImageUrl;
  final String imageUrl;
  final SportType sportType;
  final String? uniqueId;

  const SportFieldCard({
    super.key,
    required this.title,
    required this.clubName,
    required this.imageUrl,
    required this.sportType,
    this.clubImageUrl,
    this.onTapCard,
    this.uniqueId,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapCard,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(10.0)),
              child: Hero(
                tag: 'card-$uniqueId',
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Center(
                    child: Image.asset(
                      DTImages.isoLogo,
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xFFE8DDDD).withOpacity(0.3), // Color inicial del gradiente
                      const Color(0xFF000000).withOpacity(0.4), // Color final del gradiente
                    ],
                    stops: const [0.12, 0.63], // Posiciones de los colores en el gradiente
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    getSportIcon(sportType),
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(width: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title.capitalizeFirstLetter().trim(),
                        style: DTTextStyle.sportFieldTitle,
                      ),
                      const SizedBox(height: 4.0),
                      Row(
                        children: [
                          clubImageUrl != null
                              ? ClipRRect(
                                  borderRadius: const BorderRadius.vertical(top: Radius.circular(100.0)),
                                  child: CachedNetworkImage(
                                    imageUrl: clubImageUrl!,
                                    width: 25,
                                    height: 25,
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => Center(
                                      child: Image.asset(
                                        DTImages.isoLogo,
                                      ),
                                    ),
                                    errorWidget: (context, url, error) => const Icon(Icons.error),
                                  ),
                                )
                              : Container(),
                          DTOverflowTextDetector(
                            message: clubName,
                            children: [
                              Text(
                                clubName,
                                style: DTTextStyle.sportFieldClubName,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
