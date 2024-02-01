import 'package:flutter/material.dart';

class ColorPalleta extends StatefulWidget {
  const ColorPalleta({super.key});

  @override
  State<ColorPalleta> createState() => _ColorPalletaState();
}

int selectedIndex = 0;

class _ColorPalletaState extends State<ColorPalleta> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 6.0),
      child: Wrap(
        children: List<Widget>.generate(
          3,
          (int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: index == 0
                      ? Colors.grey.shade800
                      : index == 1
                          ? Colors.blue.shade900
                          : Colors.amber,
                  child: selectedIndex == index
                      ? const Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Container(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
