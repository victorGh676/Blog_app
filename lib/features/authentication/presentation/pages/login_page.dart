import 'package:blog_app/core/theme/app_color_pallete.dart';
import 'package:blog_app/features/authentication/presentation/widgets/auth_gradient_button.dart';
import 'package:blog_app/features/authentication/presentation/widgets/authentication_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();

 @override
  void dispose(){
    emailController.dispose();
    passController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Iniciar Sesión',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              AuthenticationField(hintText: 'Ingrese el Correo electrónico', controller: emailController, onlyRead: true,),
              const SizedBox(
                height: 15,
              ),
              AuthenticationField(hintText: 'Contraseña', controller: passController, isObscureText: true,),
              const SizedBox(
                height: 20,
              ),
              const AuthenticationGradientButton(buttonText: 'Ingresar',),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text: 'Tiene una cuenta?. ',
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: 'Iniciar Sesión',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppColorPallete.gradient2,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}