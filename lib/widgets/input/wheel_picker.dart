import 'package:flutter/material.dart';

class WheelPicker extends StatelessWidget {
  final Function(int) onChange;
  final String label;
  final int count;
  const WheelPicker(
      {super.key,
      required this.onChange,
      required this.label,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 140,
        child: Row(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    child: Container(
                      alignment: Alignment.center,
                      height: 26,
                      decoration: const BoxDecoration(
                        border: Border.symmetric(
                          horizontal:
                              BorderSide(color: Colors.redAccent, width: 2),
                        ),
                      ),
                    ),
                  ),
                  ListWheelScrollView(
                    itemExtent: 26,
                    diameterRatio: 1,
                    overAndUnderCenterOpacity: 0.1,
                    onSelectedItemChanged: onChange,
                    physics: const BouncingScrollPhysics(),
                    children: List.generate(
                      count,
                      (index) => Align(
                        alignment: Alignment.center,
                        child: Text(
                          index.toString(),
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                label,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
