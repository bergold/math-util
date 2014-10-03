library mathutil.test.angleunits;

import 'dart:math' show PI;

import 'package:unittest/unittest.dart';
import 'package:mathutil/mathutil.dart';

void main() {
  group("Angleunits", () {
    test("degtorad", () {
      expect(degtorad(180), equals(PI));
    });
    test("degtograd", () {
      expect(degtograd(180), equals(200));
    });
    test("radtodeg", () {
      expect(radtodeg(PI), equals(180));
    });
    test("radtograd", () {
      expect(radtograd(PI), equals(200));
    });
    test("gradtodeg", () {
      expect(gradtodeg(200), equals(180));
    });
    test("gradtorad", () {
      expect(gradtorad(200), equals(PI));
    });
  });
}
