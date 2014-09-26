library mathutil.operators;

import 'dart:math' as math;

/// This class represents a mathematical operator.
class Operator {
  final String symbol;
  final String assoc;
  final int precedence;
  final int operands;
  Function _fn;
  
  Operator(this.symbol, this.assoc, this.precedence, this.operands, this._fn) {
    if (assoc != "left" && assoc != "right") throw new Exception("Assoc must be 'left' or 'right'.");
  }
  
  bool get assocLeft => assoc == "left";
  bool get assocRight => assoc == "right";
  
  num apply(num a, num b) {
    return _fn(a, b);
  }
}


/// A List of mathematical operators.
List<Operator> operators = [
  new Operator("+", "left", 1, 2, (a, b) => a + b),
  new Operator("-", "left", 1, 2, (a, b) => a - b),
  
  new Operator("*", "left", 2, 2, (a, b) => a * b),
  new Operator("/", "left", 2, 2, (a, b) => a / b),
  new Operator("mod", "left", 2, 2, (a, b) => a % b),
  
  new Operator("-", "left", 3, 1, (a) => -a),
    
  new Operator("^", "right", 4, 2, (a, b) => math.pow(a, b)),
    
  new Operator("%", "right", 5, 1, (a) => a / 100),
  new Operator("!", "right", 5, 1, (a) => a)
];
