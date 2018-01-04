Hanami::Model.migration do
  change do
    create_table :amounts do
      primary_key :id
      column :period, Date, null: false
      column :rate,   Float, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
