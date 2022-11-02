class RemoveUserFromCars < ActiveRecord::Migration[7.0]
  def change
    remove_reference :cars, :user, index: true, foreign_key: true
  end
end
