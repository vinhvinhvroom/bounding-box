require_relative '../lib/bounding_box'

class BoundingArea
  attr_reader :bounding_boxes_array

  def initialize(bounding_boxes_array)
    @bounding_boxes_array = bounding_boxes_array
  end

  def boxes_contain_point?(x,y)
    @bounding_boxes_array.each do |box|
      if box.contains_point?(x,y) == true
        return true
      end
    end
      return false
  end

end
