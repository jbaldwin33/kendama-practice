#!/usr/bin/ruby -w

class Tricks
  #constructor
  def initialize(g, d, n)
    @grip, @difficulty, @name = g, d, n
    @possible_tricks = []
  end
  
  #持ち方
  def printGrip
    @grip
  end
  
  #難しさ
  def printDifficulty
    @difficulty
  end
  
  #名前
  def printName
    @name
  end
  
  #技の情報
  def trickToString
    puts "This trick is " + @name + ". The difficulty is " + @difficulty + ". You hold the " + @grip + " while doing this trick."
  end
  
end
