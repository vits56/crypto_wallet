spinner = TTY::Spinner.new("[:spinner] Cadastrando moedas... ")
spinner.auto_spin
spinner.success("(Moedas cadastradas com sucesso!)")


coins = [
  {
    description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://assets.chinatechnews.com/wp-content/uploads/bitcoin-logo.jpg"
  },

  {
    description: "Ethereum",
    acronym: "ETH",
    url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZCRfwkqpPvFb3QmmwGONG2i6PsgnqZ3L7dRzCNlaSTB1-ruu5"
  },

  {
    description: "Dash",
    acronym: "DASH",
    url_image: "https://ih1.redbubble.net/image.406055498.8711/ap,550x550,12x12,1,transparent,t.png"
  }
]

coins.each do |coin|
  Coin.find_or_create_by!(coin)
end


spinner.success("(Moedas cadastradas com sucesso!)")