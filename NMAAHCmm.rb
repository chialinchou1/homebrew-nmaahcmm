  require 'formula'

class Nmaahcmm < Formula
  homepage 'https://github.com/NMAAHC/NMAAHCmm'
  url 'https://github.com/NMAAHC/NMAAHCmm/archive/v0.0.1.zip'
  sha256 '62e1fa9e737a873e184729eea13fb55f45cf4439c9da3511e74e85c48265bd6e'
  head 'https://github.com/NMAAHC/NMAAHCmm.git'

  depends_on 'cowsay'
  depends_on 'dvdrtools'
  depends_on 'dvdauthor'
  depends_on 'exiftool'
  depends_on 'sdl'
  depends_on 'ffmpeg' => [ 'with-sdl2', 'with-freetype' ]
  depends_on 'flac'
  depends_on 'md5deep'
  depends_on 'mediaconch'
  depends_on 'mediainfo'
  depends_on 'normalize'
  depends_on 'homebrew/dupes/rsync'
  depends_on 'tree'
  depends_on 'xmlstarlet'


  def install
    bin.install "OptArgTest"
    bin.install "bash4test.sh"
    bin.install "bashrc"
    bin.install "diffFrameMD5"
    bin.install "makechecksum"
    bin.install "makeDer"
    bin.install "makedrivetree"
    bin.install "makeframemd5"
    bin.install "makeH264"
    bin.install "moveDPX"
    bin.install "my.sh"
    bin.install "myTest.sh"
    bin.install "rename.sh"
    bin.install "restructure"
    bin.install "restructureDer"
    bin.install "temp"
    bin.install "temp.sh"
    bin.install "test"
    bin.install "testy"
    bin.install "writemetadata"
    bin.install "writemetadata.sh"
  end
end
