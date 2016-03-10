class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|

      t.references :post, index: true
    end
  end
end
