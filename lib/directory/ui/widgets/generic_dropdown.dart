import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:s21_directory/core/constants.dart';

class AppDropdownInput<T> extends StatelessWidget {
  final String hintText;
  final List<T> options;
  final T value;
  final String Function(T) getLabel;
  final void Function(T?) onChanged;
  final VoidCallback onCanceled;

  const AppDropdownInput({
    Key? key,
    this.hintText = 'Por favor, selecciona una opción',
    this.options = const [],
    required this.getLabel,
    required this.value,
    required this.onChanged,
    required this.onCanceled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: FormField<T>(
              builder: (FormFieldState<T> state) {
                return InputDecorator(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 8.0),
                    labelText: hintText,
                    // border:
                    //     OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                  ),
                  isEmpty: value != null && value == '',
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<T>(
                      value: value,
                      isExpanded: true,
                      isDense: true,
                      onChanged: onChanged,
                      items: options.map((T value) {
                        return DropdownMenuItem<T>(
                          value: value,
                          child: Text(
                            getLabel(value),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                );
              },
            ),
          ),
          if (value != null)
            IconButton(
                onPressed: onCanceled, icon: const Icon(CupertinoIcons.clear)),
          if (value != null) const SizedBox(width: 4.0),
        ],
      ),
    );
  }
}
