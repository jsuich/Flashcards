# Richard and Josh's version
class Controller

  attr_reader :deck, :view

  def initialize(src_file, view = View.new)
    @deck = Deck.new(parse_file(src_file))
    @view = view
  end

  def parse_file
    open()
  end

  def run_game

  def execute(command, args)
    case command
    when 'deck'
      view.render(deck.tasks)
    when 'add'
      task_content = content_from(args)
      deck.add(Task.new(task_content))
    when 'delete'
      deck.delete(id_from(args))
    when 'complete'
      task = deck.find(id_from(args))
      task.complete
    end
  end
  def content_from(args)
    args.join(' ')
  end

  def id_from(args)
    args.first.to_i
  end

end
