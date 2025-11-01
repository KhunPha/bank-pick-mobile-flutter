import 'package:flutter/material.dart';

class BirthDatePicker extends StatefulWidget {
  const BirthDatePicker({super.key, required this.title});
  final String title;

  @override
  State<BirthDatePicker> createState() => _BirthDatePickerState();
}

class _BirthDatePickerState extends State<BirthDatePicker> {
  int selectedDay = 28;
  String selectedMonth = "September";
  int selectedYear = 2000;

  final List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),

        // ✅ Use Flexible and spacing that scales safely
        Row(
          children: [
            Flexible(
              flex: 2,
              child: DropdownButtonFormField<int>(
                value: selectedDay,
                items: List.generate(31, (index) {
                  int day = index + 1;
                  return DropdownMenuItem(
                    value: day,
                    child: Text(day.toString()),
                  );
                }),
                onChanged: (value) => setState(() => selectedDay = value!),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  isDense: true,
                ),
              ),
            ),
            const SizedBox(width: 10),

            Flexible(
              flex: 3,
              child: DropdownButtonFormField<String>(
                value: selectedMonth,
                items: months.map((month) {
                  return DropdownMenuItem(
                    value: month,
                    child: Text(month, overflow: TextOverflow.ellipsis),
                  );
                }).toList(),
                onChanged: (value) => setState(() => selectedMonth = value!),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  isDense: true,
                ),
              ),
            ),
            const SizedBox(width: 10),

            Flexible(
              flex: 2,
              child: DropdownButtonFormField<int>(
                value: selectedYear,
                items: List.generate(80, (index) {
                  int year = 2025 - index;
                  return DropdownMenuItem(
                    value: year,
                    child: Text(year.toString()),
                  );
                }),
                onChanged: (value) => setState(() => selectedYear = value!),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  isDense: true,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
