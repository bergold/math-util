library mathutil.test.angleunits;

import 'package:unittest/unittest.dart';
import 'package:mathutil/mathutil.dart';

void run() {
  group("Angleunits", () {
    test("degtorad", () {
      expect(degtograd(180), equals(200));
    });
  });
}
