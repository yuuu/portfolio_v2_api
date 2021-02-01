class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.text :introduction
      t.text :residence
      t.text :birthplace
      t.text :birthday
      t.text :hobby

      t.timestamps
    end
  end
end
