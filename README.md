Notable Wines

Welcome to Notable Wines: a web application created with Sinatra and Active Record. 
Notable Wines is a place to keep track of all the wines you've tasted. 

Usage

1. Fork and clone the Notable Wines repository.
2. Change directory into Notable Wines.
3. In your terminal, run 'bundle install' to install all dependencies.
4. Run 'shotgun' to access your local development environment and host the app's files on your computer.
5. Open your favorite browser and enter the local url.
6. To use the app you will have to create an account and login.
7. When you are logged in, you can browse existing wines, add a new wine, and/or edit/delete any wine you've added.  

Features

Remembering the wines you like and want to purchase along with wines you've tried but never want to buy again
can prove challening. 

Because taste is subjective, it's better to remember how you felt about a particular wine
rather than relying only on wine reviews. You may not like a wine that gets good reviews or vice versa.

As you track the wines you've tasted, Notable Wines provides you with insight into your own taste preferences. 
You may find that you prefer wines from a specific region or AVA, meaning that the terroir or varietals 
(growing conditions and grape types such as Pinot Noir or Chardonnay) from a specific region suit your taste best. 

The app can also be used by people working in the food and wine industry who need to recommend wine to customers. The app
facilitates recs by tracking the profile of a wine along with the user's opinion of it.

Notable Wine users can see all wines added by other users. Reviews and evaluations of wines
are accessible to every user, which can help in deciding to try a new wine.

A basic rating feature allows selection from a drop-down menu. A user can add tasting notes, to describe 
a wine's specific profile and include information about how a wine pairs with various foods, etc.

Each wine added allows a user to identify a wine by its "ingredients" or varietal(s)--the grapes used in 
making the wine. The region or AVA and vintage are included so the user can recognize the growing
conditions in a region in a particular year.

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

