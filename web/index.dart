import 'package:unittest/unittest.dart';
import 'package:unittest/html_config.dart';
import 'package:sketch/sketch.dart';

import 'dart:html';

class TestRouter extends Object with ViewRouter {
    TestRouter() {
        this.addRule('/index', 'view/test.html');
        this.path = '/index';
    }
}

void main() {
    useHtmlConfiguration();
    test('data-bind-text', () {
        new Template.bind('#test1', {
            'text': 'Text'
        });
        expect(querySelector('#test1 > p').innerHtml, equals('<span data-bind-text="text">Text</span>'));
    });
    test('data-bind-style', () {
        new Template.bind('#test2', {
            'style': 'color: red; background-color: black;'
        });
        expect(querySelector('#test2 > p').innerHtml, equals('<span style="color: red; background-color: black;"></span>'));
    });
    test('data-bind-style', () {
        new Template.bind('#test3', {
            'textColor': 'red',
            'backgroundColor': () => 'black'
        });
        expect(querySelector('#test3 > p').innerHtml, equals('<span style="color: red; background-color: black;"></span>'));
    });
    test('data-bind-attr', () {
        new Template.bind('#test4', {
            'action': '/list'
        });
        expect(querySelector('#test4 > p').innerHtml, equals('<a href="/list">Action</a>'));
    });
    test('data-bind-class', () {
        new Template.bind('#test5', {
            'isBox': true,
            'isHouse': () => false,
            'isTree': false
        });
        expect(querySelector('#test5 > p').innerHtml, equals('<span class="box">Action</span>'));
    });
    test('data-bind-visible', () {
        var data = { 'isMale': true };
        new Template.bind('#test6', data);
        expect(querySelector('#test6 > p > span').hidden, false);
    });
    test('data-bind-view', () {
        var data = { 'router': new TestRouter() };
        var bind = new Template.bind('#test7', data);
        expect(bind.future, completion(equals('<p>Test</p>')));
    });
}