class TodoList
  def initialize(list)
    @list = list
  "Initializing new list"
  end

  def get_items()
    return @list
  end

  def get_item(integer)
    return @list[integer]
  end

  def add_item(new_item)
    return @list << new_item
  end

  def delete_item(item)
    return @list.delete(item)
  end
end