10.times do 
    User.create!(
      name: Faker::Name.name, 
      email: Faker::Internet.email, 
      password: "password", 
      points: rand(1..10)*10, 
    )
end

AssistanceRequest.create!([{
    delivery_address: "500 Kingston Rd, Toronto, ON M4L 1V3",
    volunteer_completed_task: true,
    requester_confirmed_completion: false,
    items: ["milk", "sugar", "eggs"],
    user_id: 1,
    volunteer_id: 4,
    complete_by: "2020-06-15",
    reimbursement_type: "cash" 
},
{
    delivery_address: "234 Willow Ave, Toronto, ON M4E 3K7",
    volunteer_completed_task: false,
    requester_confirmed_completion: false,
    user_id: 3,
    items: ["flour", "oranges", "sushi"],
    complete_by: "2020-06-21",
    reimbursement_type: "cash" 
},
{
    delivery_address: "48 St Clair Ave W, Toronto, ON M4V 2Z2",
    volunteer_completed_task: true,
    requester_confirmed_completion: true,
    user_id: 5,
    volunteer_id: 9,
    items: ["water bottles"],
    complete_by: "2020-06-18",
    reimbursement_type: "e-transfer" 
},
{
    delivery_address: "26 Goodwood Park Cres, East York, ON M4C 2G5",
    volunteer_completed_task: true,
    requester_confirmed_completion: true,
    user_id: 3,
    items: ["milk"],
    complete_by: "2020-06-12",
    reimbursement_type: "cash" 
    
},
{
    delivery_address: "1974 Queen St E, Toronto, ON M4L 1H8",
    volunteer_completed_task: true,
    requester_confirmed_completion: true,
    user_id: 3,
    volunteer_id: 8,
    items: ["strawberries", "blueberries"],
    complete_by: "2020-06-16",
    reimbursement_type: "cash" 
    
},
{
	delivery_address: "150 Dan Leckie Way, Toronto, ON M5V 0E3",
	volunteer_completed_task: true,
	requester_confirmed_completion: false,
	user_id: 2,
	volunteer_id: 3,
	items: ["apples", "2 oranges", "milk", "frozen pizza", "eggs", "limes"],
	complete_by: "2020-06-20",
	reimbursement_type: "cash"

},
{
	delivery_address: "25 John St., Toronto, ON M5V 3G6",
	volunteer_completed_task: false,
	requester_confirmed_completion: false,
	user_id: 4,
	volunteer_id: 5,
	items: ["apples", "7 oranges", "cilantro", "guacamole", "tomatoes"],
	complete_by: "2020-06-30",
	reimbursement_type: "cheque"

},
{
	delivery_address: "1 Yonge St., Toronto, ON M5E 1W7",
	volunteer_completed_task: false,
	requester_confirmed_completion: false,
	user_id: 7,
	items: ["apples", "cilantro", "guacamole", "tomatoes"],
	complete_by: "2020-06-20",
	reimbursement_type: "cheque"

},

{
	delivery_address: "300 Front St., Toronto, ON M5V 0E9",
	volunteer_completed_task: false,
	requester_confirmed_completion: false,
	user_id: 1,
	items: ["apples", "cilantro", "guacamole", "tomatoes"],
	complete_by: "2020-06-23",
	reimbursement_type: "cheque"
	
},
{
	delivery_address: "300 Front St., Toronto, ON M5V 0E9",
	volunteer_completed_task: true,
	requester_confirmed_completion: false,
	user_id: 9,
	volunteer_id: 3,
	items: ["apples", "cilantro", "guacamole", "tomatoes"],
	complete_by: "2020-06-10",
	reimbursement_type: "cheque"

},
{
  delivery_address: '8 Oliver Mews, Toronto, ON M4E 3E4',
  volunteer_completed_task: true,
  requester_confirmed_completion: false,
  user_id: 5,
  volunteer_id: 7,
  items: ["5 bananas", "3 apples", "5 oranges"],
  complete_by: "2020-07-21",
  reimbursement_type: "cash"
},

{
  delivery_address: "300 Silver Birch Ave, Toronto, ON M4E 3L5",
  volunteer_completed_task: false,
  requester_confirmed_completion: false,
  user_id: 5,
  volunteer_id: 4,
  items: ["8 mangos", "3 cherries", "chicken burgers"],
  complete_by: "2020-07-25",
  reimbursement_type: "cash"
},
{
  delivery_address: "300 Silver Birch Ave, Toronto, ON M4E 3L5",
  volunteer_completed_task: false,
  requester_confirmed_completion: true,
  user_id: 5,
  items: ["tylenol", "advil", "allegra"],
  complete_by: "2020-07-04",
  reimbursement_type: "cash"
},

{
  delivery_address: "717 Broadview Ave, Toronto, ON M4K 2P5",
  volunteer_completed_task: true,
  requester_confirmed_completion: true,
  user_id: 5,
  items: ["coldfx", "vicks vaporub", "shaving cream"],
  complete_by: "2020-06-25",
  reimbursement_type: "cash"
},

{
  delivery_address: "1210 Don Mills Rd, North York, ON M3B 3N9",
  volunteer_completed_task: false,
  requester_confirmed_completion: false,
  user_id: 5,
  items: ["bread", "eggs", "chutney"],
  complete_by: "2020-06-31",
  reimbursement_type: "cash"
}])


