import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int? firstOperand; //처음 눌러지는 버튼의 숫자를 위한 변수
  String? operator; //연산 기호를 위한 것
  int? secondOperand; // 연산을 하기 위한 두번째 숫자를 위한 것
  dynamic result; // 연사의 결과를 담기위한 변수

  void numberTapped(int tappedNumber) {
    if (firstOperand == null) {
      setState(() {
        firstOperand = tappedNumber;
      });
      return;
    }

    if (operator == null) {
      setState(() {
        firstOperand = int.parse("$firstOperand$tappedNumber");
      });
      return;
    }

    if (secondOperand == null) {
      setState(() {
        secondOperand = tappedNumber;
      });
      return;
    }

    setState(() {
      secondOperand = int.parse("$secondOperand$tappedNumber");
    });
  }

  void clearNumber() {
    setState(() {
      firstOperand = null;
      operator = null;
      secondOperand = null;
      result = null;
    });
  }

  void operatorTapped(String tappedOperator) {
    setState(() {
      operator = tappedOperator;
    });
  }

  String showText() {
    if (secondOperand != null) {
      return "firstOperand$operator$secondOperand";
    }

    if (operator != null) {
      return "$firstOperand$operator";
    }

    if (firstOperand != null) {
      return "$firstOperand";
    }
    return "0";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Align(
            alignment: Alignment.bottomRight,
            child:
                Text(showText(), style: const TextStyle(color: Colors.white))),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(7);
                  },
                  child: const Text("7"),
                ),
              ), // 일정한 간격으로 맞춰주는거
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(8);
                  },
                  child: const Text("8"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(9);
                  },
                  child: const Text("9"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    operatorTapped("÷");
                  },
                  child: const Text("÷"),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(4);
                  },
                  child: const Text("4"),
                ),
              ), // 일정한 간격으로 맞춰주는거
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(5);
                  },
                  child: const Text("5"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(6);
                  },
                  child: const Text("6"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    operatorTapped("×");
                  },
                  child: const Text("×"),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(1);
                  },
                  child: const Text("1"),
                ),
              ), // 일정한 간격으로 맞춰주는거
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(2);
                  },
                  child: const Text("2"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(3);
                  },
                  child: const Text("3"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    operatorTapped("-");
                  },
                  child: const Text("–"),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    clearNumber();
                  },
                  child: const Text("C"),
                ),
              ), // 일정한 간격으로 맞춰주는거
              Expanded(
                child: TextButton(
                  onPressed: () {
                    numberTapped(0);
                  },
                  child: const Text("0"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: const Text("="),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    operatorTapped("+");
                  },
                  child: const Text("+"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
