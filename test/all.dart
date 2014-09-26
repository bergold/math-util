library mathutil.test;

import 'package:unittest/compact_vm_config.dart';

import 'angleunits_test.dart' as angleunits;

void main() {
  
  useCompactVMConfiguration();
  
  angleunits.run();
  
}
