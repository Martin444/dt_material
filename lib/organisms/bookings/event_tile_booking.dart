import 'package:dt_material/dt_material.dart';
import 'package:flutter/material.dart';

class EventTileBooking extends StatelessWidget {
  final String photoUrl;
  final String bannerUrl;
  final String nameOrganiceBook;
  final String dateOrganiceBook;
  final Function()? onTapCard;
  const EventTileBooking({
    super.key,
    required this.photoUrl,
    required this.nameOrganiceBook,
    required this.dateOrganiceBook,
    required this.bannerUrl,
    this.onTapCard,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapCard,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(bannerUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: IgnorePointer(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFFE8DDDD).withOpacity(0.3), // Color inicial del gradiente
                        const Color(0xFF000000).withOpacity(0.5), // Color final del gradiente
                      ],
                      stops: const [0.12, 0.63], // Posiciones de los colores en el gradiente
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(photoUrl),
                        radius: 27,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nameOrganiceBook,
                            style: DTTextStyle.eventOrganiceName,
                          ),
                          Text(
                            dateOrganiceBook,
                            style: DTTextStyle.eventOrganiceDate,
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
