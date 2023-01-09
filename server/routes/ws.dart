import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_web_socket/dart_frog_web_socket.dart';

Handler get onRequest {
  return webSocketHandler((channel, protocol) {
    // ignore: avoid_print
    channel.stream.listen(print);

    // Send a message back to the client.
    channel.sink.add('hi');
  });
}
