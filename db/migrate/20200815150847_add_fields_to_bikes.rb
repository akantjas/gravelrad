class AddFieldsToBikes < ActiveRecord::Migration[6.0]
  def change
    add_column :bikes, :price, :float
    add_column :bikes, :status, :string
    add_column :bikes, :frame, :string
    add_column :bikes, :fork, :string
    add_column :bikes, :tire_max_width, :string
    add_column :bikes, :equipment, :string
    add_column :bikes, :front_speeds, :string
    add_column :bikes, :cassette_speeds, :string
    add_column :bikes, :brake, :string
    add_column :bikes, :brake_type, :string
    add_column :bikes, :handlebar, :string
    add_column :bikes, :handlebar_type, :string
    add_column :bikes, :seat, :string
    add_column :bikes, :wheel_rims, :string
    add_column :bikes, :wheel_hubs, :string
    add_column :bikes, :wheel_tires, :string
    add_column :bikes, :lights, :string
    add_column :bikes, :fenders, :string
    add_column :bikes, :rack, :string
  end
end
