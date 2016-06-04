class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.belongs_to :nom, index: true, foreign_key: true
      t.belongs_to :leaderboard, index: true, foreign_key: true
      t.integer :votecount
      t.integer :position

      t.timestamps null: false
    end
  end
end
