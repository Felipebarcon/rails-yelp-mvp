class ChangePhoneNumberToBeAStringInRestaurants < ActiveRecord::Migration[6.1]
  def change
    change_column :phone_number, :string
  end
end
