require('minitest/autorun')
require('minitest-reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporters.new

require_relative('../card_game.rb')
