module IRB
  @CONF = {}

  def self.conf
    @CONF
  end

  def self.setup(ap = nil)
  end

  def self.irb_at_exit
  end

  class WorkSpace
    def initialize(b, other=nil)
    end
  end

  class Irb
    def initialize(*)
    end

    def context
      binding
    end

    def eval_input
    end
  
    def signal_handle
    end
  end
end

class Ir
  class Tty
    def initialize(options = {})
    end
  end
end

class Ripl
  def self.start(options = {})
  end
end

class Pry
  def self.start(binding, options = {})
  end
end

class Rib
  def self.anchor(binding, options = {})
  end
end
