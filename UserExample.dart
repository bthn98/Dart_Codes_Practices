void main() {
  int? newMoney;
  if (newMoney != null) {
    print(newMoney + 10);
  } else {
    print(10 + 10);
  }
  Map<String, int?> customersMoney = {
    'Ahmet': 50,
    'Veli': 25,
    'Mete': 0,
    'Kamil': null
  };

  for (var customers in customersMoney.keys) {
    int? money = customersMoney[customers];
    if (money != null) {
      if (money > 0) {
        print('Hoşgeldiniz.');
      } else {
        print('Bye Bye');
      }
    } else {
      print('Buyrun size hesap açalım.');
    }
    bool result = controlMoney(money) == null ? false : true;
    print(result);
    seperator();
  }
  User2 user1 = User2('Batu', 15, city: 'İzmir', age: 24);
  print(user1.city);
  print(user1.userCode);
  seperator();
  print(!user1.isEmptyName);
}

int? controlMoney(int? money) {
  if (money != null && money > 0) {
    return money;
  } else {
    return null;
  }
}

void seperator() {
  return print('-' * 100);
}

class User1 {
  late final String name;
  late final int money;
  late final int? age;
  late final String? city;
  late final String userCode;

  User1(String name, int money, {int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    userCode = (city ?? 'İzmir') + name;
  }
}

//User1 class'ından daha kullanışlı olan kullanım aşağıda.
class User2 {
  late final String name;
  late final int money;
  late final int? age;
  late final String? city;
  late final String userCode;
  User2(this.name, this.money, {this.age, this.city}) {
    userCode = (city ?? 'İzmir') + name;
  }
  bool get isEmptyName => name.isEmpty;
}
