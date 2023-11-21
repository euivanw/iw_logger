# iw_logger

This project is an implementation that allow developers to encapsulate their own usage of a logger.

The main objective of this project is to create a package that provide a logger encapsulated and by doing this allow developers to use it in many apps rather than create their own encapsulation for each project.

For now, the package supports only print, however, other clients could be supported in the future.

## Usage

Here is an example that make some a log request.

You can also read the unit tests to see all the possibilities that the implementation supports.

```dart
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
```
Feito com &hearts; por Ivan Wilhelm.

Codificado no [Visual Studio Code](https://code.visualstudio.com) da [Microsoft](https://www.microsoft.com.br)
