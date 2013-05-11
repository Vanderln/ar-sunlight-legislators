require_relative 'app/models/politician'



# p Politician.where(:state => 'IL')

# def list_state_pol(state)
# q = Politician.where(:state => 'CA').where(:in_office => true).group(:title).order(:name)
# module PoliticianQuery
#   def self.find_state_politicians(state)
#     sens = Politician.find_all_by_state_and_title(state, 'Sen')
#     sens.sort_by! { |sen| sen.name.split(' ').last }
#     reps = Politician.find_all_by_state_and_title(state, 'Rep')
#     reps.sort_by! { |rep| rep.name.split(' ').last }
#     return sens, reps
#   end

#   def self.print_state_pols(state)
#     sens, reps = find_state_politicians(state)
#     puts "Senators:\n"
#     sens.each{ |sen| puts "\t #{sen.name} (#{sen.party})"}
#     puts "Representatives:\n"
#     reps.each{ |rep| puts "\t #{rep.name} (#{rep.party})"}
#   end


#   # def self.print_state_pols(state)
#   #   senators, representatives = find_state_politicians(state)
#   #   puts "Senators:\n"
#   #     sens.each{|pol| puts "  #{pol.name} (#{pol.party})"}
    

#   #   puts "Representatives"
#   #     reps.each{|pol| puts "  #{pol.name} (#{pol.party})"}
#   # end

  

# end

# PoliticianQuery::print_state_pols('AL')

##Query Number 2
# male_sens =  Politician.find_all_by_in_office_and_gender_and_title(true, 'M', 'Sen').count
# total_sens = Politician.find_all_by_in_office_and_title(true, 'Sen').count

# male_reps =  Politician.find_all_by_in_office_and_gender_and_title(true, 'M', 'Rep').count
# total_reps = Politician.find_all_by_in_office_and_title(true, 'Rep').count

#  percent_sen = ((male_sens/total_sens.to_f) * 100).floor
#  percent_rep = ((male_reps/total_reps.to_f) * 100).floor

# puts "Male Senators #{male_sens}  (#{percent_sen})"
# puts "Male Representatives #{male_reps}  (#{percent_rep})"
##Query Number 3
# Politician.group("state").where(:title => "Rep", :in_office => true).select("politicians.state, count(politicians.title) AS rep_count").order("rep_count DESC").map { |this| puts "#{this.state} 2 Senators, #{this.rep_count} Representatives" }
##Query Number 4
# scount = Politician.find_all_by_title('Sen').count
# rcount = Politician.find_all_by_title('Rep').count

# puts "Senators: #{scount}"
# puts "Representatives #{rcount}"
##Query Number 5
# p r_nocount = Politician.find_all_by_in_office_and_title(false, 'Rep').count
# p s_nocount = Politician.find_all_by_in_office_and_title(false, 'Sen')

 # r_nocount = Politician.find_all_by_in_office_and_title(false, 'Rep').each{|rep| rep.destroy}
# s_nocount = Politician.find_all_by_in_office_and_title(false, 'Sen').each{|sen| sen.destroy}
