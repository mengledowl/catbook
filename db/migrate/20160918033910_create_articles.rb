class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.text :image_source
      t.text :body
    end
  end
end

# todo: run rake db:migrate