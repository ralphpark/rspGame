
import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  final VoidCallback? callback;
  final Widget child;
  const InputCard({
    super.key, required this.child, this.callback,
  });

  @override
  Widget build(BuildContext context) {
    //가운데 정렬하고싶어
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 120,
        width: 120,
        child: InkWell(onTap:() => callback?.call(),  child: InputContents(child: child)),
      ),
    );
  }
}

class InputContents extends StatelessWidget {
  const InputContents({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey, width: 8),
          ),
      child: child,
    );
  }
}
