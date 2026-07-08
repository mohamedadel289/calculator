import 'package:flutter/material.dart';

class CalculatorButton extends StatefulWidget {
  final Widget child;
  final String? value;
  final Function(String) onPressed;
  final Color backgroundColor;
  final Color foregroundColor;

  const CalculatorButton({
    super.key,
    required this.child,
    this.value,
    required this.onPressed,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  @override
  State<CalculatorButton> createState() => _CalculatorButtonState();
}

class _CalculatorButtonState extends State<CalculatorButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        widget.onPressed(widget.value ?? _buttonValueFromChild());
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
        minimumSize: const Size(0, 60),
        backgroundColor: widget.backgroundColor,
        foregroundColor: widget.foregroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: widget.child,
    );
  }

  String _buttonValueFromChild() {
    if (widget.child is Text) {
      return (widget.child as Text).data ?? '';
    }
    return '';
  }
}
