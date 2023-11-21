import 'package:collection/collection.dart';

/// This enum represents the supported log types by the package.
enum LogType {
  /// Information.
  info('INFO'),

  /// Debug.
  debug('DEBUG'),

  /// Error.
  error('ERROR'),

  /// Success.
  success('SUCCESS');

  /// Contains the string value of the log type.
  final String value;

  /// Constructor
  const LogType(this.value);

  /// Given a string value of the log type, returns the correspondent enum
  /// value.
  static LogType? fromValue([String? value]) {
    return LogType.values.firstWhereOrNull(
      (element) => element.value == value,
    );
  }
}
