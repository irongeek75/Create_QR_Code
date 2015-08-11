#gem install rqrcode

require 'rqrcode'
require 'rqrcode/export/png'

qrcode = RQRCode::QRCode.new("MECARD:N:John Smith;ADR:"";TEL:"";EMAIL:john.smith@comcast.net;URL:"";;")
image = qrcode.as_png

File.open('test.png', 'wb') do |outfile|
  outfile.write(image)
end
