class AddUserIdToInterestPage < ActiveRecord::Migration
  def change
    add_column :interest_pages, :user_id, :integer
  end
end
