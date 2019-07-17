# ParkingLot
ParkingLot app is an automated ticketing system that allows customers to use my parking lot without human intervention
# Version
1.0.0
# dependencies
    ruby 2.3.7p456 (2018-03-28 revision 63024) [universal.x86_64-darwin17]
    bundler (~> 1.16)
    rake (~> 10.0)
    rspec (~> 3.0)
# author
Wasil
# file
    ./file/input.txt
    ./start_park.rb
    ./get.rb
# Running
 using UNIX 
  ruby start_park.rb
# sample
# input
    file dir 
    ./file/input.txt

    create_parking_lot 6
    park KA-01-HH-1234 White
    park KA-01-HH-9999 White
    park KA-01-BB-0001 Black
    park KA-01-HH-7777 Red
    park KA-01-HH-2701 Blue
    park KA-01-HH-3141 Black
    leave 4
    status
    park KA-01-P-333 White
    park DL-12-AA-9999 White
    registration_numbers_for_cars_with_colour White
    slot_numbers_for_cars_with_colour White
    slot_number_for_registration_number KA-01-HH-3141
    slot_number_for_registration_number MH-04-AY-1111

# output
    Created a parking lot with 6 slots
    Allocated slot number: 1
    Allocated slot number: 2
    Allocated slot number: 3
    Allocated slot number: 4
    Allocated slot number: 5
    Allocated slot number: 6
    Slot number 4 is free
     slot_no  |    registration_no     |    colour
           1      KA-01-HH-1234            White
           2      KA-01-HH-9999            White
           3      KA-01-BB-0001            Black
           5      KA-01-HH-2701            Blue
           6      KA-01-HH-3141            Black
    Allocated slot number: 4
    Sorry, parking lot is full
    KA-01-HH-1234, KA-01-HH-9999, KA-01-P-333
    1, 2, 4
    6
    not found
