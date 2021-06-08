
# use find_or_create_by to avoid duplication

User.find_or_create_by(username: "rsmith", email: "rsmith@mail.com")
User.find_or_create_by(username: "ajones", email: "ajones@mail.com")
User.find_or_create_by(username: "etorres", email: "etorres@mail.com")

Wine.find_or_create_by(producer_name: "Gilbert Cellars", wine_name: "Doc Stewart Chardonnay", ava: "Wahluke Slope", vintage: 2015, varietal: "Chardonnay")
Wine.find_or_create_by(producer_name: "Red Car Wine Co.", wine_name: "Estate Pinot Noir", ava: "Fort Ross-Seaview", vintage: 2017, varietal: "Pinot Noir")
Wine.find_or_create_by(producer_name: "Merry Edwards", wine_name: "Russian River Valley Sauvignon Blanc", ava: "Russian River Valley", vintage: 2019, varietal: "Sauvignon Blanc")