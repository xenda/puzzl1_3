module Suggestor
  class Attempt
    
    attr_accessor :dictionary, :query
    
    def initialize(tryout)
      self.query, *self.dictionary = tryout.split("\n")
    end
    
    
  end
end