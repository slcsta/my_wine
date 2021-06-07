
users = [
    {username: 'rsmith', email: 'rsmith@mail.com'}
    {username: 'bjones', email: 'bjones@mail.com'}
]

users.each do |u|
    User.create(u)
end

wines = [
    {producer_name: 'Gilbert Cellars', ava: 'Wahluke Slope', vintage: '2015', varietal: 'Chardonnay'}
    {producer_name: 'Red Car Wine Co.', ava: 'Fort Ross-Seaview', vintage: '2017', varietal: 'Pinot Noir'}
    {producer_name: 'Merry Edwards', ava: 'Russian River Valley', vintage: '2019', varietal: 'Sauvignon Blanc'}
]

wines.each do |w|
    Wine.create(w)
end

# create_table "users", force: :cascade do |t|
#     t.string "username"
#     t.string "email"
#     t.string "password"
#   end


# create_table "wines", force: :cascade do |t|
#     t.string "producer_name"
#     t.string "ava"
#     t.integer "vintage"
#     t.string "varietal"
#     t.integer "user_id"
#   end