package com.felix.learnspringframework;

import com.felix.learnspringframework.game.GameRunner;
import com.felix.learnspringframework.game.SuperContraGame;

public class AppGamingBasicJava {
    public static void main(String[] args) {
//        var marioGame = new MarioGame();
//        var gameRunner = new GameRunner(marioGame);
        var superContraGame = new SuperContraGame();
        // GameRunner의 파라미터 타입을 marioGame에서 superContraGame으로 바꿔야 한다 -> 강한 결합
        var gameRunner = new GameRunner(superContraGame);
        gameRunner.run();
    }
}
