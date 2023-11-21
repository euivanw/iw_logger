import 'package:iw_logger/iw_logger.dart';
import 'package:test/test.dart';

void main() {
  group('LogService', () {
    late LogService logService;

    setUp(() {
      logService = LogPrintService();
    });

    test(
      'Should print a log message when generate an ERROR.',
      () {
        // Arrange
        final Log errorLog = Log(
          type: LogType.error,
          message: 'This is an error.',
          createdAt: DateTime(2023, 11, 13, 17, 45, 52),
        );

        // Act/Assert
        expect(
          () => logService.register(
            log: errorLog,
          ),
          prints('2023-11-13T17:45:52.000 - [ERROR] - This is an error.\n'),
        );
      },
    );

    test(
      'Should print a log message when generate an INFO.',
      () {
        // Arrange
        final Log infoLog = Log(
          type: LogType.info,
          message: 'This is an info.',
          createdAt: DateTime(2023, 11, 13, 18, 05, 27),
        );

        // Act/Assert
        expect(
          () => logService.register(
            log: infoLog,
          ),
          prints('2023-11-13T18:05:27.000 - [INFO] - This is an info.\n'),
        );
      },
    );

    test(
      'Should print a log message when generate a DEBUG.',
      () {
        // Arrange
        final Log debugLog = Log(
          type: LogType.debug,
          message: 'This is a debug.',
          createdAt: DateTime(2023, 11, 13, 18, 06, 24),
        );

        // Act/Assert
        expect(
          () => logService.register(
            log: debugLog,
          ),
          prints('2023-11-13T18:06:24.000 - [DEBUG] - This is a debug.\n'),
        );
      },
    );

    test(
      'Should print a log message when generate a SUCCESS.',
      () {
        // Arrange
        final Log debugLog = Log(
          type: LogType.success,
          message: 'This is a success.',
          createdAt: DateTime(2023, 11, 13, 18, 07, 10),
        );

        // Act/Assert
        expect(
          () => logService.register(
            log: debugLog,
          ),
          prints('2023-11-13T18:07:10.000 - [SUCCESS] - This is a success.\n'),
        );
      },
    );
  });
}
