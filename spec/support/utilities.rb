include ApplicationHelper

def fillup_form
  fill_in "from", with: "Bangalore"
  fill_in "to", with: "Delhi"
  fill_in "date", with: "a"
end