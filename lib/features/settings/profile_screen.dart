import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../globals/routes.dart';
import '../../widgets/button_widgets.dart';
import '../../widgets/input_field_widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  size: 100,
                  color: Colors.red[400],
                ),
                const SizedBox(height: 10),
                Text(
                  "Update your profile details!",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[400],
                  ),
                ),
                const SizedBox(height: 20),
                FLDTextFormField(
                  hintText: "First Name",
                  prefixIcon: Icons.email,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 10),
                FLDTextFormField(
                  hintText: "Last Name",
                  prefixIcon: Icons.email,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 20),
                FLDElevatedButton(
                  title: "Submit",
                  icon: Icons.check,
                  onPressed: () {},
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.passwordChangeScreen);
                    },
                    child: Text(
                      'Password Change? Click Here',
                      style: GoogleFonts.aBeeZee(
                        color: Colors.red[400],
                        fontWeight: FontWeight.bold,
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
