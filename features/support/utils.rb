def funcao
    array = ["até R$100","até R$70","até R$30"] 
    randomPrice = array.sample
    numero = randomPrice.to_s
    return numero
  end