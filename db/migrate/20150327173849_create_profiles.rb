class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :course
      t.string :studentno
      t.string :mobile
      t.references :user, index: true

      t.timestamps
    end
  end
end
