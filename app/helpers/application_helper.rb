module ApplicationHelper
# Returns the full title on a per-page basis.
	def full_title(page_title)
	  base_title = "Disability App"
	  if page_title.empty?
	  	base_title
	  else
	  	"#{base_title} | #{page_title}"
	  end
	 end

	def getUsers(number)
	  userTest = User.pluck :name
	  return userTest[2]
	end
	def getEmail(number)
	  userTest2 = User.find(number)
	  return userTest2.email
	end
	def yieldHtmlTest
	  render html: '<h2> Hello </h2>'.html_safe
	end
	def getAll
	  @getThem = User.pluck :name
	  
	  @getThem.each do |format|
	    format.html {render :text => format.to_html}
	  end
	  
	end
end
