import 'package:e_wallet_app/model/account_model.dart';
import 'package:flutter/material.dart';

class PointsProvider extends ChangeNotifier {
  final pointsBank = PointsBank();

  int depositPoints(int deposit) {
    final newBalnce = pointsBank.accountBalance + deposit;
    notifyListeners();
    return newBalnce;
  }

  int debitPoints(int debit) {
    final newBalance = pointsBank.accountBalance - debit;
    if (newBalance >= 0) {
      debugPrint('Insufficient Balance');
    }
    notifyListeners();
    return newBalance;
  }
}
