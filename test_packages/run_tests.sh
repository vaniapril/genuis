#!/bin/sh

find . -name "pubspec.yaml"
find . -name "pubspec.yaml" -execdir flutter clean \;
find . -name "pubspec.yaml" -execdir flutter pub get \;
find . -name "pubspec.yaml" -execdir dart run build_runner build --delete-conflicting-outputs \;
find . -name "pubspec.yaml" -execdir dart analyze . \;
find . -name "pubspec.yaml" -execdir flutter test \;