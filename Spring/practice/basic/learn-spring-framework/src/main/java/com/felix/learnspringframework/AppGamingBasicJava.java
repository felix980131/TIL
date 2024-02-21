package com.felix.learnspringframework;

import com.felix.learnspringframework.game.GameRunner;
import com.felix.learnspringframework.game.MarioGame;

public class AppGamingBasicJava {
    public static void main(String[] args) {
        var marioGame = new MarioGame();
        var gameRunner = new GameRunner(marioGame);
        gameRunner.run();
    }
}
