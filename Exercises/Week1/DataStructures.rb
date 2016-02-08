#hash = {:wat => [0, 1, {:wut => [0,[[1,2,3,4,5,6,7,8,9,{:bbq => 0}], 1]} ]}

hash = {
  wat: [
    {}, {}, {
      wut: [
        1, [
          [
             {},{},{},{},{},{},{},{},{},{
              bbq: "bbq"
            }
             
          ]
        ]
      ]
      }
    ]
}

puts hash [:wat][2][:wut][1][0][9][:bbq]

arr = [
        [ 1,2,3,4,5,{
          secret: {
            unlock: 
              ["hello", "bye"]  
          }
        }
        ]
      ]

puts arr [0][5][:secret][:unlock][1]