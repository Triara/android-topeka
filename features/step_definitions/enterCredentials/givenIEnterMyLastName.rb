Given(/^I enter my last name "(.*?)"$/) do |lastName|
    touch(query("* id:'last_initial'")[0])
    keyboard_enter_text(lastName)
end
