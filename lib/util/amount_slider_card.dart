import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AmountSliderCard extends StatefulWidget {
  const AmountSliderCard({super.key});

  @override
  State<AmountSliderCard> createState() => _AmountSliderCardState();
}

class _AmountSliderCardState extends State<AmountSliderCard> {
  double _currentValue = 8500.0; // Initial value
  final double _minValue = 0;
  final double _maxValue = 10000;

  @override
  Widget build(BuildContext context) {
    final currencyFormat = NumberFormat.currency(symbol: "\$");

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Label
          Text(
            "Amount: ${currencyFormat.format(_currentValue)}",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          // Slider
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.blue,
              inactiveTrackColor: Colors.grey[300],
              thumbColor: Colors.white,
              overlayColor: Colors.blue.withOpacity(0.2),
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10),
              trackHeight: 4,
            ),
            child: Slider(
              min: _minValue,
              max: _maxValue,
              value: _currentValue,
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              },
            ),
          ),

          // Labels under slider
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$0", style: TextStyle(color: Colors.grey[600])),
              Text("\$4,600", style: TextStyle(color: Colors.grey[600])),
              Text("\$10,000", style: TextStyle(color: Colors.grey[600])),
            ],
          ),
        ],
      ),
    );
  }
}
