#!/usr/bin/env ruby
require './get'
$file             = './file/input.txt'
class Main
  allocated_slot = 0
  parking_number = 0
  run = false
  parking_lot = []
  File.open($file, "r").each do |gets|
    parking = Parking.new
    input = gets.split(" ")
    if input[0] == "create_parking_lot"
      allocated_slot = input[1]
      puts "Created a parking lot with #{allocated_slot} slots "
    elsif input[0] == "park"
      if parking_lot.length < allocated_slot.to_i
        if parking_lot.count == 0
          parking.create_parking_lot(parking_number+1,input[1],input[2])
          parking_lot.push(parking)
        else
          parking_lot = parking_lot.sort { |x, y| x.slot_no <=> y.slot_no }
          max = parking_lot.max { |a, b| a.slot_no <=> b.slot_no}
          if parking_lot.find { |x| x.slot_no == max.slot_no+1 }.nil?
            if max.slot_no+1 > allocated_slot.to_i
              for i in 1..parking_lot.length
                if parking_lot.find { |x| x.slot_no == i }.nil?
                  parking.create_parking_lot(i,input[1],input[2])
                  parking_lot.push(parking)
                end
              end
            else
              parking.create_parking_lot(max.slot_no+1,input[1],input[2])
              parking_lot.push(parking)
            end
          end
        end
      else
        puts "Sorry, parking lot is full"
      end
    elsif input[0] == 'leave'
      parking_lot.delete_if {|lot| lot.slot_no.to_s == input[1].to_s }
      puts "Slot number #{input[1]} is free"
    elsif input[0] == 'status'
      parking_lot = parking_lot.sort { |x, y| x.slot_no <=> y.slot_no }
      puts " slot_no  |    registration_no     |    colour "
      parking_lot.each do |lot|
        puts "       #{lot.slot_no}      #{lot.registration_no}            #{lot.colour} "
      end
    elsif input[0] == "registration_numbers_for_cars_with_colour"
      data = []
      parking_lot.each do |lot|
        if lot.colour == input[1]
          data.push(lot.registration_no)
        end
      end
      if data.empty?
        puts "not found"
      else
        puts data.join(', ')
      end
    elsif input[0] == "slot_numbers_for_cars_with_colour"
      data = []
      parking_lot.each do |lot|
        if lot.colour == input[1]
          data.push(lot.slot_no)
        end
      end
      if data.empty?
        puts "not found"
      else
        puts data.join(', ')
      end
    elsif input[0] == "slot_number_for_registration_number"
      data = []
      parking_lot.each do |lot|
        if lot.registration_no == input[1]
          data.push(lot.slot_no)
        end
      end
      if data.empty?
        puts "not found"
      else
        puts data.join(', ')
      end
    else
      puts "wrong command"
    end
  end

end
