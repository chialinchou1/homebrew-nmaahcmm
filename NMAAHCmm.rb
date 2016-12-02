  require 'formula'

class Mm < Formula
  homepage 'http://github.com/mediamicroservices/mm'
  url 'https://github.com/mediamicroservices/mm/archive/mm_v2.1.6.zip'
  sha256 'ab5c01f48fc6f4b71b15cc0849d844735ce06035336ae840709bf842595e7a44'
  head 'git://github.com/mediamicroservices/mm.git'
  
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
    bin.install "aipupgrade"
    bin.install "barcodeinterpret"
    bin.install "blackatends"
    bin.install "checksum2filemaker"
    bin.install "checksumpackage"
    bin.install "createpremisdb"
    bin.install "dbbackup"
    bin.install "finishpackage"
    bin.install "fix_left2stereo"
    bin.install "fix_rewrap"
    bin.install "fix_volume"
    bin.install "ingestfile"
    bin.install "makebroadcast"
    bin.install "makedvd"
    bin.install "makeflv"
    bin.install "makeframes"
    bin.install "makelossless"
    bin.install "makemetadata"
    bin.install "makemets"
    bin.install "makemp3"
    bin.install "makepdf"
    bin.install "makepodcast"
    bin.install "makeprores"
    bin.install "makeqctoolsreport"
    bin.install "makeresourcespace"
    bin.install "makeslate"
    bin.install "makewaveform"
    bin.install "makeyoutube"
    bin.install "migratefiles"
    bin.install "mm-desktop-setup"
    bin.install "mmconfig"
    bin.install "mmfunctions"
    bin.install "mmupdate"
    bin.install "paperingest"
    bin.install "phasecheck"
    bin.install "qatesting"
    bin.install "quickcompare"
    bin.install "removeDSStore"
    bin.install "restructureForCompliance"
    bin.install "tesseract.conf"
    bin.install "updateplist"
    bin.install "uploadomneon"
    bin.install "verifytree"
    bin.install "xdcamingest"
  end
  
  def post_install;
      system "updateplist"
  end
  
      def caveats; <<-EOS.undent
    If using the PREMIS DB reporting feature of mm, backup can be controlled via included plist file. Backup only needs to be activated/configured on the DB host computer. Included plist file will run daily backups at 2:00AM if activated.
    EOS
  end
  
  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>OnDemand</key>
        <true/>
        <key>RunAtLoad</key>
        <true/>
        <key>StartCalendarInterval</key>
        <dict>
          <key>Hour</key>
          <integer>02</integer>
          <key>Minute</key>
          <integer>00</integer>
        </dict>
        <key>ProgramArguments</key>
        <array>
            <string>#{bin}/dbbackup</string>
        </array>
        <key>WorkingDirectory</key>
        <string>#{HOMEBREW_PREFIX}</string>
      </dict>
    </plist>
    EOS
  end
end
