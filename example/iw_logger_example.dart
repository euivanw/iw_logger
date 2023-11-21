import 'package:iw_logger/iw_logger.dart';

void main() {
  final LogService service = LogPrintService();
  service.register(
    log: Log(
      type: LogType.success,
      message: 'The operation XPTO succedded.',
      createdAt: DateTime.now(),
    ),
  );

  // Prints:
  // 2023-11-21T19:58:43.234834Z - [SUCCESS] - The operation XPTO succedded.
}
