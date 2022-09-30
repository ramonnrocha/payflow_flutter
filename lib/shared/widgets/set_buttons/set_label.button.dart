// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';

import '../../themes/app_text_styles.dart';
import '../divider_vertical/divider_vertical_widget.dart';
import '../label_button/label.button.dart';

class SetLabelButton extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondyLabel;
  final VoidCallback secondyOnPressed;
  final bool enablePrymaryColor;
  final bool enableSecudaryColor;
  const SetLabelButton(
      {Key? key,
      required this.primaryLabel,
      required this.primaryOnPressed,
      required this.secondyLabel,
      required this.secondyOnPressed,
      this.enablePrymaryColor = false,
      this.enableSecudaryColor = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 57,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            thickness: 1,
            height: 1,
            color: AppColors.stroke,
          ),
          SizedBox(
            height: 56,
            child: Row(children: [
              Expanded(
                  child: LabelButton(
                label: primaryLabel,
                onPressed: primaryOnPressed,
                style: enablePrymaryColor ? TextStyles.buttonPrimary : null,
              )),
              DividerVerticalWidget(),
              Expanded(
                  child: LabelButton(
                label: secondyLabel,
                onPressed: secondyOnPressed,
                style: enableSecudaryColor ? TextStyles.buttonPrimary : null,
              )),
            ]),
          ),
        ],
      ),
    );
  }
}
