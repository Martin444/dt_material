import 'package:dt_material/dt_material.dart';
import 'package:flutter/material.dart';

class SportDescriptionTile extends StatelessWidget {
  const SportDescriptionTile({
    super.key,
    required this.titleSport,
    required this.locationSport,
    required this.typeSport,
  });

  final String titleSport;
  final String locationSport;
  final SportType typeSport;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          getSportIcon(typeSport),
          width: 50,
          height: 50,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              titleSport.capitalizeFirstLetter(),
              style: DTTextStyle.titleSportDescription,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              locationSport,
              style: DTTextStyle.locationSportDescription,
            ),
          ],
        )
      ],
    );
  }
}
