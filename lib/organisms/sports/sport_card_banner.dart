import 'package:dt_material/dt_material.dart';
import 'package:flutter/material.dart';

class SportCardBanner extends StatelessWidget {
  final String title;
  final bool status;
  final SportType type;
  final List<String> imageUrls;
  final String location;
  final VoidCallback onBook;

  const SportCardBanner({
    super.key,
    required this.title,
    required this.status,
    required this.type,
    required this.imageUrls,
    required this.location,
    required this.onBook,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      getSportIcon(type),
                      height: 28,
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: onBook,
                ),
              ],
            ),
            Text(
              status ? 'Disponible' : 'No disponible',
              style: TextStyle(
                color: status ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            // DTOverflowTextDetector(
            //   message: location,
            //   children: [
            //     Text(
            //       location,
            //       style: TextStyle(
            //         fontSize: 16.0,
            //         color: Colors.black,
            //       ),
            //     ),
            //   ],
            // ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _buildImageStack(),
                TextButton(
                  child: Text('+${imageUrls.length}'),
                  onPressed: () {
                    // Agregar funcionalidad para mostrar más imágenes
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageStack() {
    if (imageUrls.length == 1) {
      return CircleAvatar(
        backgroundImage: NetworkImage(imageUrls[0]),
        radius: 24.0,
      );
    }

    return Stack(
      children: imageUrls
          .take(4)
          .toList()
          .asMap()
          .map((index, url) => MapEntry(
                index,
                Positioned(
                  left: index * 20.0,
                  child: Transform.rotate(
                    angle: (index % 2 == 0) ? -0.1 : 0.1,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(url),
                      radius: 24.0,
                    ),
                  ),
                ),
              ))
          .values
          .toList(),
    );
  }
}
