package com.felix.learnspringframework.game;

public class GameRunner {
    //    private final MarioGame game;
    private final GamingConsole game;

    public GameRunner(GamingConsole game) {
        this.game = game;
    }

    public void run() {
        System.out.println("Running game: " + game);
        game.down();
        game.up();
        game.left();
        game.right();
    }
}
