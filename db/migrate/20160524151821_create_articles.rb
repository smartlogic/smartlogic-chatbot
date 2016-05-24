class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :token
      t.string :team_id
      t.string :team_domain
      t.string :channel_id
      t.string :channel_name
      t.string :user_id
      t.string :user_name
      t.text :text
      t.string :trigger_word

      t.timestamps null: false
    end
  end
end
