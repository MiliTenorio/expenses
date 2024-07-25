import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String? label;
  final double? value;
  final double? percentage;

  const ChartBar({this.label, this.value, this.percentage});

  Color colorPercentage(BuildContext context) {
    Color color = Theme.of(context).colorScheme.primary;
    if (percentage! > 0.4) color = Colors.red;
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //Show values in graph
        // SizedBox(
        //     height: 20,
        //     child: FittedBox(child: Text(value!.toStringAsFixed(2)))),
        Container(
          height: 5,
          padding: const EdgeInsets.all(10),
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: 60,
          width: 10,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: const Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              FractionallySizedBox(
                heightFactor: percentage,
                child: Container(
                  decoration: BoxDecoration(
                    color: colorPercentage(context),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Text(label!),
      ],
    );
  }
}
