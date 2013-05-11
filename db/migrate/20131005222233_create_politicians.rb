require_relative '../config'

class CreatePoliticians < ActiveRecord::Migration
  def change

    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :politicians do |t|
      t.string    :name
      t.string    :party
      t.string    :state
      t.string    :title
      t.string    :district
      t.boolean   :in_office
      t.string    :gender
      t.string    :phone
      t.string    :fax 
      t.string    :email
      t.string    :website
      t.integer   :twitter_id
      t.datetime  :birthdate
      t.timestamps
      
      
    end
  end
end



