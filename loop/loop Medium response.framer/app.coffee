# bg = new BackgroundLayer
# 	backgroundColor: "#efefef"
# 
# cardW = 100
# cardH = 60
# padding = 20
# 
# for i in [0...8]
#   card = new Layer
#     width: cardW
#     borderRadius: 5
#     backgroundColor: "#fff"
#     height: cardH
#     y: (cardH + padding) * i * padding
#     x: Align.center

cardW = 120

for i in [0...3]
  card = new Layer
    width: cardW
    x: (cardW + 10) * i