
DATA = {
  :user_keys => [
    "username", "password", "first_name", "last_name", "nickname", "description", "img_url", "phone_number", "street", "city", "state", "zip_code"
  ],
  :users => [
    ["johndoe", "abc123", "john", "doe", "johnny", "I love green tea!", nil, "123-321-1234", "123 John Street", "Atlantis", "NY", "07611"],
    ["janedoe", "abc123", "jane", "doe", "janey", "I love black tea!", nil, "321-321-3214", "123 Jane Street", "Atlantis", "NY", "07611"]
  ],
  :community_keys => [
    "organizer_id", "name", "password", "description", "img_url"
  ],
  :communities => [
    [nil, "Doe Condominiums", nil, "The Doe community!", nil],
    [nil, "Atlantis High School PTA", nil, "Community for parents of atlantis high students", nil]
  ]
}

def main
  make_users
  make_communities
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

def make_communities
  DATA[:communities].each do |community|
    new_community = Community.new
    community.each_with_index do |attribute, i|
      new_community.send(DATA[:community_keys][i]+"=", attribute)
    end
    new_community.save
  end
end

main

Item.create(user_id: 1, name: "Hammer", description: "good condition ready for pick up!", availability: true)
Item.create(user_id: 1, name: "Graphing Calculator", description: "Ti-89+", availability: true)
Item.create(user_id: 2, name: "Math Textbook", description: "5th grade math textbook", availability: true)
Item.create(user_id: 2, name: "Power Tools", description: "Whole set ready to be used!", availability: true)
