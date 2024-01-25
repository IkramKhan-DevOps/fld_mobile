import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/button_widgets.dart';
import '../../widgets/input_field_widgets.dart';

class PasswordChangeScreen extends StatelessWidget {
  const PasswordChangeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red[400],
          title: Text(
            "Change Password",
            style: GoogleFonts.aBeeZee(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.shield_outlined,
                size: 100,
                color: Colors.red[400],
              ),
              const SizedBox(height: 10),
              Text(
                "Update your Password!",
                style: GoogleFonts.aBeeZee(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400],
                ),
              ),
              const SizedBox(height: 20),
              FLDTextFormField(
                hintText: "Old Password",
                prefixIcon: Icons.email,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 10),
              FLDTextFormField(
                hintText: "New Password",
                prefixIcon: Icons.email,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 10),
              FLDTextFormField(
                hintText: "Confirm Password",
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
                  onPressed: () {},
                  child: Text(
                    'Forgot Password? Click Here',
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
    );
  }
}