class Campers
  def initialize(activities)
    @activities = activities
  end

  def sort
    result = nil

    large_array = []
    @activities.each do |activity|
      new_array = []
      new_array << activity
      large_array << new_array
    end
    large_array

    count = 0
    large_array.each do |activity|
      while count <= large_array.length - 1
        if large_array[count] == large_array[count + 1]
          large_array.delete_at(count)
          count += 1
          large_array[count - 1] << 2
        else
          large_array[count] << 1
          count += 1
        end
      end
    end
    large_array
  end
end