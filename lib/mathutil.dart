library mathutil;

import 'dart:math' as math;

import 'mathutil.operators.dart';
import 'mathutil.functions.dart';
import 'mathutil.constants.dart';

export 'mathutil.operators.dart';
export 'mathutil.functions.dart';
export 'mathutil.constants.dart';

/// This RegExp matches all numbers including scientific notations.
RegExp regexNumber   = new RegExp(r"(?:\d*\.)?\d+(?:e(?:\+|-)?\d+)?");
/// This RegExp matches all expressions that contain no equality operator (´=´).
RegExp regexTerm     = new RegExp(r"[^=]+$");
/// This RegExp matches mathematic representations of funktions (e.g. ´f(x)=x^2´).
RegExp regexFunction = new RegExp(r"([a-z]+)\(([A-Za-z]+)\)\s*=\s*(.+)$");

List controlchars = ['(', ',', ')', ';'];

/// These function convert numbers between different angle units.
double degtorad(a) {
  return (a / 180) * math.PI;
}
double degtograd(a) {
  return (a / 180) * 200;
}
double radtodeg(a) {
  return (a / math.PI) * 180;
}
double radtograd(a) {
  return (a / math.PI) * 200;
}
double gradtodeg(a) {
  return (a / 200) * 180;
}
double gradtorad(a) {
  return (a / 200) * math.PI;
}
