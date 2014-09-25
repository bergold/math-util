library mathutil.operators.dart;

/// This class represents a mathematical operator.
class Operator {
  final String assoc;
  final int precedence;
  final int operands;
  Function _fn;
  
  Operator(this.assoc, this.precedence, this.operands, this._fn) {
    if (assoc != "left" && assoc != "right") throw new Exception("Assoc must be 'left' or 'right'.");
  }
  
  bool get assocLeft => assoc == "left";
  bool get assocRight => assoc == "right";
  
  num apply(num a, num b) {
    return _fn(a, b);
  }
}


/// A map of mathematical operators.
Map<String, Operator> operators = {
  "+": new Operator("left", 1, 2, (a, b) => a + b)
};
