class CHAOTIVE.SAMPLE.STATES.Menu extends Phaser.State

  constructor: (@game) -> console.log(@game)

  preload: () -> CHAOTIVE.SAMPLE.Util.preload(@game)

  create: () ->
    @game.add.sprite(0, 0, 'bg1')
    @startButton = @game.add.sprite(310, 210, 'startbutton')
    @startButton.inputEnabled = true
    @startButton.events.onInputDown.add(@startAction,@)

  startAction: () ->
    # action binded to startButton
    @game.state.start('gameover')
