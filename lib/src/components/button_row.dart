import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key, required this.onSavePressed});

  final void Function() onSavePressed;

  @override
  Widget build(BuildContext context) {
    final localizations = MaterialLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop<DateTime>();
              },
              child: Text(
                localizations.cancelButtonLabel,
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
            child: VerticalDivider(),
          ),
          Expanded(
            child: TextButton(
              onPressed: onSavePressed,
              child: Text(
                localizations.saveButtonLabel,
                style: TextStyle(color: Colors.green),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
