import 'package:iw_logger/iw_logger.dart';
import 'package:test/test.dart';

void main() {
  group('LogType', () {
    group('Creation', () {
      test(
        'Should return a INFO LogType',
        () {
          // Act
          final LogType logType = LogType.info;

          // Asserts
          expect(logType, equals(LogType.info));
          expect(logType.value, equals('INFO'));
        },
      );

      test(
        'Should return a DEBUG LogType',
        () {
          // Act
          final LogType logType = LogType.debug;

          // Asserts
          expect(logType, equals(LogType.debug));
          expect(logType.value, equals('DEBUG'));
        },
      );

      test(
        'Should return a ERROR LogType',
        () {
          // Act
          final LogType logType = LogType.error;

          // Asserts
          expect(logType, equals(LogType.error));
          expect(logType.value, equals('ERROR'));
        },
      );

      test(
        'Should return a SUCCESS LogType',
        () {
          // Act
          final LogType logType = LogType.success;

          // Asserts
          expect(logType, equals(LogType.success));
          expect(logType.value, equals('SUCCESS'));
        },
      );
    });

    group('fromValue', () {
      test(
        'Should return null when value is not passed.',
        () {
          // Act
          final LogType? value = LogType.fromValue();

          // Asserts
          expect(value, isNull);
        },
      );

      test(
        'Should return null when value is not valid.',
        () {
          // Act
          final LogType? value = LogType.fromValue('xpto');

          // Asserts
          expect(value, isNull);
        },
      );

      test(
        'Should return a info LogType when value is INFO.',
        () {
          // Act
          final LogType? value = LogType.fromValue('INFO');

          // Asserts
          expect(value, equals(LogType.info));
        },
      );

      test(
        'Should return a debug LogType when value is DEBUG.',
        () {
          // Act
          final LogType? value = LogType.fromValue('DEBUG');

          // Asserts
          expect(value, equals(LogType.debug));
        },
      );

      test(
        'Should return a error LogType when value is ERROR.',
        () {
          // Act
          final LogType? value = LogType.fromValue('ERROR');

          // Asserts
          expect(value, equals(LogType.error));
        },
      );

      test(
        'Should return a success LogType when value is SUCCESS.',
        () {
          // Act
          final LogType? value = LogType.fromValue('SUCCESS');

          // Asserts
          expect(value, equals(LogType.success));
        },
      );
    });
  });
}
