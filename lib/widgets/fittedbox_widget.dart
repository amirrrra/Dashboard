import 'package:flutter/widgets.dart';

class FittedboxWidget extends StatelessWidget {
  final Widget? child;
  const FittedboxWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.centerLeft,
      child: child,
    );
  }
}
