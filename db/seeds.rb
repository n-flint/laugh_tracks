# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require_relative '../app/models/comedian.rb'
require_relative '../app/models/special.rb'

Comedian.create(name: "Bill Burr", age: 50, city: "Canton, MA", image_url: "https://image.masslive.com/home/mass-media/width960/img/entertainment/photo/nashville-comedy-festival-21d347107e975672.jpg")
Comedian.create(name: "Joe Rogan", age: 51, city: "Newark, NJ", image_url: "https://www.maxim.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_1400/MTQ4NDk2MjMzNzY0MjM0Nzc2/joe-rogan.webp")
Comedian.create(name: "Louis C.K.", age: 51, city: "Washington, D.C.", image_url: "https://media1.fdncms.com/pittsburgh/imager/u/blog/13239255/louis_ck_kuwait_crop_cropped.jpg?cb=1548183367")
Comedian.create(name: "Joey Diaz", age: 55, city: "Havana, Cuba", image_url: "https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/JoeyDiaz_800x600.jpg?quality=0.91&width=320&height=320&crop=true")
Comedian.create(name: "Chad Daniels", age: 43, city: "Fergus Falls, MN", image_url: "https://www.rumorscomedyclub.com/wp-content/uploads/2016/09/Chad-2019-bio.jpg")
Comedian.create(name: "Kevin Hart", age: 39, city: "Philadelphia, PA", image_url: "http://www.philly.com/resizer/bHw4bvIexfBozzYo6gSgV1vpEXk=/1400x932/center/middle/arc-anglerfish-arc2-prod-pmn.s3.amazonaws.com/public/DBTWGCGWV5C7ZJBACNCBPOCUWE.jpg")
Comedian.create(name: "Dave Chappelle", age: 45, city: "Washington, D.C.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTII3JGyHZiZx-tRsKYcDk8jotJ6kK6yGNiCof1mLfTw5DxekFZtg")
Comedian.create(name: "Chris Rock", age: 53, city: "Andrews, SC", image_url: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/02/14/14/chris-rock-netflix.jpg?w968")
Comedian.create(name: "Tom Segura", age: 39, city: "Cincinnati, OH", image_url: "https://pixel.nymag.com/imgs/daily/vulture/2018/07/12/splitsider/879409292.w700.h467.2x.jpg")
Comedian.create(name: "Ari Shaffir", age: 44, city: "New York City, NY", image_url: "https://i2.wp.com/www.foodrepublic.com/wp-content/uploads/2016/02/Ari-Shaffir-TINH-1.jpg?resize=1400%2C2100")
Comedian.create(name: "Theo Von", age: 38, city: "Mandeville, LA", image_url: "https://uproxx.files.wordpress.com/2016/02/theo-von-no-offense-feature.jpg?quality=95")
Comedian.create(name: "Jerry Seinfeld", age: 64, city: "Brooklyn, NY", image_url: "https://www.gannett-cdn.com/-mm-/aec403ad632f33650ec1aa7926a673a5a6b987b8/c=420-0-2149-1300/local/-/media/2015/09/17/Westchester/Westchester/635780965457520146--ASBBrd-07-27-2012-PressMon-1-A002-2012-07-26-IMG-People-Seinfeld-7-1-4U1UD.jpg?width=534&height=401&fit=crop")

Special.create(title: "Walk Your Way Out", runtime: 77, comedian_id: 1, thumbnail: "https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_.jpg")
Special.create(title: "I'm Sorry You Feel That Way", runtime: 80, comedian_id: 1, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_SY1000_SX675_AL_.jpg")
Special.create(title: "You People Are All The Same", runtime: 69, comedian_id: 1, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjAyZTI1NjMtNjQ3OC00MDhhLTkxMDgtMDVmMThhNjE5M2NkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")

Special.create(title: "Strange Times", runtime: 63, comedian_id: 2, thumbnail: "https://m.media-amazon.com/images/M/MV5BNzc2Mzg5YmMtMzM1NC00NDgwLTljYWQtZDdkNzBmNjZkNmJhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")
Special.create(title: "Triggered", runtime: 63, comedian_id: 2, thumbnail: "https://m.media-amazon.com/images/M/MV5BYTE0M2FkNGMtYjYxNi00MDRkLWE0YWUtNWI4NWU3NWIzMWIzXkEyXkFqcGdeQXVyMzE5NzI0NjE@._V1_.jpg")
Special.create(title: "Rocky Mountain High", runtime: 63, comedian_id: 2, thumbnail: "https://m.media-amazon.com/images/M/MV5BNjI4OGY5MTktZjNiNC00MTgyLTlhZGMtMzBhYzcyZTI5YTljXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_SY1000_SX750_AL_.jpg")

Special.create(title: "Oh My God", runtime: 58, comedian_id: 3, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjQ4NjQwOTYzNl5BMl5BanBnXkFtZTcwNjU2NjczOQ@@._V1_.jpg")
Special.create(title: "Live At The Beacon Theater", runtime: 63, comedian_id: 3, thumbnail: "https://m.media-amazon.com/images/M/MV5BNzIxMTUxMjYzMV5BMl5BanBnXkFtZTcwMDYwMjE0Nw@@._V1_.jpg")
Special.create(title: "Hilarious", runtime: 88, comedian_id: 3, thumbnail: "https://m.media-amazon.com/images/M/MV5BNTQyODYyNzcxN15BMl5BanBnXkFtZTgwOTA3MzcwMzE@._V1_.jpg")

Special.create(title: "Sociably Unacceptable", runtime: 57, comedian_id: 4, thumbnail: "https://m.media-amazon.com/images/M/MV5BZTAxNTViYmUtYWU0OC00YTNhLTg3YTYtMTkwMjgzOTFkZGFmL2ltYWdlXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_SY1000_CR0,0,666,1000_AL_.jpg")

Special.create(title: "As Is", runtime: 52, comedian_id: 5, thumbnail: "https://m.media-amazon.com/images/M/MV5BODY2OWIxYzMtYjEwOS00ZjRiLWI3ZGEtMWFmYTQxOTFiY2E1L2ltYWdlXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg")

Special.create(title: "I'm A Grown Little Man", runtime: 73, comedian_id: 6, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjI4MTYwNTUzMF5BMl5BanBnXkFtZTcwODk1Mjk3Mw@@._V1_.jpg")
Special.create(title: "Let Me Explain", runtime: 75, comedian_id: 6, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTg4MjM2MjAxOF5BMl5BanBnXkFtZTcwMTAzOTEyOQ@@._V1_SY1000_CR0,0,673,1000_AL_.jpg")
Special.create(title: "What Now?", runtime: 96, comedian_id: 6, thumbnail: "https://m.media-amazon.com/images/M/MV5BNzI2MDk3OTA5N15BMl5BanBnXkFtZTgwMDU1MDgxMDI@._V1_SY1000_CR0,0,674,1000_AL_.jpg")

Special.create(title: "Equaniminity", runtime: 60, comedian_id: 7, thumbnail: "https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")
Special.create(title: "Killin' Them Softly", runtime: 57, comedian_id: 7, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTcyOGMxN2MtYzUwYy00YzQxLTgwZTItZjAxZTIzYWM1YzEyXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_.jpg")

Special.create(title: "Kill The Messanger", runtime: 79, comedian_id: 8, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjAwMjQxNDA5OF5BMl5BanBnXkFtZTcwNTE3MzM5MQ@@._V1_.jpg")
Special.create(title: "Bigger & Blacker", runtime: 65, comedian_id: 8, thumbnail: "https://m.media-amazon.com/images/M/MV5BODQzOWExYjktZDQ2OC00YTA5LWI3YzctMDFjNjc3ZTM5NTA0XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")
Special.create(title: "Never Scared", runtime: 80, comedian_id: 8, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTlhYzMzNzItNWMyYy00ZGRlLWI1N2UtOGI2YjIwOGEwYTViXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_SY1000_CR0,0,666,1000_AL_.jpg")

Special.create(title: "Mostly Stories", runtime: 73, comedian_id: 9, thumbnail: "https://m.media-amazon.com/images/M/MV5BZWE2Nzc5N2YtOWM0OS00ZWVmLThhOTctNjNlNGI0NTQzMTU5XkEyXkFqcGdeQXVyMzAzODY0NzE@._V1_.jpg")
Special.create(title: "Completely Normal", runtime: 74, comedian_id: 9, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTcyODE0Mzk1Nl5BMl5BanBnXkFtZTgwMDk4ODE0NDE@._V1_.jpg")

Special.create(title: "Paid Regular", runtime: 73, comedian_id: 10, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjBlMGE4ZWUtZmExOC00NzcxLWFkMjMtNDYwMzczOGQ0NzRlXkEyXkFqcGdeQXVyNTMxMjgxMzA@._V1_.jpg")
Special.create(title: "Passive Aggressive", runtime: 60, comedian_id: 10, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTYzNDUyMjE4M15BMl5BanBnXkFtZTcwMTQ3NzQxOQ@@._V1_SY1000_CR0,0,647,1000_AL_.jpg")

Special.create(title: "No Offense", runtime: 66, comedian_id: 11, thumbnail: "https://m.media-amazon.com/images/M/MV5BODMyZjU2NWQtMTI2ZC00Y2ZkLTllYjItNjNiM2Y1NTIyMmIyXkEyXkFqcGdeQXVyNjYzMDA4MTI@._V1_.jpg")

Special.create(title: "Jerry Before Seinfeld", runtime: 62, comedian_id: 12, thumbnail: "https://m.media-amazon.com/images/M/MV5BOTc2N2I0Y2UtOTgyYy00MTU3LTk1YzItZGIwMDcxY2JkMGQzXkEyXkFqcGdeQXVyMjQzNzk2ODk@._V1_.jpg")
