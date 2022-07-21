import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            width: size.width * 1,
            top: -40,
            left: -230,
            child: Image.asset(
              'assets/images/Asset 1.png',
            ),
          ),
          Positioned(
            width: size.width * 0.8,
            bottom: -20,
            right: -200,
            child: Image.asset(
              'assets/images/Asset 1.png',
            ),
          ),
          child,
        ],
      ),
    );
  }
}
