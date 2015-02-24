class CreateInvitationTemplates < ActiveRecord::Migration
  def change
    create_table :invitation_templates do |t|
      t.string :subject
      t.text :body

      t.timestamps null: false
    end
  end
end
