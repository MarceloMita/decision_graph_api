class ConditionParser
  OPERATORS = %w(eq gt lt gteq lteq and or noteq)

  def self.eq(a, b)
    return a == b
  end

  def self.gt(a, b)
    return a > b
  end

  def self.gteq(a, b)
    return a >= b
  end

  def self.lt(a, b)
    return a < b
  end

  def self.lteq(a, b)
    return a <= b
  end

  def self.and(a, b)
    return a && b
  end

  def self.or(a, b)
    return a || b
  end

  def self.noteq(a, b)
    return a != b
  end

  def self.avaliate_condition(condition)
    if condition.match(/^\(.*?\)$/)
      condition = condition[1..-2]
    end
    condition.gsub!(/\(.*?\)/, avaliate_condition('\1'))

    if(condition)

  end
end
