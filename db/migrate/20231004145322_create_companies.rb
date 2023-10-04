class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :icon
      t.string :slug

      t.timestamps
    end
  end
end
