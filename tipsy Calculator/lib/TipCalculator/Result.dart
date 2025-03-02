import 'package:flutter/material.dart';
import 'package:flutter_codelab/colors/TipsyColor.dart';
import 'package:flutter_codelab/model/bill.dart';

class ResultTip extends StatelessWidget {
  const ResultTip({Key? key, required this.bill}) : super(key: key);
  final Bill bill;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: tipsyColor.shade100,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      padding: const EdgeInsets.only(top: 32, bottom: 52, left: 32, right: 32),
      child: Column(children: [
        Text(
          "Total per Person",
          style:
              Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 18),
        ),
        const Padding(padding: EdgeInsets.all(4)),
        Text(
          "\$${bill.getAmountPerPerson()}",
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontSize: 52),
        ),
        const Padding(padding: EdgeInsets.all(20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(children: [
              Text(
                "Tip",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 18),
              ),
              Text(
                "\$${bill.getTipAmountPerPerson()}",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontSize: 24),
              ),
            ]),
            Column(children: [
              Text(
                "Bill",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 18),
              ),
              Text(
                "\$${bill.getBillAmountPerPerson()}",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontSize: 24),
              ),
            ])
          ],
        )
      ]),
    );
  }
}
