import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../dt_material.dart';

class ImageNetworkCard extends StatelessWidget {
  final String urlPhoto;
  final double? height;
  final double? width;
  const ImageNetworkCard({
    super.key,
    required this.urlPhoto,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      imageUrl: urlPhoto,
      httpHeaders: const {
        'Referrer-Policy': 'strict-origin-when-cross-origin',
      },
      fit: BoxFit.cover,
      placeholder: (context, url) => Center(
        child: Image.asset(
          DTImages.isoLogo,
        ),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
