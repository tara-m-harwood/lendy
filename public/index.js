const baseURL = 'https://lendy-tracker.herokuapp.com/users/login/Zillah'
// const baseURL = 'http://localhost:3000/users/login/Phil'

const $userContainer = document.querySelector( '#user-contain' )
const $itemContainer = document.querySelector( '#item-contain' )
const $lendContainer = document.querySelector( '#lend-contain' )

fetch(baseURL)
    .then(response => response.json())
    .then(user => {
        console.log(user)
        const $userName = document.createElement('h1')
        $userName.textContent = user.username
        $userContainer.append($userName)

        console.log(user.items)
        user.items.forEach(item => {
            const $itemName = document.createElement('p')
            $itemName.textContent = item.name 
            $itemContainer.append($itemName)
        })

        console.log(user.lends)
        user.lends.forEach(lend => {
            $lendSummary = document.createElement('h4')
            $lendSummary.textContent = `You lent your ${lend.item.name} to ${lend.borrower.name} on ${lend.start_date}`
            
            $lendStatus = document.createElement('h4')
            if (lend.complete) {
                $lendStatus = `It was returned on ${lend.end_date}`
            } else {
                $lendStatus = `It is due back on ${lend.end_date}`
            }
            $lendContainer.append($lendSummary,$lendStatus)
        })
    })