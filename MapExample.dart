void main() {
  final Map<String, List> bkBank = {
    'Ahmet': [100, 300, 200]
  };
  print(bkBank);
  bkBank['Mehmet'] = [30, 50];
  bkBank['Veli'] = [30, 255];
  print(bkBank);
  for (var name in bkBank.keys) {
    double result = 0;
    for (var money in bkBank[name]!) {
      result += money;
      if (money > 150) {
        print('Sayın $name, Krediniz hazır');
        break;
      }
    }
    print('Sayın ${name} sizin toplam paranız = ${result}');
  }
}
