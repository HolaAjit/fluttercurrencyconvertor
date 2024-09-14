import 'package:flutter/cupertino.dart';

class CurencyConvertorCupertinoPage extends StatefulWidget {
  const CurencyConvertorCupertinoPage({super.key});

  @override
  State<CurencyConvertorCupertinoPage> createState() =>
      _CurencyConvertorCupertinoPageState();
}

class _CurencyConvertorCupertinoPageState
    extends State<CurencyConvertorCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 81;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey2,
          middle: Text('Currency Convertor'),
        ),
        backgroundColor: CupertinoColors.systemGrey2,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '₹${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                  style: const TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.white),
                ),
                CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(color: CupertinoColors.black),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                    color: CupertinoColors.white,
                  ),
                  placeholder: 'Please Enter Amount in USD',
                  prefix: const Icon(CupertinoIcons.money_dollar),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
                const SizedBox(height: 10),
                CupertinoButton(
                  onPressed: convert,
                  color: CupertinoColors.black,
                  child: const Text('Convert'),
                ),
              ],
            ),
          ),
        ));
  }
}
