class CreateInterestPages < ActiveRecord::Migration
  def change
    create_table :interest_pages do |t|
      t.string :name
      t.string :category
      t.string :image_url

      t.timestamps
    end
  end
end
