import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:uzel_bilisim_task/app/login/viewModel/login_view_model.dart';
import 'package:uzel_bilisim_task/core/widgets/login_background.dart';
import 'package:uzel_bilisim_task/core/widgets/rounded_button.dart';
import 'package:uzel_bilisim_task/core/widgets/rounded_input.dart';
import 'package:uzel_bilisim_task/core/widgets/rounded_password_input.dart';

class LoginView extends LoginViewModel {
  final EdgeInsets paddingLow = EdgeInsets.all(8.0);

  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Giris Yap",
                  style: GoogleFonts.yantramanav(
                    textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                LottieBuilder.asset(
                  "assets/images/1.json",
                  height: size.height * 0.30,
                ),
                SizedBox(height: size.height * 0.03),
                RoundedInputField(
                  controller: controllerEmail,
                  hintText: "Email",
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  controller: controllerPassword,
                  onChanged: (value) {},
                ),
                RoundedButton(
                  text: "Giriş Yap",
                  press: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      fetchUserLogin(
                          controllerEmail.text, controllerPassword.text);
                    }
                  },
                ),
                SizedBox(height: size.height * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// onPressed: () {
//             if (formKey.currentState?.validate() ?? false) {
//               fetchUserLogin(controllerEmail.text, controllerPassword.text);
//             }
//           },



//  Form(
//               key: formKey,
//               autovalidateMode: AutovalidateMode.onUserInteraction,
//               child: buildWrapFormBody()
//               ,)