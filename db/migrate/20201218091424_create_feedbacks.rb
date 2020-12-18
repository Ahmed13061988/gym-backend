class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.string :content
      t.string :rating

      t.timestamps
    end
  end
end
