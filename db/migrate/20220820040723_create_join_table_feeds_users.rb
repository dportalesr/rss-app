class CreateJoinTableFeedsUsers < ActiveRecord::Migration[7.0]
  def change
    create_join_table :feeds, :users do |t|
      t.index [:feed_id, :user_id]
    end
  end
end
