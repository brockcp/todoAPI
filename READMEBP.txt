-ACCESS-
> User.create(username:"brock",password_digest:"pass") //CREATE USER IN RAILS C
$ rails s   //start server(go to localhost:3000) and login w/ above credentials

-BUILDNOTES/FEATURES-
userstory 1 serialization(converting rails objects into json representations)
return json reps. of users. lists. items
 created three models - User, List, Item
   list belongs to user and has private attribute
   TEST: > puts JSON.pretty_generate(UserSerializer.new(User.first).as_json)  //VIA RAILS CONSOLE.
   TEST: > puts JSON.pretty_generate(ListSerializer.new(List.first).as_json)  //VIA RAILS CONSOLE.
   TEST: > puts JSON.pretty_generate(ItemSerializer.new(Item.first).as_json)  //VIA RAILS CONSOLE.

userstory 2 authenticate myself from command line using name and password
 created Users controller
   TEST: $ curl -u brock:pass http://localhost:3000/api/users/

userstory 3 create new users, lists and items
 created Lists and Items controller
   TEST: $ curl -u brock:pass -d "user[username]=Sammer" -d "user[password]=Smither" http://localhost:3000/api/users/  //NOT GETTING URL FOR INDIVIDUAL USER
   TEST: $ curl -u brock:pass -d "list[name]=Things to do today" -d "list[permissions]=private" http://localhost:3000/api/users/1/lists   //HAS URL
   TEST: $ curl -u brock:pass -d "item[description]=Dance if you want to" http://localhost:3000/api/lists/1/items


userstory 4 destroy lists
 added destroy method to users controller
  TEST: $ curl -u brock:pass -X DELETE http://localhost:3000/api/users/1/  //MAKE SURE END NUMBER OF URL MATCHES USER ID NUMBER)

userstory 5 update list and item attributes
 added update method to lists and items controllers
  TEST: $ curl -X PUT -u brock:pass -d "list[private]=true" http://localhost:3000/api/lists/1

-ISSUES-
-LOG-
