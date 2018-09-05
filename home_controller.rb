class HomeController < ApplicationController

require "pdfkit"

	def downloadpdf
	
		# Remember your page SESSION free means directly open without any condition

				PDFKit.new('PUT_HERE_ANY_URL', :page_size => 'A3').to_file('public/assets/resultspdf/FILE_NAME.pdf')

				render plain: 'Download'
	end

	def create_in_run_time

			if params[:result_id].present?

				result_id         =  params[:result_id]
				@resultData  =  TestResult.find(result_id)

				
				# Remove LeftBar and RightBar

					@skip_rightsidebar  =  TRUE
    				@skip_leftsidebar   =  TRUE

    			# for create PDF i have set new layout.

    				render layout: 'print'				

			else

				# For complete Data use default Template 

				uid = session[:user_id].to_s;
				@sql = "select * from  test_results where user_id = '"+uid+"'  ";	
				@resultData    = ActiveRecord::Base.connection.execute(@sql)
			end		
    	
	end

end