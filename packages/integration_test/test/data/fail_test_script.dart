// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

Future<void> main() async {
  final IntegrationTestWidgetsFlutterBinding binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  binding.allTestsPassed.future.then((_) {
    print('IntegrationTestWidgetsFlutterBinding test results: ${jsonEncode(binding.results)}');
  });

  testWidgets('failing test 1', (WidgetTester tester) async {
    expect(true, false);
  });

  testWidgets('failing test 2', (WidgetTester tester) async {
    expect(true, false);
  });
}
