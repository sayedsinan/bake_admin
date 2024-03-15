import 'package:bake_n_cake_admin_side/model/messeage.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  final userData = [
    UserModel(
      uid: '1',
      name: 'sinan',
      email: 'sayedsinan7@gmail.com',
      image:
          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages.pexels.com%2Fphotos%2F674010%2Fpexels-photo-674010.jpeg%3Fcs%3Dsrgb%26dl%3Dpexels-anjana-c-674010.jpg%26fm%3Djpg&tbnid=0Dm0sj6W3LWHqM&vet=12ahUKEwiXuYKs0vWEAxUB-TgGHQvPAw0QMygBegQIARB0..i&imgrefurl=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fbeautiful%2F&docid=B51x0PBR9KNzvM&w=2976&h=3968&itg=1&q=images&ved=2ahUKEwiXuYKs0vWEAxUB-TgGHQvPAw0QMygBegQIARB0',
      lastActive: DateTime.now(),
      isOnline: false,
    ),   UserModel(
      uid: '2',
      name: 'fida',
      email: 'sayedsinan7@gmail.com',
      image:
          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages.pexels.com%2Fphotos%2F674010%2Fpexels-photo-674010.jpeg%3Fcs%3Dsrgb%26dl%3Dpexels-anjana-c-674010.jpg%26fm%3Djpg&tbnid=0Dm0sj6W3LWHqM&vet=12ahUKEwiXuYKs0vWEAxUB-TgGHQvPAw0QMygBegQIARB0..i&imgrefurl=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fbeautiful%2F&docid=B51x0PBR9KNzvM&w=2976&h=3968&itg=1&q=images&ved=2ahUKEwiXuYKs0vWEAxUB-TgGHQvPAw0QMygBegQIARB0',
      lastActive: DateTime.now(),
      isOnline: false,
    ),   UserModel(
      uid: '3',
      name: 'sayed',
      email: 'sayedsinan7@gmail.com',
      image:
          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages.pexels.com%2Fphotos%2F674010%2Fpexels-photo-674010.jpeg%3Fcs%3Dsrgb%26dl%3Dpexels-anjana-c-674010.jpg%26fm%3Djpg&tbnid=0Dm0sj6W3LWHqM&vet=12ahUKEwiXuYKs0vWEAxUB-TgGHQvPAw0QMygBegQIARB0..i&imgrefurl=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fbeautiful%2F&docid=B51x0PBR9KNzvM&w=2976&h=3968&itg=1&q=images&ved=2ahUKEwiXuYKs0vWEAxUB-TgGHQvPAw0QMygBegQIARB0',
      lastActive: DateTime.now(),
      isOnline: false,
    ),
  ];
}
