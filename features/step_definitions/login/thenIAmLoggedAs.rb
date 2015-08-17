Then(/^I am logged as "(.*?)"$/) do |fullName|
    sleep 1
    assert_equal(fullName, query("* id:'title'")[0]["text"])
end
