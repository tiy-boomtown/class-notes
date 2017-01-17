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
    @items.each do |item|
      if item.description == description
        item.done!
      end
    end
  end
end