class PointsBank {
  final String? accountName;
  final int accountBalance;

  PointsBank({
    this.accountName,
    this.accountBalance = 500,
  });

  int getBalance() {
    return accountBalance;
  }
}
