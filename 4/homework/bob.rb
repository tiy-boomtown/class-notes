class Bob
  def hey(msg)
    if is_angry? msg
      'Whoa, chill out!'
    elsif msg.end_with? '?'
      'Sure.'
    elsif msg.strip.empty?
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end

  def is_angry? msg
    return false unless ('A' .. 'Z').any? { |l| msg.include? l }
    msg == msg.upcase
  end
end