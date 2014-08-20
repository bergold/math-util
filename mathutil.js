
(function(window, exports) {
  
  window.MathUtil = exports;
  
})(window, (function() {
  
  var _ = {};
  
  
  /**
   * usefull regex
   */
  _.REGEX_NUMBER   = '(?:\d*\.)?\d+(?:e(?:\+|-)?\d+)?';
  _.REGEX_TERM     = '[^=]+$';
  _.REGEX_FUNCTION = '([a-z]+)\(([A-Za-z]+)\)\s*=\s*(.+)$';
  
  
  /**
   * bunch of functions to convert between radix
   */
  _.degtorad = function (a) {
      return (a/180)*Math.PI;
  };
  _.degtograd = function (a) {
      return (a/180)*200;
  };
  _.radtodeg = function (a) {
      return (a/Math.PI)*180;
  };
  _.radtograd = function (a) {
      return (a/Math.PI)*200;
  };
  _.gradtodeg = function (a) {
      return (a/200)*180;
  };
  _.gradtorad = function (a) {
      return (a/200)*Math.PI;
  };
  
  
  /**
   * check type of tokens
   */
  _.isNumber = function (a) {
      return new RegExp('^' + _.REGEX_NUMBER + '$', 'g').test(a.toString());
  };
  _.isConstant = function (a) {
      return a in _.constants;
  };
  _.isFunction = function (a) {
      return a in _.functions;
  };
  _.isOperator = function (a) {
      return a in _.operators;
  };
  
  
  /**
   * map of controlchars
   */
  _.controlchars = { '(': 1, ',': 1, ')': 1, ';': 1 };
  
  
  /**
   * map of operators
   */
  _.operators = {
    "+": {
      assoc: "left",
      precedence: 1,
      operands: 2,
      apply: function (a, b) {
        b = b || 0;
        return a + b;
      }
    },
    "-": {
      assoc: "left",
      precedence: 1,
      operands: 2,
      apply: function (a, b) {
        return b ? (a - b) : -a;
      }
    },

    "*": {
      assoc: "left",
      precedence: 2,
      operands: 2,
      apply: function (a, b) {
        return a * b;
      }
    },
    "/": {
      assoc: "left",
      precedence: 2,
      operands: 2,
      apply: function (a, b) {
        return a / b;
      }
    },
    "mod": {
      assoc: "left",
      precedence: 2,
      operands: 2,
      apply: function (a, b) {
        return a % b;
      }
    },

    "^": {
      assoc: "right",
      precedence: 3,
      operands: 2,
      apply: function (a, b) {
        return Math.pow(a, b);
      }
    },
  
    "%": {
      assoc: "right",
      precedence: 4,
      operands: 1,
      apply: function (a) {
        return a/100;
      }
    },
    "!": {
      assoc: "right",
      precedence: 4,
      operands: 1,
      apply: function (a) {
        return _.functions['factorial'].eval.call(this, a);
      }
    }
  };
  
  
  /**
   * map of functions
   */
  _.functions = {};
  
  
  /**
   * map of constants
   */
  _.constants = {};
  
  
  /**
   * class Mode
   */
  _.Mode = function() {
    this.rules = [];
  };
  (function() {
    
    this.addRule = function(type, regex) {
      this.rules.push({ type: type, regex: regex });
    };
    
    this.getRegex = function() {
      
    };
    
  }).call(_.Mode.prototype);
  
  
  /**
   * class Token
   */
  _.Token = function() {};
  (function() {
    
  }).call(_.Mode.prototype);
  
  
  /**
   * class Tokenizer
   */
  _.Tokenizer = function() {};
  (function() {
    
  }).call(_.Mode.prototype);
  
  
  return _;
  
})());
