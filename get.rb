class Parking
  @slot_no = ''
  @registration_no = ''
  @colour = ''
  def slot_no
    return @slot_no
  end
  def registration_no
    return @registration_no
  end
  def colour
    return @colour
  end
  def set_slot_no(slot_no)
    @slot_no = slot_no
  end
  def set_registration_no(registration_no)
    @registration_no = registration_no
  end
  def set_colour(colour)
    @colour = colour
  end
  def create_parking_lot(slot_no, registration_no, colour)
    set_slot_no(slot_no)
    set_registration_no(registration_no)
    set_colour(colour)
    puts "Allocated slot number: #{slot_no}"
  end
end
