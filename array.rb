class Array

  def keep(&block)
    self.inject([]) { |memo, e| memo << e if matches_for(e, &block); memo}
  end

  private
  def matches_for(element, &block)
    !!(yield element)
  end

end
