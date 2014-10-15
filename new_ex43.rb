class Scene
  def enter()
    puts "This scene is in development."

    exit(1)
  end
end


class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
      current_scene = @scene_map.opening_scene()

      current_scene.enter()
  end
end

class Death < Scene

  def enter()
    puts "You deeeeaaadd!"
    exit(0)
  end
end

class CentralCorridor < Scene

  def enter()
    puts "You are in the central corridor"
    puts "Someone jumps out, what do you do next?"

    response = $stdin.gets.chomp
    if response == "shoot"
      puts "You fire at the person, you dodge the shot and then quickly eats you."
      return 'death'
    elsif response == "run"  
      puts "He is faster than you, he catches you and eats you. "
      return "death"
    elsif response == "blow a kiss"
      puts "The person doesn't know how to react, confused, you quickly shoot him in the head."
      puts "You reach the door to the laser weapon room!"
      return "weapons"
    end
  end
end


class LaserWeaponArmory < Scene

  def enter()
    puts "You enter the Weapons room!"

  end
  'bridge'
end

class TheBridge < Scene

  def enter()
    puts "You enter the Bridge!"
  end
  'escapepod'
end

class EscapePod < Scene

  def enter()
    puts "You enter the escape pod!"
  end
  'finished'
end

class Finished < Scene

  def enter()
    puts "You win!"
  end
 
end

class Map

    @@scenes = {"death" => Death.new(), "bridge" => TheBridge.new(), 
      "escapepod" => EscapePod.new(), "weapons" => LaserWeaponArmory.new(), 
      "centralcorridor" => CentralCorridor.new()}

  def initialize(start_scene)
    @start_scene = start_scene

  end

  def next_scene(scene_name)
    test = @@scenes[scene_name]
    test
  end

  def opening_scene()
      next_scene(@start_scene)
  end
end


a_map = Map.new("centralcorridor")
a_game = Engine.new(a_map)
a_game.play()

test = CentralCorridor.new()
test.enter()