import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../globals/routes.dart';
import '../../widgets/button_widgets.dart';
import '../../widgets/input_field_widgets.dart';

class ScanStartScreen extends StatelessWidget {
  const ScanStartScreen({super.key});

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
                Image.network(
                  'https://fldai.org/static/logo.png',
                  height: 100,
                ),
                const SizedBox(height: 10),
                Text(
                  "Lets Scan some hands!",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[400],
                  ),
                ),
                const SizedBox(height: 20),
                FLDTextFormField(
                  hintText: "Client Email",
                  prefixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),

                FLDElevatedButton(
                  title: "Start Scan",
                  icon: Icons.qr_code_scanner,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
