import 'package:flutter_modular/flutter_modular.dart';
import 'chat_controller.dart';
import 'chat_page.dart';

class ChatModule extends ChildModule{
  @override
  List<Bind> get binds => [Bind((i) => ChatController())];

  @override
  List<Router> get routers => [
    Router('/', child: (context,args) => ChatPage(),),
  ];

  static Inject get to => Inject<ChatModule>.of();

}