assignment ={ data: { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}
#Retrieve the capacity of room 201 and store it in a variable.

answer1 = assignment[:data][:rooms][0][:capacity]
puts answer1

# Find all the events taking place in room 201. Iterate through them and print "ok" if the
# number of planned attendees will fit in the room.

assignment[:data][:events].each do |event|
  if event[:room_id] == 1 && event[:attendees] <= 50
    puts "This room will work"
  end
end

#
