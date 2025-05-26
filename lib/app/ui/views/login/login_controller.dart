import "package:app_market_challenge/app/models/repository/repository_general.dart";
import "package:app_market_challenge/app/models/request/login_request.dart";
import "package:app_market_challenge/core/helpers/custom_snackbar.dart";
import "package:app_market_challenge/core/helpers/navigator_help.dart";
import "package:app_market_challenge/core/theme/app_colors.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class LoginController with ChangeNotifier {
  RepositoryGeneral repositoryGeneral = RepositoryGeneral();

  int counter = 0;
  int idUser = 0;
  TextEditingController ctrlEmailText = TextEditingController(text: '');//wilmer@example.com
  TextEditingController ctrlPasswordText = TextEditingController(text: '');//secreto123

  bool isVisibleIcon = false;
  bool _isValidating = false;
  bool _rememberPass = false;
  bool _visiblePassword = true;

  set rememberPass(bool value) {
    _rememberPass = value;
    notifyListeners();
  }

  set isValidating(bool value) {
    _isValidating = value;
    notifyListeners();
  }

  set visiblePassword(bool value) {
    _visiblePassword = value;
    notifyListeners();
  }

  bool get isValidating => _isValidating;
  bool get rememberPass => _rememberPass;
  bool get visiblePassword => _visiblePassword;

  String nameUser = '';
  String lastName = '';
  String emailUser = '';

  Future<void> login(BuildContext context) async {
    isValidating = true;
    try {
      final response = await repositoryGeneral.postLogin(
        LoginRequest(
          email: ctrlEmailText.text,
          password: ctrlPasswordText.text,
        ),
      );
      nameUser = '${response.nombres}  ${response.apellidoPaterno}';
      idUser = response.idCliente ?? 0;
      emailUser = response.email ?? '';
      NavigatorHelp.goToHome(context);
    } catch (e) {
      CustomSnackbar.showSnackBarCustom(
        context,
        title: 'Validar',
        message: e.toString(),
        color: AppColors.warningColor,
      );
      print(e);
      return;
    } finally {
      isValidating = false;
    }
    
  }
}
