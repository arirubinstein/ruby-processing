require 'ruby-processing'

class RotatingBothSquaresSketch < Processing::App

  def setup
    render_mode P3D
    rect_mode CENTER
    @theta1 = @theta2 = 0
  end

  def draw
    background 255
    stroke 0
    fill 175

    # Save the current transformation matrix. 
    # This is where we started,  with  0, 0) in the top left corner of the window and no rotation.
    pushMatrix 

    # Translate and rotate the first rectangle.
    translate 50, 50 
    rotateZ @theta1
    # Display the first rectangle.
    rect 0, 0, 60, 60 
    # Restore matrix from Step 1 so that it isn't affected by Steps 2 and 3!
    popMatrix  

    pushMatrix 
    # Translate and rotate the second rectangle.
    translate 100, 100 
    rotateY @theta2
    # Display the second rectangle.
    rect 0, 0, 60, 60 
    popMatrix 

    @theta1 += 0.02
    @theta2 += 0.02
  end

end

RotatingBothSquaresSketch.new :title => "Rotating Both Squares", :width => 200, :height => 200

