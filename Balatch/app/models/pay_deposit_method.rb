class PayDepositMethod < ApplicationRecord
  
  has_many :histories
  
  enum group: {cash: 0, credit: 1, online: 2, debit: 3}
  
  def full_method_name
    group_i18n + " " + name
  end
end
