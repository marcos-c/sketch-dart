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
// limitations under the License.

part of sketch;

/// View interface for [Template] bind-view
abstract class View {
     // TODO should the path be included in the view? should it be private?
     String path;

     /// Contains the file name and path to the view HTML
     String view;

     /// Contains the [Controller] or [Map] instance that resolves as dataSource of this view
     Controller controller;

     /// Default constructor
     View(this.path, this.view, this.controller);
}