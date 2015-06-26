module Lita
  module Handlers
    class AllHailShaun < Handler
      route(/./, :all_hail_shaun)

      def all_hail_shaun(request)
        return unless request.user.mention_name == "shaun"

        request.reply(return_random_statement)
      end

      def return_random_statement
        random_statements[rand(random_statements.count)]
      end
 
      def random_statements
        [
          "All hail Shaun, our mighty leader",
          "Shaun is speaking, everyone needs to pay attention",
          "That's Shaun Richards, capital S capital R.",
          "Hex bows before his human Overlord, Shaun Richards",
          "Greetings and salutations Shaun Richards"
        ]
      end
    end

    Lita.register_handler(AllHailShaun)
  end
end
