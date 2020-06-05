class AddAgeToEnologist < ActiveRecord::Migration[5.2]
  def change
    add_column :enologists, :age, :integer
    add_column :enologists, :nationality, :string
  end
end
