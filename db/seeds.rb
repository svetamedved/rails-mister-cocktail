Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

Ingredient.create!(name: 'Lemon')
Cocktail.create!(name: 'Caipirinha')
Dose.create!(
  ingredient: Ingredient.first,
  cocktail: Cocktail.first,
  description: '10ml juice '
)
