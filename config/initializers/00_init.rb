# Mass assignment is locked by default
ActiveRecord::Base.send(:attr_accessible, nil)
