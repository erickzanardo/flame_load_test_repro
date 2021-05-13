import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class MyGameWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return GameWidget(game: MyGame());
    }
}

class MyGame extends BaseGame {
  @override
  Future<void> onLoad() async {
    final citySprite = await loadSprite('sprites/city.png');
    add(SpriteComponent(sprite: citySprite, size: Vector2(200, 200)));
  }
}
