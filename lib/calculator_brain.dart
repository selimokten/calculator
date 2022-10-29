class CalculatorBrain {
  late String text = '123';
  late String result = '';

  late String pre_operator = '';


  void calculate(String operator) {
    if (true) {
      switch (operator) {
        case 'C':
          {
            clearInput();
            print('C kodu çalıştı');
          }
          break;
        case 'AC':
          {
            clearInput();
            print('AC kodu çalıştı');
          }
          break;
        case '+':
          {
            print('+ kodu çalıştı');
          }
          break;
        case '-':
          {
            print('- kodu çalıştı');
          }
          break;
        default:
          result += operator;
          print(result);   
      }
    }
    // if(operator == 'C'){
    //   // switch (operator) {
    //   //   case 'AC':
    //   //     clearInput();
    //   //     print('Kod çalıştı');
    //   //     break;
    //   //   case 'C':
    //   //     clearInput();
    //   //     print('kod çalıştı')
    //   //     break;
    //   //   // case '%':
    //   //   //   firstNumberIsEmpty() ? pre_operator = '%' :
    //   //   //   break;
    //   //}
    //   clearInput();
    //   print('Kod çalıştı');
    // } else {
    //   result += int.parse(operator);
    // }
  }

  String getResult() {
    return text;
  }

  bool inputIsEmpty() {
    return text == '' ? true : false;
  }

  bool firstNumberIsEmpty() {
    return result == '0' ? true : false;
  }

  void clearInput() {
    text = '';
  }
}
