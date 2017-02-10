class AddHobbiesToBears < ActiveRecord::Migration[5.0]
  def change
    add_column :bears, :hobby, :string
  end
end
