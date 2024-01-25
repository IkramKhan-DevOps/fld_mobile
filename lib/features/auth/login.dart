import 'package:fld/widgets/button_widgets.dart';
import 'package:flutter/material.dart';

import '../../widgets/input_field_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // [email, password, forget password link, login button, remember me checkbox]
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.network(
                    'https://fldai.org/static/logo.png',
                    height: 100,
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
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    Text('Remember Me'),
                  ],
                ),
                FLDElevatedButton(title: "Login", icon: Icons.login),
                TextButton(
                  onPressed: () {},
                  child: Text('Forget Password'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
