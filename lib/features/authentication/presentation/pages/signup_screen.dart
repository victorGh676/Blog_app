import 'package:blog_app/core/theme/app_color_pallete.dart';
import 'package:blog_app/features/authentication/presentation/widgets/auth_gradient_button.dart';
import 'package:blog_app/features/authentication/presentation/widgets/authentication_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formkey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  void dispose(){
    nameController.dispose();
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
                'Crear una cuenta',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              AuthenticationField(hintText: 'Ingrese el nombre',controller: nameController),
              const SizedBox(
                height: 15,
              ),
              AuthenticationField(hintText: 'Ingrese el Correo electrónico', controller: emailController, onlyRead: true,),
              const SizedBox(
                height: 15,
              ),
              AuthenticationField(hintText: 'Contraseña', controller: passController, isObscureText: true,),
              const SizedBox(
                height: 20,
              ),
              const AuthenticationGradientButton(),
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
