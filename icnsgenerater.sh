image=$1

tempDir="tmp.iconset"

mkdir $tempDir

sips -z 16 16    $image --out $tempDir/icon_16x16.png

sips -z 32 32    $image --out $tempDir/icon_16x16@2x.png

sips -z 32 32    $image --out $tempDir/icon_32x32.png

sips -z 64 64    $image --out $tempDir/icon_32x32@2x.png

sips -z 128 128  $image --out $tempDir/icon_128x128.png

sips -z 256 256  $image --out $tempDir/icon_128x128@2x.png

sips -z 256 256  $image --out $tempDir/icon_256x256.png

sips -z 512 512  $image --out $tempDir/icon_256x256@2x.png

sips -z 512 512  $image --out $tempDir/icon_512x512.png

sips -z 1024 1024  $image --out $tempDir/icon_512x512@2x.png

iconutil -c icns $tempDir -o icon.icns

rm -rf $tempDir