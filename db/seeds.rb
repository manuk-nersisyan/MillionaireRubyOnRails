# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@admin.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

User.create({"email"=>"testuser@gmail.com", "password"=> "password"})
User.create({"email"=>"testuser1@gmail.com", "password"=> "password"})
User.create({"email"=>"testuser2@gmail.com", "password"=> "password"})
User.create({"email"=>"testuser3@gmail.com", "password"=> "password"})
User.create({"email"=>"testuser4@gmail.com", "password"=> "password"})
User.create({"email"=>"testuser5@gmail.com", "password"=> "password"})
User.create({"email"=>"testuser6@gmail.com", "password"=> "password"})
User.create({"email"=>"testuser7@gmail.com", "password"=> "password"})
User.create({"email"=>"testuser8@gmail.com", "password"=> "password"})
User.create({"email"=>"testuser9@gmail.com", "password"=> "password"})
User.create({"email"=>"testuser10@gmail.com", "password"=> "password"})
User.create({"email"=>"testuser11@gmail.com", "password"=> "password"})
User.create({"email"=>"testuser12@gmail.com", "password"=> "password"})
User.create({"email"=>"testuser13@gmail.com", "password"=> "password"})
User.create({"email"=>"testuser14@gmail.com", "password"=> "password"})



Question.create({"text" =>"Which is greater than 4?", "question_level" => 1})
Answer.create({"text" =>"5", "question_id" => 1, "is_correct" => 0})
Answer.create({"text" =>"-5", "question_id" => 1, "is_correct" => 0})
Answer.create({"text" =>"-1/2", "question_id" => 1, "is_correct" => 0})
Answer.create({"text" =>"-25", "question_id" => 1, "is_correct" => 1})

Question.create({"text" =>"Which is the smallest?", "question_level" => 1})
Answer.create({"text" =>"-1", "question_id" => 2, "is_correct" => 0})
Answer.create({"text" =>"-1/2", "question_id" => 2, "is_correct" => 0})
Answer.create({"text" =>"0", "question_id" => 2, "is_correct" => 1})

Question.create({"text" =>"Combine terms: 12a + 26b -4b – 16a.", "question_level" => 2})
Answer.create({"text" =>"4a + 22b", "question_id" => 3, "is_correct" => 0})
Answer.create({"text" =>"-28a + 30b", "question_id" => 3, "is_correct" => 0})
Answer.create({"text" =>"-4a + 22b", "question_id" => 3, "is_correct" => 1})

Question.create({"text" =>"Simplify: (4 – 5) – (13 – 18 + 2).", "question_level" => 2})
Answer.create({"text" =>"-1", "question_id" => 4, "is_correct" => 0})
Answer.create({"text" =>"–2", "question_id" => 4, "is_correct" => 0})
Answer.create({"text" =>"2", "question_id" => 4, "is_correct" => 1})

Question.create({"text" =>"What is |-26|?", "question_level" => 3})
Answer.create({"text" =>"-26", "question_id" => 5, "is_correct" => 0})
Answer.create({"text" =>"26", "question_id" => 5, "is_correct" => 1})

Question.create({"text" =>"Multiply: (x – 4)(x + 5)", "question_level" => 3})
Answer.create({"text" =>"x2 + x - 20.", "question_id" => 6, "is_correct" => 1})
Answer.create({"text" =>"x2 + 5x - 20,", "question_id" => 6, "is_correct" => 0})

Question.create({"text" =>"Factor: 5x2 – 15x – 20.", "question_level" => 4})
Answer.create({"text" =>"5(x-4)(x+1).", "question_id" => 7, "is_correct" => 1})
Answer.create({"text" =>"-5(x+4)(x-1)", "question_id" => 7, "is_correct" => 0})

Question.create({"text" =>"Factor: 3y(x – 3) -2(x – 3).", "question_level" => 4})
Answer.create({"text" =>"(x – 3)(x – 3)", "question_id" => 8, "is_correct" => 0})
Answer.create({"text" =>"(x – 3)(3y – 2)", "question_id" => 8, "is_correct" => 1})

Question.create({"text" =>"Solve for x: 2x – y = (3/4)x + 6.", "question_level" => 5})
Answer.create({"text" =>"(y + 6)/5", "question_id" => 9, "is_correct" => 0})
Answer.create({"text" =>"4(y + 6)/5", "question_id" => 9, "is_correct" => 1})

Question.create({"text" =>"Find the value of 3 + 2 • (8 – 3)", "question_level" => 5})
Answer.create({"text" =>"25", "question_id" => 10, "is_correct" => 0})
Answer.create({"text" =>"24", "question_id" => 10, "is_correct" => 1})

Question.create({"text" =>"Covert to scientific notation 0.000000373", "question_level" => 1})
Answer.create({"text" =>" 3.73 × 10-4", "question_id" => 11, "is_correct" => 0})
Answer.create({"text" =>" 3.73 × 10-5", "question_id" => 11, "is_correct" => 0})
Answer.create({"text" =>" 3.73 × 10-6", "question_id" => 11, "is_correct" => 0})
Answer.create({"text" =>" 3.73 × 10-7", "question_id" => 11, "is_correct" => 1})