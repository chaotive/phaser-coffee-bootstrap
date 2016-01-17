class CHAOTIVE.SAMPLE.STATES.GameOver extends Phaser.State

  constructor: (@game) ->

  create: () ->
    @game.add.sprite(0, 0, 'bg2')
    @sprite = @game.add.sprite(250, 300, 'spr1')
    @sprite.inputEnabled = true
    @sprite.events.onInputDown.add(@action,@)

  action: () ->
    @game.state.start('menu')
