class Arena

  attr_accessor :name, :gladiators

  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def add_gladiator( gladiators )
    if @gladiators.length < 2
      @gladiators.push( gladiators )
    end
  end

  def fight
      if @gladiators.empty?
        return
      end
      if @gladiators.count == 2
          if @gladiators.first.weapon == @gladiators.last.weapon

            @gladiators.pop(2)
            return
          end

          if @gladiators[0].weapon == ("Trident")
            if @gladiators[1].weapon == ("Spear")
              @gladiators.delete_at(1)
            elsif @gladiators[1].weapon == ("Club")
              @gladiators.delete_at(0)
            end
          elsif @gladiators[0].weapon == ("Spear")
            if @gladiators[1].weapon == ("Trident")
              @gladiators.delete_at(0)
            elsif @gladiators[1].weapon == ("Club")
              @gladiators.delete_at(1)
            end
          elsif @gladiators[0].weapon == ( "Club" )
            if @gladiators[1].weapon == ("Trident")
              @gladiators.delete_at(1)
            elsif @gladiators[1].weapon == ("Spear")
              @gladiators.delete_at(0)
            end
          end
      end

    end


  end
