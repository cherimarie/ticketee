module ApplicationHelper
  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << "Ticketee").join(" - ")
      end
	end
  end

  def admins_only(&block)
  	yield if current_user.try(:admin?)
    #the try method saves us from an error if there is no current user
  end

end