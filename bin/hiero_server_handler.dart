import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class HieroServerHandler {
  Handler get handler {
    //Create first Route
    final router = Router();

    router.get('/', (Request request) {
      //Send => Request and Return => Response
      return Response(200, body: 'First Route - OK');
    });

    /* Query Param => Send information to server, but information can be easily
      intercepted and captured  */

    // Reccomended in paginations
    router.get('/hello/world/<user>', (Request request, String user) {
      return Response.ok('Hello World $user');
    });

    return router;
  }
}
