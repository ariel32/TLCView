library("EBImage")

ei = readImage("example.jpg")

#ei <- ei>0.6
colorMode(ei) = Grayscale
ei = channel(ei, "grey")

i2 = readImage("img-2.jpeg")
kern = makeBrush(15, shape="disc")
i2 = erode(i2, kern)
i2 = dilate(i2, kern)
writeImage(i2, "img.jpeg", quality=85)

kern = makeBrush(50, shape="disc")
eierode = erode(ei, kern)
eidilat = dilate(ei, kern)
eilabel = bwlabel(ei)
cat("Number of objects=", max(eilabel),"\n")

writeImage(ei, "img.jpeg", quality=85)
