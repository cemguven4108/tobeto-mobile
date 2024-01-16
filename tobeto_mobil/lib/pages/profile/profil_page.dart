import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/core/screens/global_scaffold.dart';
import 'package:tobeto_mobil/core/widgets/background_widget.dart';
import 'package:tobeto_mobil/pages/profile/activity_map_widget.dart';
import 'package:tobeto_mobil/pages/profile/badges_row_widget.dart';
import 'package:tobeto_mobil/pages/profile/certificates_row_widget.dart';
import 'package:tobeto_mobil/pages/profile/competence_row_widget.dart';
import 'package:tobeto_mobil/pages/profile/contributions_grid_widget.dart';
import 'package:tobeto_mobil/pages/profile/personal_info_column_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_body_container.dart';
import 'package:tobeto_mobil/pages/profile/profile_container.dart';
import 'package:tobeto_mobil/pages/profile/profile_picture.dart';
import 'package:tobeto_mobil/pages/profile/social_media_widget.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    int count = 1;
    return GlobalScaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
            logo,
            height: kToolbarHeight - 10,
          ),
          actions: [
            IconButton(
              onPressed: () {
                Share.share("https://tobeto.com");
              },
              icon: Icon(Icons.share),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/profileEdit");
              },
              icon: Icon(Icons.edit_outlined),
            )
          ],
        ),
        body: BackgroundWidget(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ProfilePicture(),
                const ProfileContainer(child: PersonalInfoColumnWidget()),
                const ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Yetkinliklerim",
                    body: CompetenceRowWidget(),
                  ),
                ),
                const ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Sertifikalarım",
                    body: CertificatesRowWidget(),
                  ),
                ),
                const ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Sosyal Medya Hesaplarım",
                    body: SocialMediaWidget(),
                  ),
                ),
                const ProfileContainer(
                  child: ProfileBodyContainer(
                    title: "Yetkinlik Rozetlerim",
                    body: BadgesRowWidget(),
                  ),
                ),
                ActivityMapWidget(),
              ],
            ),
          ),
        ));
  }
}
