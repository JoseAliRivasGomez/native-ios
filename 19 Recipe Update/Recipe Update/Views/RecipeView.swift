import SwiftUI

struct RecipeView: View {
    var recipeViewModel: RecipeViewModel = RecipeViewModel()
    
    var body: some View {
        NavigationStack {
            List(self.recipeViewModel.recipeModels) { item in
                NavigationLink(destination: {
                    ShowRecipeView(
                        theRecipe: item.recipe,
                        imageName: item.recipeImage,
                        recipeURL: item.recipeURL)
                }, label: {
                    ListItemView(
                        name: item.name,
                        caloriesPer100Grams: item.caloriesPer100Grams,
                        recipeImage: item.recipeImage)
                })
            }.navigationTitle("Recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView()
    }
}
