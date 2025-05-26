import 'package:app_market_challenge/app/models/repository/repository_general.dart';
import 'package:app_market_challenge/app/models/request/register_user_request.dart';
import 'package:app_market_challenge/core/helpers/custom_snackbar.dart';
import 'package:app_market_challenge/core/helpers/helpers.dart';
import 'package:app_market_challenge/core/helpers/navigator_help.dart';
import 'package:app_market_challenge/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class RegisterController with ChangeNotifier {
  RepositoryGeneral repositoryGeneral = RepositoryGeneral();

  TextEditingController ctrlNames = TextEditingController(text: '');
  TextEditingController ctrlLastNames = TextEditingController(text: '');
  TextEditingController ctrlMaternalNames = TextEditingController(text: '');
  TextEditingController ctrlEmail = TextEditingController(text: '');
  TextEditingController ctrlPassword = TextEditingController(text: '');
  TextEditingController ctrlPassword2 = TextEditingController(text: '');
  TextEditingController ctrlZipCode = TextEditingController(text: '');
  TextEditingController ctrlAddress = TextEditingController(text: '');
  TextEditingController ctrlNumberPhone = TextEditingController(text: '');

  bool _visiblePassword1 = false;
  bool _visiblePassword2 = false;
  bool _isRegistering = false;

  set visiblePassword1(bool value) {
    _visiblePassword1 = value;
    notifyListeners();
  }

  set visiblePassword2(bool value) {
    _visiblePassword2 = value;
    notifyListeners();
  }

  set isRegistering(bool value) {
    _isRegistering = value;
    notifyListeners();
  }

  bool get isRegistering => _isRegistering;
  bool get visiblePassword1 => _visiblePassword1;
  bool get visiblePassword2 => _visiblePassword2;

  Future<void> registerUser(BuildContext context) async {
    isRegistering = true;
    try {
      final response = await repositoryGeneral.registerUser(
        RegisterUserRequest(
          nombres: ctrlNames.text,
          apellidoMaterno: ctrlLastNames.text,
          apellidoPaterno: ctrlMaternalNames.text,
          celular: ctrlNumberPhone.text,
          email: ctrlEmail.text,
          direccion: ctrlAddress.text,
          codigoPostal: ctrlZipCode.text,
          password: ctrlPassword.text,
        ),
      );
      CustomSnackbar.showSnackBarCustom(
        context,
        title: 'Validación',
        message: response.message ?? '',
        color: AppColors.green,
      );
      NavigatorHelp.goToLogin(context);
    } catch (e) {
      CustomSnackbar.showSnackBarCustom(
        context,
        title: 'Validar',
        message: e.toString(),
        color: AppColors.warningColor,
      );
      print(e);
    } finally {
      isRegistering = false;
    }
  }
}
