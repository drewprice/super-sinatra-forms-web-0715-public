class Hero
  def initialize(attributes)
    attributes.each do |k, v|
      instance_variable_set("@#{k}", v)

      reader = proc { instance_variable_get("@#{k}") }
      self.class.send('define_method', k, reader)
    end
  end
end
