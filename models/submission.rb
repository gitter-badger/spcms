class Submission
  def initialize(problem, receipt_output)
    @problem = problem
    @receipt_output = receipt_output
  end

  def judge
    begin
      @problem.correct_output == @receipt_output.tr("\r", "") ? "Accepted" : "Wrong Answer"
    rescue
      raise if Sinatra::Application.development?
      "Internal Error"
    end
  end
end
