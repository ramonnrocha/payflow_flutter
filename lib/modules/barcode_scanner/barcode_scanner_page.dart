// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/bottom_sheet/bottom_sheet_widget.dart';

import '../../shared/widgets/set_buttons/set_label.button.dart';


class BarCodeScanner extends StatefulWidget {
  const BarCodeScanner({Key? key}) : super(key: key);

  @override
  State<BarCodeScanner> createState() => _BarCodeScannerState();
}

class _BarCodeScannerState extends State<BarCodeScanner> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      title: "Não foi possível identificar um código de barras.",
      subtitle: "Tente escanear novamente ou digite o código do seu boleto.",
      primaryLabel: "Escanear novamente",
      primaryOnPressed: () {},
      secondyLabel: "Digitar código",
      secondyOnPressed: () {},
    );
    return SafeArea(
      top: true,
      bottom: true,
      right: true,
      left: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(" Escaneie o código de barras do seu boleto",
                style: TextStyles.buttonBackground),
            centerTitle: true,
            leading: BackButton(
              color: AppColors.background,
            ),
          ),
          body: Column(children: [
            Expanded(
                child: Container(
              color: Colors.black.withOpacity(0.6),
            )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.transparent,
                )),
            Expanded(
                child: Container(
              color: Colors.black.withOpacity(0.6),
            ))
          ]),
          bottomNavigationBar: SetLabelButton(
            primaryLabel: "Inserir código do boleto",
            primaryOnPressed: () {},
            secondyLabel: "Adicionar da galeria",
            secondyOnPressed: () {},
          ),
        ),
      ),
    );
  }
}
