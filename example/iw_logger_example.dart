import 'package:iw_logger/iw_logger.dart';

void main() {
  final LogService service = LogPrintService();

  service.register(
    log: Log(
      type: LogType.success,
      message: 'The operation XPTO succedded.',
      createdAt: DateTime(2023, 11, 13, 18, 06, 24),
    ),
  );

  // Prints:
  // 2023-11-13T18:06:24.000 - [SUCCESS] - The operation XPTO succedded.
}
