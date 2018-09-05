PDFKit.configure do |config|
	# On localserver window System i have set .exe path of wkhtmltopdf

  	config.wkhtmltopdf = 'public/wkhtmltox/bin/wkhtmltopdf.exe'
	
	# for live server first find the path of  wkhtmltopdf
	# run this command "which wkhtmltopdf" check command according to your platform
	
	#config.wkhtmltopdf = 'var/home/wkhtmltopdf'

end