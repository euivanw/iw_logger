import 'package:iw_logger/iw_logger.dart';
import 'package:test/test.dart';

void main() {
  group('Log', () {
    group('Creation', () {
      test('Should create a DEBUG log message.', () {
        // Act
        final Log log = Log(
          type: LogType.debug,
          message: 'This is a DEBUG log.',
          createdAt: DateTime(2023, 11, 13, 17, 11, 06),
        );

        // Asserts
        expect(log.type, equals(LogType.debug));
        expect(log.message, equals('This is a DEBUG log.'));
        expect(log.createdAt, equals(DateTime(2023, 11, 13, 17, 11, 06)));
      });

      test('Should create an ERROR log message.', () {
        // Act
        final Log log = Log(
          type: LogType.error,
          message: 'This is an ERROR log.',
          createdAt: DateTime(2023, 11, 13, 17, 15, 58),
        );

        // Asserts
        expect(log.type, equals(LogType.error));
        expect(log.message, equals('This is an ERROR log.'));
        expect(log.createdAt, equals(DateTime(2023, 11, 13, 17, 15, 58)));
      });

      test('Should create an INFO log message.', () {
        // Act
        final Log log = Log(
          type: LogType.info,
          message: 'This is an INFO log.',
          createdAt: DateTime(2023, 11, 13, 17, 17, 06),
        );

        // Asserts
        expect(log.type, equals(LogType.info));
        expect(log.message, equals('This is an INFO log.'));
        expect(log.createdAt, equals(DateTime(2023, 11, 13, 17, 17, 06)));
      });

      test('Should create a SUCCESS log message.', () {
        // Act
        final Log log = Log(
          type: LogType.success,
          message: 'This is a SUCCESS log.',
          createdAt: DateTime(2023, 11, 13, 17, 18, 44),
        );

        // Asserts
        expect(log.type, equals(LogType.success));
        expect(log.message, equals('This is a SUCCESS log.'));
        expect(log.createdAt, equals(DateTime(2023, 11, 13, 17, 18, 44)));
      });
    });

    group('ToString', () {
      test(
        'Should create a DEBUG toString message.',
        () {
          // Arrange
          final Log log = Log(
            type: LogType.debug,
            message: 'This is a DEBUG log.',
            createdAt: DateTime(2023, 11, 13, 17, 11, 06),
          );

          // Act
          final String toString = log.toString();

          // Asserts
          expect(
            toString,
            equals(
              'Log(type: DEBUG, message: This is a DEBUG log., createdAt: 2023-11-13 17:11:06.000)',
            ),
          );
        },
      );

      test(
        'Should create an ERROR toString message.',
        () {
          // Arrange
          final Log log = Log(
            type: LogType.error,
            message: 'This is an ERROR log.',
            createdAt: DateTime(2023, 11, 13, 17, 15, 58),
          );

          // Act
          final String toString = log.toString();

          // Asserts
          expect(
            toString,
            equals(
              'Log(type: ERROR, message: This is an ERROR log., createdAt: 2023-11-13 17:15:58.000)',
            ),
          );
        },
      );

      test(
        'Should create an INFO toString message.',
        () {
          // Arrange
          final Log log = Log(
            type: LogType.info,
            message: 'This is an INFO log.',
            createdAt: DateTime(2023, 11, 13, 17, 17, 06),
          );

          // Act
          final String toString = log.toString();

          // Asserts
          expect(
            toString,
            equals(
              'Log(type: INFO, message: This is an INFO log., createdAt: 2023-11-13 17:17:06.000)',
            ),
          );
        },
      );

      test(
        'Should create a SUCCESS toString message.',
        () {
          // Arrange
          final Log log = Log(
            type: LogType.success,
            message: 'This is a SUCCESS log.',
            createdAt: DateTime(2023, 11, 13, 17, 18, 44),
          );

          // Act
          final String toString = log.toString();

          // Asserts
          expect(
            toString,
            equals(
              'Log(type: SUCCESS, message: This is a SUCCESS log., createdAt: 2023-11-13 17:18:44.000)',
            ),
          );
        },
      );
    });

    group('HashCode', () {
      test(
        'Should return two equals hashcode when two Log objets are equals.',
        () {
          // Arrange
          final Log log1 = Log(
            type: LogType.debug,
            message: 'This is a DEBUG log.',
            createdAt: DateTime(2023, 11, 13, 17, 11, 06),
          );

          final Log log2 = Log(
            type: LogType.debug,
            message: 'This is a DEBUG log.',
            createdAt: DateTime(2023, 11, 13, 17, 11, 06),
          );

          // Act
          final int hashCodeLog1 = log1.hashCode;
          final int hashCodeLog2 = log2.hashCode;

          // Asserts
          expect(hashCodeLog1 == hashCodeLog2, isTrue);
        },
      );

      test(
        'Should return two different hashcode when two Log objets are different.',
        () {
          // Arrange
          final Log log1 = Log(
            type: LogType.success,
            message: 'This is a SUCCESS log.',
            createdAt: DateTime(2023, 11, 21, 16, 35, 46),
          );

          final Log log2 = Log(
            type: LogType.info,
            message: 'This is a INFO log.',
            createdAt: DateTime(2023, 11, 21, 16, 36, 02),
          );

          // Act
          final int hashCodeLog1 = log1.hashCode;
          final int hashCodeLog2 = log2.hashCode;

          // Asserts
          expect(hashCodeLog1 != hashCodeLog2, isTrue);
        },
      );
    });

    group('Equals', () {
      test(
        'Should return TRUE when two Log objets are equals.',
        () {
          // Act
          final Log log1 = Log(
            type: LogType.debug,
            message: 'This is a DEBUG log.',
            createdAt: DateTime(2023, 11, 13, 17, 11, 06),
          );

          final Log log2 = Log(
            type: LogType.debug,
            message: 'This is a DEBUG log.',
            createdAt: DateTime(2023, 11, 13, 17, 11, 06),
          );

          // Asserts
          expect(log1 == log2, isTrue);
        },
      );

      test(
        'Should return FALSE when two Log objets are different.',
        () {
          // Act
          final Log log1 = Log(
            type: LogType.success,
            message: 'This is a SUCCESS log.',
            createdAt: DateTime(2023, 11, 21, 16, 35, 46),
          );

          final Log log2 = Log(
            type: LogType.info,
            message: 'This is a INFO log.',
            createdAt: DateTime(2023, 11, 21, 16, 36, 02),
          );

          // Asserts
          expect(log1 == log2, isFalse);
        },
      );
    });
  });
}
