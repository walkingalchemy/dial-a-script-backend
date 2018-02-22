# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: "Sebastian")
Organization.create(name: "Flatiron School")
Office.create(title: "Headquarters", organization_id: 1)
Phone.create(digits: "8889580589", office_id: 1, status: true)
Script.create(body: "Call your representative now!", description:"This is a test script", title: "Test Script", user_id: 1)
PhoneScript.create(script_id: 1, phone_id:1)
Call.create(user_id: 1, script_id: 1, phone_id: 1, duration: 90, note: "Short call with Rish", outcome: true, who:"Rishi")
