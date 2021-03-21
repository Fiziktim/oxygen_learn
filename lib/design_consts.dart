import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Shadow / You can replace every shadow by this.
final OxyShadow = Provider<List<BoxShadow>>((ref) {
  return [
    BoxShadow(
      blurRadius: 5,
      color: Colors.black.withOpacity(0.2),
      offset: Offset(0, 3),
      spreadRadius: 0,
    ),
  ];
});

// Padding / You can replace every padding by this.
final OxyPadding = Provider<EdgeInsets>((ref) {
  return EdgeInsets.all(20.0);
});
