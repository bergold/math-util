library mathutil.constants;

import 'dart:math' show PI, E, Random, sqrt;

/// This class represents a mathematical constant.
class Constant {
  Function _fn;
  
  Constant(this._fn);
  
  num val() {
    return _fn();
  }
}


var _rand = new Random();

/// A map of mathematical constants.
Map<String, Constant> constants = {
  "PI": new Constant(() => PI),
  "E": new Constant(() => E),
  "PHI": new Constant(() => (1 + sqrt(5)) / 2),
  "RANDOM": new Constant(() => _rand.nextDouble())
};
