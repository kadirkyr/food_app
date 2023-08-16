import 'package:flutter/material.dart';
import 'package:food_choose/core/constants.dart';

class CoreButton extends StatelessWidget {
  const CoreButton({super.key, required this.text, required this.onPressed, this.color = ProjectColors.secondColor});
  final Color color;
  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 70,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40)))),
          onPressed: onPressed,
          child: Text(
            text,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: Sizes.size25),
          ),
        ));
  }
}

class CoreIconButton extends StatelessWidget {
  const CoreIconButton({super.key, required this.onPressed, required this.icon});
  final void Function() onPressed;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Card(
        color: ProjectColors.secondColor,
        shape: const CircleBorder(),
        child: IconButton(
          onPressed: onPressed,
          icon: icon,
          splashColor: Colors.transparent,
          splashRadius: 1,
        ));
  }
}
