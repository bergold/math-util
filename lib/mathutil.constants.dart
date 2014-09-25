library mathutil.constants;

import 'dart:math' show PI, E;

/// This class represents a mathematical constant.
class Constant {
  Function _fn;
  
  Constant(this._fn);
  
  num val() {
    return _fn();
  }
}


/// A map of mathematical constants.
Map<String, Constant> constants = {
  'PI': new Constant(() => PI),
  'E': new Constant(() => E)
};
