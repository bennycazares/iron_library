if Book.count == 0

  book = Book.new
  book.title = "First: What It Takes to Win"
  book.photo_url = "http://ecx.images-amazon.com/images/I/51jAeKg9tvL._SX331_BO1,204,203,200_.jpg"
  book.price = 9.03
  book.author_id = 1
  book.save

  book = Book.new
  book.title = "Olympic Weightlifting: A Complete Guide for Athletes & Coaches"
  book.photo_url = "http://ecx.images-amazon.com/images/I/51aK7NCwr0L._SX385_BO1,204,203,200_.jpg"
  book.price = 40.25
  book.author_id = 2
  book.save

  book = Book.new
  book.title = "Deskbound: Standing Up to a Sitting World"
  book.photo_url = "http://ecx.images-amazon.com/images/I/51kCH2YDGNL._SX398_BO1,204,203,200_.jpg"
  book.price = 21.12
  book.author_id = 3
  book.save

  book = Book.new
  book.title = "Becoming a Supple Leopard 2nd Edition: The Ultimate Guide to Resolving Pain, Preventing Injury, and Optimizing Athletic Performance"
  book.photo_url = "http://ecx.images-amazon.com/images/I/51j6OH4qYhL._SX389_BO1,204,203,200_.jpg"
  book.price = 36.39
  book.author_id = 4
  book.save

end

if Author.count == 0

  author = Author.new
  author.first_name = "Rich"
  author.last_name = "Froning Jr"
  author.bio = """
  Reigning CrossFit World Champion Rich Froning is “The Fittest Man on Earth.” He’s fast. He’s strong. And he’s incredibly disciplined.
  But it takes more than physical strength to compete and win at an elite level.
  It takes incredible mental and spiritual toughness as well. And it is the precise balance of all three that makes Rich Froning a champion.
  """
  author.save

  author = Author.new
  author.first_name = "Greg"
  author.last_name = "Everett"
  author.bio = """
  Since shortly after its original release in 2008, Olympic Weightlifting:
  A Complete Guide for Athletes & Coaches has been the most popular book
  on the sport of weightlifting in the world and has become the standard text
  for learning and teaching the snatch and clean & jerk.
  """
  author.save

  author = Author.new
  author.first_name = "Juliet"
  author.last_name = "Starrett"
  author.bio = """
  Sitting can wreak havoc on your health, and not just in the form of minor aches and pains. Recent studies show that too much sitting contributes to a host of diseases—from obesity and diabetes to cancer and depression.
  The typical seated office worker suffers from more musculoskeletal injuries than those workers who do daily manual labor.
  It turns out that sitting is as much an occupational risk as is lifting heavy weights on the job. The facts are in: sitting literally shortens your life. Your chair is your enemy, and it is murdering your body.
  """
  author.save

  author = Author.new
  author.first_name = "Kelly"
  author.last_name = "Starrett"
  author.bio = """
  Performance is what drives us as human beings, but dysfunctional movement patterns can bring the human body to an abrupt halt. Often, the factors that impede performance are invisible even to seasoned athletes and coaches.
  Becoming a Supple Leopard makes the invisible visible. Whether you are a professional athlete,
  a weekend warrior, or simply someone wanting to live healthy and free from physical restrictions,
  this one-of-a-kind training manual will teach you how to harness your athletic potential and maintain your body.
  """
  author.save

end
