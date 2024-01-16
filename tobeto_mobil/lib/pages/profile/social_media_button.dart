//sosyal medya icon button
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    super.key,
    required this.logo,
    required this.url,
    required this.color,
  });
  final String logo;
  final String url;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _launchUrl(Uri.parse(url));
      },
      icon: Image.asset(
        logo,
        height: 32,
        color: color,
      ),
    );
  }

  Future<void> _launchUrl(Uri _url) async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
