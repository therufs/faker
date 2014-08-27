module Faker
  class Food < Base
    class << self
      def bento
        fetch('food.bento.main') + ' with ' + fetch('food.bento.side') + ', ' + fetch('food.bento.filler') + ', and ' + fetch('food.bento.starch')
      end

      def maindish(type) # meat or veg
        fetch('food.style') + ' ' + fetch("food.#{type}") + ' ' + fetch('food.format')
      end

      def fancify
        fetch('food.flavor') + ' ' + fetch('food.garnish')
      end

      def fancydish(*args)
        if args[1] == 'hipster'
          fetch('food.hipster') + ' ' + self.maindish(args[0]) + ' with ' + fetch('food.hipster') + ' ' +  self.fancify
        else
          self.maindish(args[0]) + ' with ' + self.fancify
        end
      end


      # ingredients
      # spices
      # condiments
      #
      # noun format [with accessory]
      # side sauce topping


    end
  end
end
