#priority 950
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;


public function formatRecipeName(item as IItemStack) as string {
	return item.translationKey + "_" + item.amount;
}

public function addShaped(output as IItemStack, input as IIngredient[][], removeRecipe as bool) as void {
	var recipeName = formatRecipeName(output);

	if (removeRecipe) {
		craftingTable.removeRecipe(output);
	}

	craftingTable.addShaped(recipeName, output, input);
}

public function addShapedMirrored(output as IItemStack, input as IIngredient[][], removeRecipe as bool) as void {
	var recipeName = formatRecipeName(output);

	if (removeRecipe) {
		craftingTable.removeRecipe(output);
	}

	craftingTable.addShapedMirrored(recipeName, output, input);
}

public function addShapeless(output as IItemStack, input as IIngredient[], removeRecipe as bool) as void {
	var recipeName = formatRecipeName(output);

	if (removeRecipe) {
		craftingTable.removeRecipe(output);
	}

	craftingTable.addShapeless(recipeName, output, input);
}