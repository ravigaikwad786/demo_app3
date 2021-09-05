class AddPagesToSubjects < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :pages, :integer
  end
end
