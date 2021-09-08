import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

class BlurHashImage extends StatelessWidget {
  const BlurHashImage({
    Key? key,
    required this.url,
    this.blurhash,
    this.fit,
  }) : super(key: key);

  final String url;
  final String? blurhash;

  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        if (blurhash != null)
          BlurHash(
            color: Colors.transparent,
            hash: blurhash!,
          ),
        CachedNetworkImage(
          imageUrl: url,
          cacheKey: url,
          filterQuality: FilterQuality.high,
          fit: fit ?? BoxFit.cover,
          placeholder: (context, url) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 1,
              ),
            );
          },
        ),
      ],
    );
  }
}
