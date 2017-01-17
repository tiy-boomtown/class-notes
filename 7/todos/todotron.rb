require_relative 'todo'

class TodoTron
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(description)
    new_item = Todo.new description
    @items.push new_item
  end

  def mark_complete(description)
    item = find_item description
    if item
      item.done!
    end
  end

  def find_item(description)
    @items.each do |item|
      if item.description == description
        return item
      end
    end
    return nil
  end
end