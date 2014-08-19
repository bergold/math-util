
(function(window, exports) {
  
  window.MathUtil = exports;
  
})(window, (function() {
  
  var _ = {};
  
  
  /**
   * usefull regex
   */
  _.REGEX_NUMBER   = /^[]$/;
  _.REGEX_TERM     = /^[]$/;
  _.REGEX_FUNCTION = /^[]$/;
  
  
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
      return !isNaN(parseFloat(a)) && isFinite(a);
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
   * map of specialchars
   */
  _.specialchars = {};
  
  
  /**
   * map of operators
   */
  _.operators = {};
  
  
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
  _.Mode = function() {};
  (function() {
    
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
