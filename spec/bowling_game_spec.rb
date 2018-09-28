# frozen_string_literal: true

require 'spec_helper'
require_relative '../bowling_game'

describe BowlingGame do

  it 'accepts a series of frames' do
    game = BowlingGame.new([0,0],[1,8],[5,4])
    expect(game.frames).to eq [[0,0],[1,8],[5,4]]
  end

  it 'recognizes spare' do
    game = BowlingGame.new([5,5])
    expect(game.is_spare?).to be true
  end

  it 'recognizes strike' do
    game = BowlingGame.new([10,0])
    expect(game.is_strike?).to be true
  end

  it 'scores a non strike/spare' do
    game = BowlingGame.new([7,1])
    expect(game.frame_score).to eq 8
  end

  it 'scores a strike' do
    game = BowlingGame.new([10,0][4,1])
    expect(game.frame_score).to eq 8
  end

  it 'scores a spare' do
    game = BowlingGame.new([7,3],[4,1])
    expect(game.frame_score).to eq 14
  end
end
