import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  InputField({
    Key? key,
    required this.label,
    this.hintText,
    this.controller,
    required this.obscureText,
    this.inputType,
    this.isPassword = false,
    this.autoFocus,
    required this.isEmail,
    required this.isName,
  }) : super(key: key);

  final String? hintText;
  final String label;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? inputType;
  final bool isPassword;
  final bool? autoFocus;
  final bool isName;
  final bool isEmail;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool isValidEmail(String email) {
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegex.hasMatch(email);
  }

  bool isEmailValid = false;
  bool isNameValid = false;
  bool _obscureText = false;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
    widget.controller?.addListener(_validateInput);
  }

  void _validateInput() {
    final text = widget.controller?.text ?? '';
    setState(() {
      if (text.isNotEmpty) {
        if (widget.isName) {
          isNameValid = text.length >= 2;
        } else if (widget.isEmail) {
          isEmailValid = isValidEmail(text);
        }
      } else {
        isNameValid = true;
        isEmailValid = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          constraints: BoxConstraints(
            minHeight: 60, // Minimum touch target size
            maxHeight: 80, // Maximum height to prevent excessive vertical space
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  widget.label,
                  style: TextStyle(
                    color: _getLabelColor(),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: TextField(
                  autofocus: widget.autoFocus ?? false,
                  keyboardType: widget.inputType,
                  obscureText: _obscureText,
                  controller: widget.controller,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: widget.hintText,
                    hintStyle: TextStyle(
                      color: Colors.grey.shade400,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    isDense: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: _getBorderColor(),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: _getBorderColor(),
                      ),
                    ),
                    suffixIcon: _getSuffixIcon(),
                  ),
                ),
              ),
              if (_showErrorMessage())
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    _getErrorMessage(),
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Color _getBorderColor() {
    final text = widget.controller?.text ?? '';
    if (text.isEmpty) return Colors.grey.shade300;
    if ((widget.isName && !isNameValid) || (widget.isEmail && !isEmailValid)) {
      return Colors.red;
    }
    return Colors.grey.shade300;
  }

  Color _getLabelColor() {
    final text = widget.controller?.text ?? '';
    if (text.isEmpty) return Colors.black;
    if ((widget.isName && !isNameValid) || (widget.isEmail && !isEmailValid)) {
      return Colors.red;
    }
    return Colors.black;
  }

  Widget _getSuffixIcon() {
    if (widget.isPassword) {
      return IconButton(
        onPressed: () => setState(() => _obscureText = !_obscureText),
        icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
      );
    }
    final text = widget.controller?.text ?? '';
    if (text.isNotEmpty) {
      final isValid = widget.isName ? isNameValid : isEmailValid;
      return Icon(
        size: 25,
        isValid ? Icons.check : Icons.close,
        color: isValid ? Colors.green : Colors.red,
      );
    }
    return SizedBox.shrink();
  }

  bool _showErrorMessage() {
    final text = widget.controller?.text ?? '';
    return text.isNotEmpty && ((widget.isName && !isNameValid) || (widget.isEmail && !isEmailValid));
  }

  String _getErrorMessage() {
    if (widget.isName && !isNameValid) {
      return 'Not a valid name. Should be at least 2 characters';
    }
    if (widget.isEmail && !isEmailValid) {
      return 'Not a valid email address. Format: your@example.com';
    }
    return '';
  }
}