class Todo
  attr_reader :description, :completed_at

  def initialize(description)
    @description = description
  end

  def done!
    @completed_at = Time.now
  end

  def done?
    @completed_at != nil
  end

  def to_s
    if done?
      check = 'x'
    else
      check = ' '
    end
    "[#{check}] #{description}"
  end
end