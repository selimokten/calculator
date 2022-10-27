class CalculatorBrain {
  late String input = '';
  late int number;

  void setInput(String input){
    this.input += input;
    print(this.input);
  }

  void clearInput(){
    this.input = '';
  }

  bool inputIsEmpty(){
    if(input == ''){
      return true;
    } return false;
  }

  void changeNumber(){
    if(this.input != ''){
      var number = int.parse(input);
      number *= -1;
      this.input = number.toString();
    } 
  }

  String getInput(){
    return this.input;
  }

  void math_add(){
    number = int.parse(this.input);
    clearInput();
    print(number);
  }
}