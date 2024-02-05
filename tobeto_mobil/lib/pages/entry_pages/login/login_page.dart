import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/primary_background.dart';
import 'package:tobeto_mobil/core/clippers/login_clipper.dart';
import 'package:tobeto_mobil/pages/entry_pages/login/login_form.dart';
import 'package:tobeto_mobil/pages/entry_pages/login/login_footer.dart';
import 'package:tobeto_mobil/pages/entry_pages/login/login_header.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          PrimaryBackgroundWidget(
            clipper: LoginClipper(),
          ),

          const LoginHeader(),

          LoginForm(),

          //BackgroundWidget'dan sonra olmak zorunda yoksa stack altinda kalir
          const LoginFooter(),
        ],
      ),
    );
  }
}
