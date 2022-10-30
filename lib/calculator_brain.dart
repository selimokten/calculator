class CalculatorBrain {
  late int firstNumber = 0;
  late int secondNumber = 0;
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
      firstNumber = int.parse(text);
      result = '';
      operation = operator;
    } else if (operator == '+/-') {
      if (inputIsEmpty() == false) {
        int variable;
        variable = int.parse(result) * -1;
        result = variable.toString();
      }
    } else if (operator == '=') {
      secondNumber = int.parse(text);
      switch (operation) {
        case '+':
          result = (firstNumber + secondNumber).toString();
          break;
        case '-':
          result = (firstNumber - secondNumber).toString();
          break;
        case '÷':
          result = (firstNumber ~/ secondNumber).toString();
          break;
        case 'x':
          result = (firstNumber * secondNumber).toString();
          break;
        case '%':
          result = (firstNumber % secondNumber).toString();
          break;
        default:
      }
    } else {
      result += operator;
    }
  }

  String getResult() {
    return text = result;
  }

  bool inputIsEmpty() {
    return text == '' ? true : false;
  }

  void clearInput() {
    firstNumber = 0;
    secondNumber = 0;
    result = '';
    text = '';
  }
}
