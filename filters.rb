# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  @candidates.each do |candidate|
      if candidate[:id] === id
        pp candidate
      else
        pp nil
    end
  end
end

def qualified_candidates(candidates)
  candidates.each do |candidate|
    if experienced?(candidate) && age_over_17?(candidate) && github_points_over_100?(candidate) && ruby_or_python?(candidate) && applied_last_15_days?(candidate)
      pp candidate
    end
  end
end

def experienced?(candidate)
  if [:years_of_experience] >= 2
    @qualified = true
  else
    @qualified = false
  end
end

def age_over_17?(candidate)
  if candidate[:age] > 17
    @qualified = true
  else
    @qualified = false
  end
end

def github_points_over_100?(candidate)
  
    if candidate[:github_points] > 100
      @qualified = true
    else
      @qualified = false
    end
end

def ruby_or_python?(candidate) 
  candidate[:languages].each put { language }
    if language = "Ruby" || language = "Python"
      @qualified = true
    else
      @qualified = false
    end
  end
end

def applied_last_15_days?(candidate) 
  if candidate[:date_applied].to_i <= 15
    @qualified = true
  else
    @qualified = false
  end
end


# More methods will go below
