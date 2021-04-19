def group_by_marks(marks, pass_marks)
  # your code here
    marks.group_by{ |m, v| v > pass_marks ? "Passed" : "Failed" }
end