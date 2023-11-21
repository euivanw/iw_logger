// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'log_type_enum.dart';

/// This class represents object with the log information.
class Log {
  /// Contains the type of the log.
  final LogType type;

  /// Contains the message to be inserted into the log.
  final String message;

  /// Contains the date and time that the log was created.
  final DateTime createdAt;

  /// Contructor
  const Log({
    required this.type,
    required this.message,
    required this.createdAt,
  });

  /// Log hashCode getter.
  @override
  int get hashCode => type.hashCode ^ message.hashCode ^ createdAt.hashCode;

  /// Log equals operator method.
  @override
  bool operator ==(covariant Log other) {
    if (identical(this, other)) {
      return true;
    }

    return other.type == type &&
        other.message == message &&
        other.createdAt == createdAt;
  }

  @override

  /// Log toString method.
  String toString() =>
      'Log(type: ${type.value}, message: $message, createdAt: $createdAt)';
}
