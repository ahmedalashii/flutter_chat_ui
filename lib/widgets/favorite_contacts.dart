import 'package:flutter/material.dart';

import '../models/message_model.dart';
import '../screens/chat_screen.dart';

class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                "Favorite Contacts",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.more_horiz),
                iconSize: 30,
                color: Colors.blueGrey,
                onPressed: () {},
              ),
            ],
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
              padding: const EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatScreen(user: favorites[index]),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(favorites[index].imageUrl),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          favorites[index].name,
                          style: const TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
