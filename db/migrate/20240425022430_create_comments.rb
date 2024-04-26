class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|

      t.timestamps
      t.text       :content,   nill:false
      t.references :prototype, null: false,foreign_kye: true
      t.references :user, null: false,foreign_kye: true

      
    end
  end
end
