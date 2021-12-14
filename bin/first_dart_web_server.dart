import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';

Future<void> main(List<String> arguments) async {
  final app = Router();

  app.get(
    "/",
    (Request request) => Response.ok(
      '{ "name": ["Henrique", "Nathi", "Maria"] }',
      headers: {'Content-Type': 'application/json'},
    ),
  );

  await io.serve(app, "localhost", 8080);
}
