ActiveRecord::Schema.define do
  self.verbose = false

  create_table :test_repositories, :force => true do |t|
    t.string :name
    t.timestamps null: false
  end

  create_table :repository_resources, :force => true do |t|
    t.string :name
    t.string :full_name
    t.timestamps null: false
  end

  create_table :repository_actions, :force => true do |t|
    t.string :name
    t.references :repository_resource, index: true
    t.timestamps null: false
  end

  add_foreign_key :repository_actions, :repository_resources


end
