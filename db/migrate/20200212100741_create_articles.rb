class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.integer :category_id
      t.date :publish_date
      t.string :feature_image_url
      t.boolean :is_published
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
