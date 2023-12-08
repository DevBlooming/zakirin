import 'package:flutter/material.dart';
import 'package:zakirin/core/utils/styles.dart';

class AzkarItem extends StatefulWidget {
  const AzkarItem({
    super.key,
    required this.content,
    required this.count,
  });

  final String content;
  final int count;

  @override
  State<AzkarItem> createState() => _AzkarItemState();
}

class _AzkarItemState extends State<AzkarItem> {
  late String azkarContent = widget.content;
  late int buttonNumber = widget.count;
  bool isContainerVisible = true;

  void decreaseButtonNumber() {
    setState(() {
      buttonNumber--;
      if (buttonNumber == 0) {
        isContainerVisible = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Visibility(
      visible: isContainerVisible,
      child: InkWell(
        onTap: buttonNumber > 0 ? decreaseButtonNumber : null,
        splashColor: Styles.secondaryColor,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          alignment: Alignment.center,
          width: size.width <= 768 ? double.infinity : 700,
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: Styles.tertiaryColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Text(
                widget.content,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: Styles.fontAmiri,
                  fontSize: 18,
                  height: 1.8,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Styles.secondaryColor,
                      Styles.secondaryColor,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: ElevatedButton(
                  onPressed: buttonNumber > 0 ? decreaseButtonNumber : null,
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(395, 55),
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Text(
                    'التكرار $buttonNumber',
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
