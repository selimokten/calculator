class CalculatorBrain {

  late int first_number = 0;
  late int second_number = 0;

  late String pre_operator = '';

  void calculate(String operator, int number){
    if(pre_operator == ''){
      pre_operator == operator;
      first_number = number;
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
    return second_number.toString();
  }

}