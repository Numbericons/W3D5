require 'byebug'
class AttrAccessorObject
  def self.my_attr_accessor(*names)
    # define_method(names) {}
    names.each do |name|
      define_method("#{name}") { instance_variable_get(name) }

      define_method("#{name}=") { instance_variable_set(name, value)}
    end
  end
end
