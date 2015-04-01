Given(/^there's a post titled "(.*?)" with "(.*?)" content$/) do |title, content|
  visit 'www.google.com'
  @post = FactoryGirl.create(:post, title: title, content: content)
end

When(/^I am on the homepage$/) do
end

Then(/^I should see the "(.*?)" post$/) do |title|
  @post = Post.find_by_title(title)

  page.should have_content(@post.title)
  page.should have_content(@post.content)
end