class CreateRecommendations < ActiveRecord::Migration[6.1]
  def change
    create_table :recommendations do |t|
      t.string :comment
      t.integer :appointment_id

      t.timestamps
    end
  end
end
