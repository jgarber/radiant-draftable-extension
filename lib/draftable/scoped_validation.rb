# module Draftable::ScopedValidation
# 
#   def self.included(base)
# 
#     base.class_eval do
#       # Borrowed from the multi_site extension to allow Draftable to
#       # add to the scope of the uniqueness validation.
# 
#       def validates_uniqueness_of_with_draftable(*attr)
#         if table_exists? && column_names.include?('status_id')
#           configuration = attr.extract_options!
#           configuration[:scope] += :status_id
#           attr.push(configuration)
#         end
#         validates_uniqueness_of_without_draftable(*attr)
#       end
# 
#       alias_method_chain :validates_uniqueness_of, :draftable
#     end
#     
#   end
# end
# 
# ActiveRecord::Validations::ClassMethods.send :include, Draftable::ScopedValidation