class CreateAssistantsSections < ActiveRecord::Migration
  def change
    create_table :assistants_sections, id: false do |t|
      t.belongs_to :assistant, index: true
      t.belongs_to :section, index: true
    end
  end
end
