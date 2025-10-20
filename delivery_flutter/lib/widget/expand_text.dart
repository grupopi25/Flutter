import 'package:delivery_flutter/widget/custom_colors.dart';
import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    const int limit = 40;
    final bool long = widget.text.length > limit;
    final String displayText =
        expanded || !long ? widget.text : '${widget.text.substring(0, limit)}...';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          displayText,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: CustomColors.nameSearchColor,
          ),
        ),
        if (long)
          GestureDetector(
            onTap: () => setState(() => expanded = !expanded),
            child: Text(
              expanded ? 'Ler menos' : 'Ler mais',
              style: TextStyle(
                color: CustomColors.thirdColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}
