import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Gradient for free user
BoxDecoration freeGradientBoxDecoration = const BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.blue,
      Colors.deepPurple,
    ],
  ),
);


// Gradient for paid user
BoxDecoration paidGradientBoxDecoration = const BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.amberAccent,
      Colors.deepOrange,
    ],
  ),
);
