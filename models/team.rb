class Team
  def initialize(attributes)
    attributes.each do |k, v|
      instance_variable_set("@#{k}", v)

      reader = proc { instance_variable_get("@#{k}") }
      self.class.send('define_method', k, reader)
    end
  end

  def super1
    Hero.new(members['super1'])
  end

  def super2
    Hero.new(members['super2'])
  end

  def super3
    Hero.new(members['super3'])
  end
end
