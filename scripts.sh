#!/bin/sh
set -e

export PATH=$BUILD_SOURCESDIRECTORY/flutter/bin:$BUILD_SOURCESDIRECTORY/flutter/bin/cache/dart-sdk/bin:$PATH

codegen() {
    flutter pub get
    flutter pub run build_runner build --delete-conflicting-outputs
}
run() {
  flutter run --dart-define-from-file=.env
}

"$@"
