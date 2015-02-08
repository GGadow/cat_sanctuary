# Clear all old data

Adoption.delete_all
Cat.delete_all
Person.delete_all

#Add Person data

Person.create(fname: "Gregory", lname: "Gadow", address: "123 Any Street", city: "Seattle", state: "WA", postal_code: "98122")
Person.create(fname: "Mel", lname: "Quark", address: "456 W. Main Street", city: "Seattle", state: "WA", postal_code: "98123")
Person.create(fname: "Alvin", lname: "Aardvark", address: "1212 Elm Ave. N.", city: "Seattle", state: "WA", postal_code: "98126")
Person.create(fname: "Betty", lname: "Burrows", address: "321 Oak Drive", city: "Seattle", state: "WA", postal_code: "98121")

#Add Cat data

Cat.create(name: "Fluffy", breed: "Calico", age: "1", arrival_date: "2015/01/28")
Cat.create(name: "Tux", breed: "Tuxedo", age: "6", arrival_date: "2015/01/31")
Cat.create(name: "Felix", breed: "Calico", age: "4", arrival_date: "2015/02/04")

#Add Adoption data

Adoption.create(cat_id: 1, person_id: 1, adoption_date: "2015/02/06")




