require_relative '../../db/config'

class Politician < ActiveRecord::Base
  def self.scrub_csv_data(attributes_hash = {})  
    clean_attributes = {}

    clean_attributes = {title: attributes_hash[:title],
                        name: "#{attributes_hash[:firstname]} #{attributes_hash[:middlename]} #{attributes_hash[:lastname]}",
                        party:      attributes_hash[:party],
                        state:      attributes_hash[:state],
                        district:   attributes_hash[:district],
                        in_office:  attributes_hash[:in_office],
                        gender:     attributes_hash[:gender],
                        phone:      attributes_hash[:phone],
                        email:      attributes_hash[:email],
                        fax:        attributes_hash[:fax], 
                        website:    attributes_hash[:website],
                        twitter_id: attributes_hash[:twitter_id],
                        birthdate:  attributes_hash[:birthdate],
                        }
    Politician.new(clean_attributes)
  end
end
