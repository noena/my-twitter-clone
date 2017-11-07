class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.string :body, null: false
      t.references :user, foreign_key: true #{to_table: :users} instead of true
      t.timestamps
    end
  end
end
