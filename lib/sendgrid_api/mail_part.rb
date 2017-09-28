#add empty to the Mail::Part object so sendgrid_api gem doesn't fail when trying to check html_part and text_part
module Mail
  class Part
    def empty?
      self.to_s.empty?
    end
  end
end