class AddCoverToArticles < ActiveRecord::Migration
  def change
    add_attachment :members, :cover
  end
end
