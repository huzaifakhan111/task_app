import 'package:flutter/material.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:task_app/theme/colors.dart';
import 'package:task_app/views/Register/register_view.dart';
import 'package:task_app/views/widgets/custom_form_textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormBuilderState>();
    return Scaffold(
        body: FormBuilder(
      key: _formKey,
      child: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  Text(
                    textAlign: TextAlign.center,
                    "Login",
                    style: TextStyle(
                        fontSize: 46.1,
                        fontWeight: FontWeight.bold,
                        color: ColorUtils.primaryColor),
                  ),
                  const SizedBox(height: 5.0),
                   Text(
                    textAlign: TextAlign.center,
                    "Sign in to continue.",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: ColorUtils.primaryColor),
                  ),
                  const SizedBox(height: 10.0),
                  customFormTextField(
                      labelText: "Email",
                      name: "email",
                      initialValue: "",
                      hintText: "abc@gmail.com",
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.email(),
                      ])),
                  customFormTextField(
                      labelText: "Password",
                      name: "password",
                      initialValue: "",
                      hintText: "********",
                      obscureText: true,
                      suffixIcon: IconButton(
                        icon:  Icon(
                          Icons.remove_red_eye,
                          color: ColorUtils.primaryColor,
                        ),
                        onPressed: () {},
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.minLength(6),
                      ])),
                  SizedBox(height: 50),
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color:ColorUtils.secondaryColor,
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Log in",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )),
                  ),
                  const SizedBox(height: 10.0),
                   Text(
                    textAlign: TextAlign.center,
                    "Forgot Password?",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: ColorUtils.primaryColor),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterView()));
                    },
                    child:  Text(
                      textAlign: TextAlign.center,
                      "Signup !",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: ColorUtils.primaryColor),
                    ),
                  )
                ])),
      ),
    ));
  }
}