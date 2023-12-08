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

    TextStyle showSplashTextResponsive() {
      if (size.width <= 280) {
        return Styles.textStyle8;
      } else if (size.width <= 430) {
        return Styles.textStyle12;
      } else {
        return Styles.textStyle30;
      }
    }

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
              style: showSplashTextResponsive(),
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
          ),
        );
      },
    );
  }
}
