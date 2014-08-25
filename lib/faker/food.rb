module Faker
  class Food < Base
    class << self
      def bento
        parse('food.bento.bento')
      end
    end
  end
end
