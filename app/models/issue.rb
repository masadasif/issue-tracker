class Issue < ApplicationRecord
    
    STATUS = %w[Closed Open].freeze
  	enum status: STATUS
end
