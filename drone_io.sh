#!/usr/bin/env bash
export PS4='\[\e[33m\]\$ \[\e[m\]'
set -o xtrace
set -e

echo -e '\[\e[30m\]black\[\e[m\]'
echo -e '\[\e[31m\]red\[\e[m\]'
echo -e '\[\e[32m\]green\[\e[m\]'
echo -e '\[\e[33m\]yellow\[\e[m\]'
echo -e '\[\e[34m\]blue\[\e[m\]'
echo -e '\[\e[35m\]purpel\[\e[m\]'
echo -e '\[\e[36m\]cyan\[\e[m\]'
echo -e '\[\e[37m\]white\[\e[m\]'

# run pub; ensure that the code is warning free.
pub get
dartanalyzer test/*.dart

# analyze the code in the lib dir.
dartanalyzer lib/*.dart

# run tests
dart test/all.dart
