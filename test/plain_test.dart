import 'package:flame/extensions.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flame_load_test_repro/game.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('Can load the game', () async {
    final myGame = MyGame();
    myGame.onResize(Vector2.all(500));
    await myGame.onLoad();

    expect(myGame.components.length, 1);
  });
}
