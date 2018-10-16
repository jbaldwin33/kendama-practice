require './CreateTrick'

def suggest(current_trick)

  return current_trick.instance_variable_get(:@possible_tricks).sample
  
end
