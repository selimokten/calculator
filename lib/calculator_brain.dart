class CalculatorBrain {

  late String text = '123';
  late int first_number = 0;
  late int second_number = 0;

  late String pre_operator = '';

  void calculate(String operator){
    if(operator == 'AC' || operator == 'C' || operator == '%' || operator == '÷' || operator == 'x' || operator == '+'){
      switch (operator) {
        case 'AC':
          clearInput();
          break;
        case 'C':
          clearInput();
          break;
        // case '%':
        //   firstNumberIsEmpty() ? pre_operator = '%' :   
        //   break;
      }
    } else {
      switch (operator) {
        case '+':
          second_number += first_number;
          break;
        default:
      }
    }
  }

  String getResult(){
    return text;
  }

  bool inputIsEmpty(){
    return text == '' ? true : false;
  }

  bool firstNumberIsEmpty(){
    return first_number == '0' ? true : false;
  }

  void clearInput(){
    text = '';   
  }

}