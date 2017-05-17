castle = {
  throne_room:[
    "chairs",
    "throne",
    "pillars"
  ],
  gaurd_tower:[
    "guards",
    "crossbows",
    "flaming arrows",
    "wine"
  ],
  stables: {
    horses: [
      "brown",
      "black",
      "spotted",
      "unicorn"
    ],
    dragons: [
      "brown",
      "red",
      "grey",
      "green"
    ],
  },
  treasure_room: [
    "gold",
    "diamonds",
    "scepter"
  ]
}
#prints throne
p castle [:throne_room][1]

# prints unicorn
p castle[:stables][:horses][-1]

#prints gold

p castle[:treasure_room][0]