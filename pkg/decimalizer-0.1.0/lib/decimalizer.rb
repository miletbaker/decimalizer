# Decimalizer
module Decimalizer
	def self.included(base)
		base.extend ClassMethods
	end
	
	module ClassMethods
		
		def decimalize(*names)
			names.each do |name|
				# Create new vertualised attributes name_as_decimal
				
				# Store value submitted and convert to int
				define_method(name.to_s + '_as_decimal=') do |value|
					instance_variable_set("@#{name}_as_decimal_before_type_cast",value)
					write_attribute(name, (value.to_f * 100).round)
				end
				
				# Return value stored in named attribute as a float to 2dp
				define_method(name.to_s + '_as_decimal') do
					read_attribute(name).nil? ? nil : read_attribute(name).to_f / 100
				end
				
				# Used by ActiveRecord validation to see data submitted before conversion above.
				define_method(name.to_s + '_as_decimal_before_type_cast') do
					instance_variable_get("@#{name}_as_decimal_before_type_cast")
				end
			end
		end
		
	end
end