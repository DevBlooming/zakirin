import 'package:flutter/material.dart';
import 'package:zakirin/core/utils/styles.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: BoxDecoration(
              color: Styles.tertiaryColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              '﴿ وَالذَّاكِرِينَ اللَّهَ كَثِيراً وَالذَّاكِرَاتِ أَعَدَّ اللَّهُ لَهُمْ مَغْفِرَةً وَأَجْراً عَظِيماً ﴾',
              style:
                  size.width <= 768 ? Styles.textStyle16 : Styles.textStyle30,
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
          ),
        );
      },
    );
  }
}
