class CreateBears < ActiveRecord::Migration[5.0]
  def change
    create_table :bears do |t|
      t.column :name, :string
      t.column :cost, :integer
      t.column :country, :string
      t.column :color, :string
    end
  end
end
