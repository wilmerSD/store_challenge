import 'dart:async';
import 'package:app_market_challenge/app/models/repository/repository_general.dart';
import 'package:flutter/widgets.dart';

class HomeController with ChangeNotifier {
  //INSTANCIA
  RepositoryGeneral orderRepository = RepositoryGeneral();

  //VARIABLES

  Map<int, bool> _loadingOrders = {};

  bool isOrderLoading(int orderId) => _loadingOrders[orderId] ?? false;

  void setOrderLoading(int orderId, bool isLoading) {
    _loadingOrders[orderId] = isLoading;
    notifyListeners();
  }

  String _fullName = '';
  int _optionOrders = 0;
  int _orderTotalProcessing = 0;
  set optionOrders(int value) {
    _optionOrders = value;
    notifyListeners();
  }

  set orderTotalProcessing(int value) {
    _orderTotalProcessing = value;
    notifyListeners();
  }

  set fullName(String value) {
    _fullName = value;
    notifyListeners();
  }

  String get fullName => _fullName;
  int get optionOrders => _optionOrders;
  int get orderTotalProcessing => _orderTotalProcessing;

  //FUNCIONES
  late Timer timer;
  String _currentTime = '';


  // Obtiene la hora formateada
  String get currentTime => _currentTime;

  bool _isGettingListOrders = false;

  set isGettingListOrders(bool value) {
    _isGettingListOrders = value;
    notifyListeners();
  }

  bool get isGettingListOrders => _isGettingListOrders;

  bool _isOrderDelivered = false;
  bool _isUpdatingOrder = false;

  set isUpdatingOrder(bool value) {
    _isUpdatingOrder = value;
    notifyListeners();
  }

  set isOrderDelivered(bool value) {
    _isOrderDelivered = value;
    notifyListeners();
  }

  bool get isOrderDelivered => _isOrderDelivered;
  bool get isUpdatingOrder => _isUpdatingOrder;

}
