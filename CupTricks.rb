#!/usr/bin/ruby -w
require './Tricks'

class CupTricks < Tricks
  #constructor
  def initialize(g, d, n)
    super(g, d, n)
    @multiplier = 1.0
  end
  
  #getters
  def printGrip
    @grip
  end
  
  def printDifficulty
    @difficulty
  end
    
  def printDifficultyMultiplier
    puts "You get " + @multiplier.to_s + "x points for doing this trick!"
  end
  
  def printName
    @name
  end
    
  def trickToString
    super
    puts "You get " + @multiplier.to_s + "x points for doing this trick!"
  end
  
end

