#!/usr/bin/env bash
export PS4='\e[34m+ '
set -o xtrace
set -e 

# run pub; ensure that the code is warning free.
pub get 
dartanalyzer test/*.dart

# analyze the code in the lib dir.
dartanalyzer lib/*.dart

# run tests
dart test/all.dart
