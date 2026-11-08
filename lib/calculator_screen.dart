import 'package:calculator/calculator_button.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  static const String routeName = '/calculator';
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff17181A),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  result,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: CalculatorButton(
                                onPressed: (label) => onclearpressed(label),
                                backgroundColor: const Color(0xff616161),
                                foregroundColor: const Color(0xffffffff),
                                child: Text('Ac', style: _buttonTextStyle()),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: CalculatorButton(
                                onPressed: (label) => onbackspaceclicked(label),
                                value: 'backspace',
                                backgroundColor: const Color(0xff616161),
                                foregroundColor: const Color(0xffffffff),
                                child: const Icon(
                                  Icons.backspace_outlined,
                                  size: 30,
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: CalculatorButton(
                                onPressed: (label) => onoperatorclicked(label),
                                backgroundColor: const Color(0xff005DB2),
                                foregroundColor: const Color(0xffffffff),
                                child: Text('/', style: _buttonTextStyle()),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: CalculatorButton(
                                onPressed: (label) => ondigitclicked(label),
                                backgroundColor: const Color(0xff616161),
                                foregroundColor: const Color(0xffffffff),
                                child: Text('7', style: _buttonTextStyle()),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: CalculatorButton(
                                onPressed: (label) => ondigitclicked(label),
                                backgroundColor: const Color(0xff616161),
                                foregroundColor: const Color(0xffffffff),
                                child: Text('8', style: _buttonTextStyle()),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: CalculatorButton(
                                onPressed: (label) => ondigitclicked(label),
                                backgroundColor: const Color(0xff616161),
                                foregroundColor: const Color(0xffffffff),
                                child: Text('9', style: _buttonTextStyle()),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: CalculatorButton(
                                onPressed: (label) => ondigitclicked(label),
                                backgroundColor: const Color(0xff616161),
                                foregroundColor: const Color(0xffffffff),
                                child: Text('4', style: _buttonTextStyle()),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: CalculatorButton(
                                onPressed: (label) => ondigitclicked(label),
                                backgroundColor: const Color(0xff616161),
                                foregroundColor: const Color(0xffffffff),
                                child: Text('5', style: _buttonTextStyle()),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: CalculatorButton(
                                onPressed: (label) => ondigitclicked(label),
                                backgroundColor: const Color(0xff616161),
                                foregroundColor: const Color(0xffffffff),
                                child: Text('6', style: _buttonTextStyle()),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: CalculatorButton(
                                onPressed: (label) => ondigitclicked(label),
                                backgroundColor: const Color(0xff616161),
                                foregroundColor: const Color(0xffffffff),
                                child: Text('1', style: _buttonTextStyle()),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: CalculatorButton(
                                onPressed: (label) => ondigitclicked(label),
                                backgroundColor: const Color(0xff616161),
                                foregroundColor: const Color(0xffffffff),
                                child: Text('2', style: _buttonTextStyle()),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: CalculatorButton(
                                onPressed: (label) => ondigitclicked(label),
                                backgroundColor: const Color(0xff616161),
                                foregroundColor: const Color(0xffffffff),
                                child: Text('3', style: _buttonTextStyle()),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: CalculatorButton(
                                onPressed: ondigitclicked,
                                backgroundColor: const Color(0xff616161),
                                foregroundColor: const Color(0xffffffff),
                                child: Text('0', style: _buttonTextStyle()),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: CalculatorButton(
                                onPressed: ondotclicked,
                                backgroundColor: const Color(0xff616161),
                                foregroundColor: const Color(0xffffffff),
                                child: Text('.', style: _buttonTextStyle()),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 75,
                        height: 60,
                        child: CalculatorButton(
                          onPressed: onoperatorclicked,
                          backgroundColor: const Color(0xff005DB2),
                          foregroundColor: const Color(0xffffffff),
                          child: Text('*', style: _buttonTextStyle()),
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 75,
                        height: 60,
                        child: CalculatorButton(
                          onPressed: onoperatorclicked,
                          backgroundColor: const Color(0xff005DB2),
                          foregroundColor: const Color(0xffffffff),
                          child: Text('-', style: _buttonTextStyle()),
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 75,
                        height: 100,
                        child: CalculatorButton(
                          onPressed: onoperatorclicked,
                          backgroundColor: const Color(0xff005DB2),
                          foregroundColor: const Color(0xffffffff),
                          child: Text('+', style: _buttonTextStyle()),
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 75,
                        height: 100,
                        child: CalculatorButton(
                          onPressed: onequalsclicked,
                          backgroundColor: const Color(0xff005DB2),
                          foregroundColor: const Color(0xffffffff),
                          child: Text('=', style: _buttonTextStyle()),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _buttonTextStyle() {
    return const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: Color(0xffffffff),
    );
  }

  String result = '';
  String savedNumber = '';
  String savedOperator = '';
  void ondigitclicked(String digit) {
    result += digit;
    setState(() {});
  }

  void onoperatorclicked(String operator) {
    if (result.isEmpty || result == 'Error') return;
    if (savedNumber.isEmpty) {
      savedNumber = result;
      savedOperator = operator;
    } else {
      savedNumber = calculate(savedNumber, savedOperator, result);
    }
    savedOperator = operator;
    result = '';
    setState(() {});
  }

  String calculate(String lhs, String operator, String rhs) {
    double left = double.parse(lhs);
    double right = double.parse(rhs);
    if (operator == '/' && right == 0) {
      return 'Error';
    }
    late double res;
    switch (operator) {
      case '+':
        res = left + right;
      case '-':
        res = left - right;
      case '*':
        res = left * right;
      case '/':
        res = left / right;
    }
    return res == res.truncateToDouble()
        ? res.toInt().toString()
        : res.toString();
  }

  void onclearpressed(String clear) {
    result = '';
    savedNumber = '';
    savedOperator = '';
    setState(() {});
  }

  void onequalsclicked(String _) {
    if (savedNumber.isEmpty ||
        savedOperator.isEmpty ||
        result.isEmpty ||
        result == 'Error') {
      return;
    }
    result = calculate(savedNumber, savedOperator, result);
    savedNumber = '';
    savedOperator = '';
    setState(() {});
  }

  void ondotclicked(String dot) {
    if (result.contains('.')) return;
    result += dot;
    setState(() {});
  }

  void onbackspaceclicked(String backspace) {
    if (result.isEmpty) return;
    result = result.substring(0, result.length - 1);
    setState(() {});
  }
}
