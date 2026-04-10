import 'dart:math';

import 'package:ironkey/password_generator.dart';

class PinPasswordGenerator implements PasswordGenerator {
  @override
  String generate(int length) {
    const numbers = "0123456789";
    final rng = Random();

    return List.generate(
      length,
      (_) => numbers[rng.nextInt(numbers.length)],
    ).join();
  }
}
