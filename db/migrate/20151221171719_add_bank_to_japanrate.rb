class AddBankToJapanrate < ActiveRecord::Migration
  def change
    add_column :japanrates, :bank, :string
  end
end
