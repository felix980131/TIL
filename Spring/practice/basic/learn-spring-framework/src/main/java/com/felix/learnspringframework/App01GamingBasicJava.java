package com.felix.learnspringframework;

import com.felix.learnspringframework.game.GameRunner;
import com.felix.learnspringframework.game.PacmanGame;

public class App01GamingBasicJava {
    public static void main(String[] args) {
        // var game = new MarioGame();
        // var game = new SuperContraGame();
        var game = new PacmanGame();    // 1. 객체 생성

        var gameRunner = new GameRunner(game);  // 2. 객체 생성 + 종속성 연결
        gameRunner.run();
    }
}
