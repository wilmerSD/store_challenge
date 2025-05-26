import 'package:app_market_challenge/app/ui/components/button/btn_primary_ink.dart';
import 'package:app_market_challenge/app/ui/components/field_form.dart';
import 'package:app_market_challenge/app/ui/views/login/login_controller.dart';
import 'package:app_market_challenge/core/helpers/navigator_help.dart';
import 'package:app_market_challenge/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginController = Provider.of<LoginController>(context);

    Widget password = FieldForm(
      label: "Contraseña",
      hintText: "Ingresa tu contraseña",
      privateText: loginController.visiblePassword,
      suffix: IconButton(
        onPressed:
            () =>
                loginController.visiblePassword =
                    !loginController.visiblePassword,
        icon: Icon(
          loginController.isVisibleIcon
              ? Icons.visibility
              : Icons.visibility_off,
        ),
      ),
      textEditingController: loginController.ctrlPasswordText,
      onEditingComplete: () {
        FocusScope.of(context).unfocus();
        // Lógica para validar el formulario
      },
    );

    Widget user = FieldForm(
      label: "Usuario",
      hintText: "Ingresa tu usuario",
      textInputType: TextInputType.emailAddress,
      textEditingController: loginController.ctrlEmailText,
    );

    Widget button = BtnPrimaryInk(
      text: "Ingresar",
      loading: loginController.isValidating,
      onTap: () => loginController.login(context),
    );

    Widget rememberPass = InkWell(
      onTap: () {
        loginController.rememberPass = !loginController.rememberPass;
      },
      child: Row(
        children: [
          Checkbox(
            activeColor: AppColors.primary(context),
            value: loginController.rememberPass,
            onChanged: (_) {
              loginController.rememberPass = !loginController.rememberPass;
            },
          ),
          const Text("Recordar datos"),
        ],
      ),
    );

    Widget tittle = Text(
      'MiMercado',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryConst,
      ),
    );

    Widget goToRegister = InkWell(
      onTap: () => NavigatorHelp.goToRegister(context),
      child: Text('Registrarme'),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Center(
          child: Container(
            width: 350.0,
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 251, 251, 251),
              borderRadius: BorderRadius.circular(8.0),
            ),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 25.0,
              children: [
                tittle,
                user,
                password,
                rememberPass,
                button,
                goToRegister
              ],
            ),
          ),
        ),
      ),
    );
  }
}
