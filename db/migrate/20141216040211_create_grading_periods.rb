class CreateGradingPeriods < ActiveRecord::Migration
  def change
    create_table :grading_periods do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.string :type
      t.timestamps
    end
  end
end
