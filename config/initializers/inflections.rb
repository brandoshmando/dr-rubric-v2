#Inflections
ActiveSupport::Inflector.inflections do |inflect|
  #Converts criterias to criterion
  inflect.irregular 'criteria', 'criterion'
end