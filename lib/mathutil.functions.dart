library mathutil.functions;

/**
 * This class represents a mathematical function.
 */
class Function {
  final int arguments;
  var _fn;
  
  Function(this.arguments, this._fn);
  
  num apply(a) {
    return _fn(a);
  }
}


/**
 * A map of mathematical functions.
 */
Map<String, Function> functions = {
  "sin": new Function(1, (a) => a)
};
