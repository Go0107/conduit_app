class AddFeedsColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :feeds, :about, :text
    add_column :feeds, :content, :text
    add_column :feeds, :tag, :string
  end
end
