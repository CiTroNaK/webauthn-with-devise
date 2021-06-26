class CreateWebauthnCredentials < ActiveRecord::Migration[6.1]
  def change
    create_table :webauthn_credentials, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.string :external_id, null: false
      t.string :public_key, null: false
      t.string :nickname, null: false
      t.integer :sign_count, null: false, default: 0

      t.timestamps
    end
    add_index :webauthn_credentials, :external_id, unique: true
    add_index :webauthn_credentials, %i[nickname user_id], unique: true
  end
end
