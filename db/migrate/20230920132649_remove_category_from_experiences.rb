class RemoveCategoryFromExperiences < ActiveRecord::Migration[7.0]
  def change
    remove_column :experiences, :category, :string
  end
end
