import '../models/log_model.dart';
import 'log_service.dart';

/// This class implements de Log service encapsulates to a `LogService`.
final class LogPrintService implements LogService {
  /// Register a log into the system.
  @override
  Future<void> register({
    required Log log,
  }) async {
    final String dateTime = log.createdAt.toIso8601String();
    final String type = log.type.value;
    final String message = log.message;

    print('$dateTime - [$type] - $message');
  }
}
