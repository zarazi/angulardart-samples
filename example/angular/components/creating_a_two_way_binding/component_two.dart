// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library component_two;

import 'package:angular/angular.dart';

@NgComponent(
    selector: 'component-two',
    templateUrl: './component_two.html',
    publishAs: 'cmp',
    map: const {
      'text' : '<=>text'
    },
    applyAuthorStyles: true
)
class ComponentTwo {
  String text;
  int get wordCount => new RegExp(r'\S+').allMatches(text).length;
}