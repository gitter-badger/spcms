class Problem
  attr_reader :id, :set

  def initialize(id, set)
    @id = id
    @set = set
  end

  def input_path
    "#{path}.in"
  end

  private
  def path
    "problems/#{@id}/#{@set.to_s}"
  end
end
