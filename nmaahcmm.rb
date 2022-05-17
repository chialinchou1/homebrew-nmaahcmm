class Nmaahcmm < Formula
  desc "Scripts for running NMAAHC microservices"
  homepage "https://github.com/NMAAHC/nmaahcmm"
  url "https://github.com/NMAAHC/nmaahcmm/archive/refs/tags/nmaahcmm-v0.0.4.tar.gz"
  sha256 "562367a73dd6c636d90b45fd59742a35a66deb1c8c329a6d55f9d51485ae2eda"
  head "https://github.com/NMAAHC/nmaahcmm.git"

  depends_on "cowsay"
  depends_on "exiftool"
  depends_on "ffmpeg"
  depends_on "md5deep"
  depends_on "media-info"
  depends_on "mediaconch"
  depends_on "rsync"
  depends_on "tree"
  depends_on "xmlstarlet"

  def install
    bin.install "camera_cards"
    bin.install "diffFrameMD5"
    bin.install "getduration"
    bin.install "gm.conf"
    bin.install "gmconfig"
    bin.install "ingestfile"
    bin.install "makechecksum"
    bin.install "makeconcat"
    bin.install "makeDer"
    bin.install "makedrivetree"
    bin.install "makeframemd5"
    bin.install "makegm"
    bin.install "makeH264"
    bin.install "makemetadata"
    bin.install "moveDPX"
    bin.install "nmaahcmm.conf"
    bin.install "nmaahcmmconfig"
    bin.install "nmaahcmmfunctions"
    bin.install "removeDSStore"
    bin.install "restructureDPX"
    bin.install "restructureForVFCU"
    bin.install "restructureSIP"
    bin.install "verifySIP"
  end
end
