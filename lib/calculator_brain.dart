class CalculatorBrain {
  late int first_number = 0;
  late int second_number = 0;
  late String result = '';
  late String text = '';
  late String operation = '';

  void calculate(String operator) {
    if (operator == 'AC' || operator == 'C') {
      clearInput();
    } else if (operator == '+' ||
        operator == '-' ||
        operator == '÷' ||
        operator == 'x' ||
        operator == '%') {
      first_number = int.parse(text);
      print(first_number);
      result = '';
      operation = operator;
    } else if (operator == '+/-') {
      int variable;
      variable = int.parse(result) * -1;
      result = variable.toString();
      print(result);
    } else if (operator == '=') {
      second_number = int.parse(text);
      switch (operation) {
        case '+':
          result = (first_number + second_number).toString();
          print(result);
          break;
        case '-':
          result = (first_number - second_number).toString();
          break;
        case '÷':
          result = (first_number ~/ second_number).toString();
          break;
        case 'x':
          result = (first_number * second_number).toString();
          break;
        case '%':
          result = (first_number % second_number).toString();
          break;
        default:
      }
    } else {
      result += operator;
      print(result);
    }
  }

  String getResult() {
    return text = result;
  }

  bool inputIsEmpty() {
    return text == '' ? true : false;
  }

  void clearInput() {
    first_number = 0;
    second_number = 0;
    result = '';
    text = '';
  }
}
