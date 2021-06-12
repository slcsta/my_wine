Notable Wines

Welcome to Notable Wines--a web application demo created with Sinatra and Active Record. 
Notable Wines is a place to keep track of all the wines you like and dislike. 

Usage

1. Fork and clone the repository.
2. Change directory (cd) into the Notable Wines directory.
3. In your terminal, run 'bundle install' to install all dependencies.
4. Run 'shotgun' to access your local development environment and host the app's files locally on your computer.
5. Open your favorite browser and enter the local url.
6. To use the app you will have to create an account and login.  

Features

As a wine connoisseur, it can be difficult to remember the wines you like and want to purchase
again versus wines you've tried but never want to buy again. 

Because taste is so subjective, it's best to remember how you felt about a particular wine
instead of solely relying on reviews. A wine with a good review may not be to your liking and vice versa. 

As you track the wines you've tasted, Notable Wines provides you with insight into your own preferences. 
You may find that you prefer wines from a specific region or AVA, meaning that the terroir or varietals 
(growing conditions and grape types such as Pinot Noir or Chardonnay) from a specific region suit your taste best. 

The app can also be used by people working in the wine industry who need to recommend wine to customers. The app
facilitates recs by tracking the user's opinion on a wine that they've tasted and tracked through the app.

Notable Wine users can see all of the wines added by other users. Reviews and evaluations of wines
tasted by other users are accessible to every user, which can aid a user in deciding to try a new wine.

A basic rating feature allows selection from a drop-down menu. A user can add tasting notes, to describe 
a wine's specific profile and include information about how a wine pairs with various foods, etc.

Each wine added allows a user to identify a wine by its "ingredients" or varietal(s)--the grapes used in 
making the wine. The region or AVA and vintage are included so the user can recognize the growing
conditions in that region in that particular year, which contribute greatly to a wine's profile.

<!-- <h1><%=@user.username%></h1>
<h4>Here is a List of Your Wines:</h4>
<h2>Producer Name: <%= @user.wine.producer_name %></h2>
<h2>Wine Name: <%= @user.wine.wine_name %></h2>
<h2>American Viticultural Area: <%= @user.wine.ava %></h2>
<h2>Vintage: <%= @user.wine.vintage %></h2>
<h2>Varietal: <%= @user.wine.varietal %></h2>

<% if @wine.user == current_user %>
<a href="/wines/<%= @wine.id %>/edit">EDIT</a>
<form method="POST" action="/wines/<%= @wine.id %>">
<input type="hidden" name="_method" value="DELETE">
<input type="submit" value="Delete Wine">
<% end %>
</form> -->

