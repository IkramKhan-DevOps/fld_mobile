import 'package:fld/globals/routes.dart';
import 'package:fld/widgets/button_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/input_field_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  'https://fldai.org/static/logo.png',
                  height: 100,
                ),
                const SizedBox(height: 10),
                Text(
                  "Perfect fit at your fingertips",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[400],
                  ),
                ),
                const SizedBox(height: 30),
                FLDTextFormField(
                  hintText: "Email",
                  prefixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 10),
                FLDTextFormField(
                  hintText: "Password",
                  prefixIcon: Icons.lock,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    const Text('Remember Me'),
                  ],
                ),
                FLDElevatedButton(
                    title: "Login", icon: Icons.login_sharp,
                    onPressed: ()=> Navigator.pushNamed(context, AppRoutes.mainScreen),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'Forget Password? Reset here.',
                      style: GoogleFonts.aBeeZee(
                        color: Colors.red[400],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
