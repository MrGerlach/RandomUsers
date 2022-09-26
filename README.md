# RandomUsers
### Creating the social media app with random generated users from Random User Generator API; using JSON and XCTest

Aplication pulls users from the [Random User Generator API](https://randomuser.me)

In this repo you will find:

1. **randomUsers.json** with data used by XTCTests

2. **UserFetchingClient.swift** which gets data from Random User Generator API

3. **User.swift** responsible for decoding data

4. **UserData.swift** is our @MainActor and is waiting for data provided by UserFetchingClient's funcion getUsers

5. **UsersView.swift** is main View with first and second name of each generated user presented as a list
