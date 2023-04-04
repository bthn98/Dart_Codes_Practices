void main() {
  final userNormal = User('batu', 15);
  userNormal.sayMoneyWithCompanyName();
}

abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);
  void sayMoneyWithCompanyName() {
    print('$name $money paranız vardır');
  }
}

class User extends IUser {
  User(String name, int money) : super(name, money);
}

class BankUser extends IUser {
  final int bankingCode;

  BankUser(String name, int money, this.bankingCode) : super(name, money);
}

class SpecialUser extends IUser {
  final int bankingCode;
  final int discount;

  SpecialUser(String name, int money, this.bankingCode, this.discount)
      : super(name, money);
}
