class Action
  def perform(operator:, a:, b:)
    case operator
    when '+'
      sum(a, b)
    when '-'
      minus(a, b)
    end
  end

  private

  def sum(a, b)
    a + b
  end

  def minus(a, b)
    a - b
  end
end
