import 'dart:math';

import 'package:flutter/material.dart';

class EmojiGeneratorPage extends StatefulWidget {
  const EmojiGeneratorPage({super.key});

  @override
  State<EmojiGeneratorPage> createState() => _EmojiGeneratorPageState();
}

class _EmojiGeneratorPageState extends State<EmojiGeneratorPage> {
  final List<String> emojis = [
    '😀',
    '😃',
    '😄',
    '😁',
    '😆',
    '😅',
    '😂',
    '🤣',
    '😊',
    '😇',
    '😉',
    '😌',
    '😍',
    '🥰',
    '😘',
    '😗',
    '😙',
    '😚',
    '😋',
    '😛',
    '😜',
    '😝',
    '🤪',
    '🤩',
    '😎',
    '🤓',
    '🧐',
    '😕',
    '😟',
    '🙁',
    '😮',
    '😲',
    '😳',
    '🥺',
    '😢',
    '😭',
    '😤',
    '😠',
    '😡',
    '🤬',
    '🤯',
    '😱',
    '😨',
    '😰',
    '😥',
    '😓',
    '🤔',
    '🤫',
    '🤭',
    '🤑'
  ];

  String currentEmoji = '😀';

  void generateRandomEmoji() {
    final random = Random();
    setState(() {
      currentEmoji = emojis[random.nextInt(emojis.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Emoji Generator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentEmoji,
              style: TextStyle(fontSize: 100),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: generateRandomEmoji,
              child: Text('Generate Emoji'),
            ),
          ],
        ),
      ),
    );
  }
}
