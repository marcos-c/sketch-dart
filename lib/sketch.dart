// Copyright 2014 Marcos Cooper <marcos@releasepad.com>
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License

/// Package library that will ease the development of server backed single page
/// responsive Web applications
library sketch;

import 'dart:html';
import 'dart:async';

import 'package:observe/observe.dart';

part 'src/template.dart';
part 'src/router.dart';
part 'src/view.dart';

part 'src/simple_router.dart';
part 'src/simple_view.dart';