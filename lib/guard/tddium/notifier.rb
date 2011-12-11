# encoding: utf-8
#
require 'guard/notifier'

module Guard
  class Tddium
    class Notifier
      def self.notify(result, message)
        ::Guard::Notifier.notify(message, :title => 'Tddium test results', :image => (result ? :success : :failed))
      end
    end
  end
end
