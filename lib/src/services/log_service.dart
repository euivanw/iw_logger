import '../models/log_model.dart';

/// This interface represents the service responsible to generate a log into
/// the system. You should use it to implement other log tools and to
/// encapsulate the print log as well.
abstract interface class LogService {
  /// Register a log into the system.
  Future<void> register({
    required Log log,
  });
}
