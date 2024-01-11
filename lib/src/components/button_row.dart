import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key, required this.onSavePressed});

  final void Function() onSavePressed;

  @override
  Widget build(BuildContext context) {
    final localizations = MaterialLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.grey,
              padding: const EdgeInsets.all(0),
            ),
            onPressed: () {
              Navigator.of(context).pop<DateTime>();
            },
            child: Text(
              localizations.cancelButtonLabel,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0.0, 12.0, 0.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.all(0),
              ),
              onPressed: onSavePressed,
              child: Text(
                localizations.saveButtonLabel,
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
