Hanami::Model.migration do
  change do
    create_table :contributors do
      primary_key :id

      column :username,      String,   null: false
      column :avatar_url,    String,   null: false
      column :since,         DateTime, null: false
      column :commits_count, Integer,  null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false

      index :username,   unique: true
      index :avatar_url, unique: true
    end
  end
end
