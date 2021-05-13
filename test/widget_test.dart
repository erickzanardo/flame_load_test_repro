import 'package:flame/extensions.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flame_load_test_repro/game.dart';

void main() {
  testWidgets('Can load the game', (WidgetTester tester) async {
    final myGame = MyGame();
    myGame.onResize(Vector2.all(500));
    await myGame.onLoad();
    myGame.update(0);

    expect(myGame.components.length, 1);
  });
}
