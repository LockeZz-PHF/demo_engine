class CreateDemoEnginePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :demo_engine_posts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
