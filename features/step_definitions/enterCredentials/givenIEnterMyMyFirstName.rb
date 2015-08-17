Given(/^I enter my first name "(.*?)"$/) do |firstName|
    touch(query("* id:'first_name'")[0])
    keyboard_enter_text(firstName)
end
