class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  self.abstract_class = true
  PgSearch.multisearch_options = {
    :using => {
      :tsearch => {:prefix => true, :dictionary => "english"}
    }
  }
end
