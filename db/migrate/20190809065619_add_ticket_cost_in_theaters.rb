class AddTicketCostInTheaters < ActiveRecord::Migration[5.2]
  def change
    add_column :theaters, :ticket_cost, :integer
  end
end
