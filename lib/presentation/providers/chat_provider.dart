import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/chat/chat_screen.dart';

class ChatProvider extends ChangeNotifier {
  //controlador para manejar la posicion del scroll
  final ScrollController chatScrollController = ScrollController();
  List<Message> messageList = [
    Message(text: 'hi', fromWho: FromWho.me),
    Message(text: 'hola', fromWho: FromWho.me),
  ];

  //Método para enviar mensaje
  Future<void> sendMessage(String text) async {
    //el mensaje siempre va a ser"me" (mio)por que yo
    //el usuario ,siempre sera el que envie el mensaje
    final newMessage = Message(text: text, fromWho: FromWho.me);
    //Agregar un mensaje a ala lista
    messageList.add(newMessage);

    //Notificar si algo de provider cambió para que se guarde en el estADO
    notifyListeners();
  }
}

moverScrollToBottom() {
  ChatScrollController.animateTo(
      //maxScrollExtent determina lo maximo que ele Scroll pueda
      chatScrollCotroller.position.maxScrollExtent,
      //offset: posicion de la animacion
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut);
}
