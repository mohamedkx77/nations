import 'package:flutter_test/flutter_test.dart';
import 'package:nations/src/helpers/extractors.dart';

void main() {
  group('resolveCount function', () {
    test('it will return null if out of boundaries', () {
      expect(resolveCount(150, ['1', '2']), isNull);
    });
    test('it return the default if in the boundaries and there is not match',
        () {
      expect(resolveCount(150, ['1', '2', 'default']), equals('default'));
    });
    test('''
        it support single count return the default if
         in the boundaries and there is not match
         ''', () {
      expect(resolveCount(10, ['1', '2', '10']), equals('10'));
    });
    test('it support more than one count in one key', () {
      expect(
        resolveCount(40, ['1', '2', '10', '30,40,50']),
        equals('30,40,50'),
      );
    });
    test('it support boundaries by range', () {
      expect(
        resolveCount(150, ['1', '2', '10', '30,40,50', '100-205']),
        equals('100-205'),
      );
    });
  });
  group('transFromMap Function', () {
    test('it can extract simple value', () {
      final value = transFromMap('foo', {'foo': 'bar'});
      expect(value, equals('bar'));
    });
    test('it can extract simple nested value', () {
      final value = transFromMap('foo.bar', {
        'foo': {'bar': 'zee'}
      });
      expect(value, equals('zee'));
    });
    test(
        'it return the key value event key is ended with . without another key',
        () {
      final value = transFromMap('foo.', {'foo': 'bar'});
      expect(value, equals('bar'));
    });
  });
}
