User.delete_all
Driver.delete_all
place1 = ["Santa Barbara, CA, United States", "Los Angelos, CA, United States","San Diego, CA, United States","San Francisco, CA, United States"]
place2 = ["Arizona, United States", "Utah, United States", "Illinois, United States","San Antonio, TX,  United States"]
username = "user"
user_nums = (1..300).to_a
password = "111111"
drivername = "driver"

for i in 1..300 do
	user  = User.create!(
	name: username+"#{i}",
        email: "email"+"#{i}"+"@example.com",
	password: password,
        password_confirmation: password
	)
	n = i%4
        driver = user.drivers.create!(
	departure: place1[n],
        destination: place2[n],
	price: 100,
	depart_time: "12:30",
	estimated_arrival_time: "20:30",
	description: "aaaaaa",
	car_type: "BMW",
	passenger_num: 5,
	contact_info: "1234567",
        left: 5
	)
end
