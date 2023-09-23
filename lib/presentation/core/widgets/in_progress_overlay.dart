import 'package:flutter/material.dart';

class InProgressOverlay extends StatelessWidget {
  final bool inProgress;
  final String? text;

  const InProgressOverlay({
    super.key,
    required this.inProgress,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !inProgress,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: inProgress ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: inProgress,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              if (text != null) ...[
                const SizedBox(height: 8),
                Text(
                  text!,
                  style: Theme.of(context).primaryTextTheme.titleMedium,
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
