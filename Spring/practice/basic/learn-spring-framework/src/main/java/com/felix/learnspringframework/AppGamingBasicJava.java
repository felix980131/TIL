package com.felix.learnspringframework;

import com.felix.learnspringframework.game.GameRunner;
import com.felix.learnspringframework.game.PacmanGame;

public class AppGamingBasicJava {
    public static void main(String[] args) {
        // var game = new MarioGame();
        // var game = new SuperContraGame();
        var game = new PacmanGame();

        // GameRunner의 파라미터 타입을 변경하지 않아도 여러 게임들을 실행시킬 수 있다. -> 약한 결합
        var gameRunner = new GameRunner(game);
        gameRunner.run();
    }
}
