import 'package:app_market_challenge/app/ui/components/button/btn_primary_ink.dart';
import 'package:app_market_challenge/app/ui/components/field_form.dart';
import 'package:app_market_challenge/app/ui/views/register/register_controller.dart';
import 'package:app_market_challenge/core/helpers/navigator_help.dart';
import 'package:app_market_challenge/core/theme/app_colors.dart';
import 'package:app_market_challenge/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final registerController = Provider.of<RegisterController>(context);

    Widget name = FieldForm(
      label: "Nombre",
      hintText: "Ingresa tu nombre",
      textInputType: TextInputType.emailAddress,
      textEditingController: registerController.ctrlNames,
    );

    Widget lastName = FieldForm(
      label: "Apellido paterno",
      hintText: "Ingresa tu apellido paterno",
      textInputType: TextInputType.emailAddress,
      textEditingController: registerController.ctrlLastNames,
    );

    Widget maternalSurname = FieldForm(
      label: "Apellido materno",
      hintText: "Ingresa tu apellido materno",
      textInputType: TextInputType.emailAddress,
      textEditingController: registerController.ctrlMaternalNames,
    );

    Widget email = FieldForm(
      label: "Correo",
      hintText: "Ingresa tu correo",
      textInputType: TextInputType.emailAddress,
      textEditingController: registerController.ctrlEmail,
    );

    Widget password = FieldForm(
      label: "Contraseña",
      hintText: "Ingresa tu contraseña",
      privateText: registerController.visiblePassword1,
      suffix: IconButton(
        onPressed:
            () =>
                registerController.visiblePassword1 =
                    !registerController.visiblePassword1,
        icon: Icon(
          registerController.visiblePassword1
              ? Icons.visibility
              : Icons.visibility_off,
        ),
      ),
      textEditingController: registerController.ctrlPassword,
      onEditingComplete: () {
        FocusScope.of(context).unfocus();
        // Lógica para validar el formulario
      },
    );

    Widget password2 = FieldForm(
      label: "Contraseña",
      hintText: "Ingresa tu contraseña",
      privateText: registerController.visiblePassword1,
      suffix: IconButton(
        onPressed:
            () =>
                registerController.visiblePassword2 =
                    !registerController.visiblePassword2,
        icon: Icon(
          registerController.visiblePassword2
              ? Icons.visibility
              : Icons.visibility_off,
        ),
      ),
      textEditingController: registerController.ctrlPassword2,
      onEditingComplete: () {
        FocusScope.of(context).unfocus();
        // Lógica para validar el formulario
      },
    );

    Widget btnRegister = BtnPrimaryInk(
      text: "Registrarme",
      loading: registerController.isRegistering,
      onTap: () => registerController.registerUser(context),
    );

    Widget goToLogin = InkWell(
      onTap: () => NavigatorHelp.goToLogin(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('¿Ya tienes una cuenta? '),
          Text('Ingresar', style: AppTextStyle(context).bold14(color: AppColors.primaryConst, fontWeight: FontWeight.bold),),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 350.0,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 251, 251, 251),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            spacing: 20.0,
            children: [
              Text(
                'Completa los datos para crear tu cuenta',
                style: AppTextStyle(context).bold16(color: Colors.black),
              ),
              name,
              lastName,
              maternalSurname,
              email,
              password,
              // Spacer(),
              btnRegister,
              goToLogin,
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
