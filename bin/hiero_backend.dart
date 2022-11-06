import 'package:hiero_backend/hiero_backend.dart' as hiero_backend;
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

import 'hiero_server_handler.dart';

void main() async {
  var _server = HieroServerHandler();
  //Create back-end server
  final server = await shelf_io.serve(_server.handler, 'localhost', 8080);
  print('servidor : http://localhost:8080');
}
