puts "Cadastrando moedas..."

Coin.create!(
    description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://assets.chinatechnews.com/wp-content/uploads/bitcoin-logo.jpg"
)

Coin.create!(
    description: "Ethereum",
    acronym: "ETH",
    url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZCRfwkqpPvFb3QmmwGONG2i6PsgnqZ3L7dRzCNlaSTB1-ruu5"
)

Coin.create!(
    description: "Dash",
    acronym: "DASH",
    url_image: "https://ih1.redbubble.net/image.406055498.8711/ap,550x550,12x12,1,transparent,t.png"
)

puts "Moedas cadastradas com sucesso!"