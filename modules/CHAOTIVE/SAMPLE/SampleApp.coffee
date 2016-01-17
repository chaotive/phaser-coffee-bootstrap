class CHAOTIVE.SAMPLE.SampleApp

  constructor: (width, height) ->
    @game = new Phaser.Game(width, height)

    @game.state.add('menu', CHAOTIVE.SAMPLE.STATES.Menu, @game)
    @game.state.add('gameover', CHAOTIVE.SAMPLE.STATES.GameOver, @game)
    @game.state.start('menu')