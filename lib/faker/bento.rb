module Faker
  class Bento < Base

    class << self

      def bento
        parse('bento.bento')
      end

    end
  end
end
