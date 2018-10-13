
DATA = {
  :user_keys => [
    "username", "password", "first_name", "last_name", "nickname", "description", "img_url", "phone_number", "street", "city", "state", "zip_code"
  ],
  :users => [
    ["johndoe", "abc123", "john", "doe", "johnny", "I love green tea!", nil, "123-321-1234", "123 John Street", "Atlantis", "NY", "07611"],
    ["janedoe", "abc123", "jane", "doe", "janey", "I love black tea!", nil, "321-321-3214", "123 Jane Street", "Atlantis", "NY", "07611"]
  ],
  :neighborhood_keys => [
    "organizer_id", "name", "password", "description", "img_url"
  ],
  :neighborhoods => [
    [nil, "Doe Condominiums", nil, "The Doe neighborhood!", nil],
    [nil, "Atlantis High School PTA", nil, "neighborhood for parents of atlantis high students", nil]
  ]
}

def main
  make_users
  make_neighborhoods
end

def make_users
  DATA[:users].each do |user|
    new_user = User.new
    user.each_with_index do |attribute, i|
      new_user.send(DATA[:user_keys][i]+"=", attribute)
    end
    new_user.save
  end
end

def make_neighborhoods
  DATA[:neighborhoods].each do |neighborhood|
    new_neighborhood = Neighborhood.new
    neighborhood.each_with_index do |attribute, i|
      new_neighborhood.send(DATA[:neighborhood_keys][i]+"=", attribute)
    end
    new_neighborhood.save
  end
end

main

Item.create(user_id: 1, name: "Hammer", description: "good condition ready for pick up!", availability: true)
Item.create(user_id: 1, name: "Graphing Calculator", description: "Ti-89+", availability: true)
Item.create(user_id: 2, name: "Math Textbook", description: "5th grade math textbook", availability: true)
Item.create(user_id: 2, name: "Power Tools", description: "Whole set ready to be used!", availability: true)
