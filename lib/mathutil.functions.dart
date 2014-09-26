library mathutil.functions;

import 'dart:core' as core;
import 'dart:math';

/// This class represents a mathematical function.
class Function {
  final core.int arguments;
  var _fn;
  
  Function(this.arguments, this._fn);
  
  core.num apply(core.List a) {
    return core.Function.apply(_fn, a);
  }
}

/// A map of mathematical functions.
core.Map<core.String, Function> functions = {
  "sin": new Function(1, (a) => sin(a)),
  "cos": new Function(1, (a) => cos(a)),
  "tan": new Function(1, (a) => tan(a))
};
