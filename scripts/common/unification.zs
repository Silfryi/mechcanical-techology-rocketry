//Import
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;
import mods.mekanism.combiner;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.AlloySmelter;
import mods.mekanism.chemical.oxidizer;
import mods.mekanism.chemical.crystallizer;
import mods.mekanism.purification;
import mods.mekanism.chemical.injection;
import mods.mekanism.chemical.dissolution;
import mods.mekanism.chemical.washer;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.BottlingMachine;



/*
    Corrective machine recipes - this is the bit where machine recipes are changed to the new items
*/


//Remove and hide Mekanism & AE2 ingots/blocks/ores with Immersive Engineering alternates
//This section does a LOT of stuff
//It makes machines into what they should be for ore processing (crusher outputs ore dusts, high-tier unrealistic Mekanism ore processing is removed)
//It also adds or changes most processing that isn't directly tied to something else (arc furnace, etc)
//It's generally an all-purpose section dedicated to making the pack cohesive
//Remove Mekanism ores

//Replace said items with alternates in recipes
//Iron
Crusher.removeRecipesForInput(<minecraft:iron_ore>);
Crusher.addRecipe(<mekanism:dirtydust:0> * 2, <ore:oreIron>, 4000, <mekores:mekanismore:13>, 0.1);
furnace.remove(<ore:ingotIron>, <mekanism:dust>);
furnace.remove(<ore:ingotIron>, <libvulpes:productdust:1>);
furnace.addRecipe(<minecraft:iron_nugget>, <simpleoresamples:sampleblockiron>);
furnace.addRecipe(<minecraft:iron_ingot>, <ore:dustDirtyIron>);
combiner.removeRecipe(<ore:oreIron>, <mekanism:dust>);
combiner.removeRecipe(<ore:oreIron>, <libvulpes:productdust:1>);
recipes.remove(<libvulpes:productrod:1>);
MetalPress.addRecipe(<libvulpes:productsheet:1>, <ore:plateIron>, <immersiveengineering:mold>, 3600);

//Gold
Crusher.removeRecipesForInput(<minecraft:gold_ore>);
Crusher.addRecipe(<mekanism:dirtydust:1> * 2, <ore:oreGold>, 4000, <mekanism:dirtydust:3>, 0.05);
furnace.remove(<ore:ingotGold>, <ore:oreGold>);
furnace.remove(<ore:ingotGold>, <mekanism:dust:1>);
furnace.remove(<ore:ingotGold>, <libvulpes:productdust:2>);
furnace.remove(<ore:ingotGold>, <engineerstools:gold_grit>);
furnace.addRecipe(<minecraft:gold_nugget>, <simpleoresamples:sampleblockgold>);
furnace.addRecipe(<minecraft:gold_nugget> * 6, <ore:oreGold>);
furnace.addRecipe(<minecraft:gold_nugget> * 6, <ore:dustDirtyGold>);
furnace.addRecipe(<minecraft:gold_nugget> * 6, <ore:oreNetherGold>);
combiner.removeRecipe(<ore:oreGold>, <mekanism:dust:1>);

//Copper
Crusher.removeRecipesForInput(<immersiveengineering:ore:0>);
Crusher.addRecipe(<mekanism:dirtydust:3> * 2, <ore:oreCopper>, 4000, <mekanism:dirtydust:1>, 0.1);
furnace.remove(<mekanism:ingot:5>);
furnace.remove(<libvulpes:productingot:4>);
furnace.remove(<forestry:ingot_copper>);
furnace.addRecipe(<immersiveengineering:metal:0>, <ore:dustDirtyCopper>);
furnace.addRecipe(<immersiveengineering:metal:20>, <simpleoresamples:sampleblockcopper>);
combiner.removeRecipe(<forestry:resources:1>, <mekanism:dust:3>);
combiner.removeRecipe(<forestry:resources:1>, <libvulpes:productdust:4>);
combiner.removeRecipe(<forestry:resources:1>, <immersiveengineering:metal:9>);
combiner.addRecipe(<immersiveengineering:metal:9> * 8, <minecraft:cobblestone>, <immersiveengineering:ore>);
recipes.remove(<mekanism:basicblock:12>);
recipes.remove(<libvulpes:metal0:4>);
recipes.remove(<mekanism:nugget:5>);
recipes.remove(<libvulpes:productnugget:4>);
recipes.remove(<libvulpes:productrod:4>);
recipes.remove(<mekanism:ingot:5>);
recipes.remove(<libvulpes:productingot:4>);
MetalPress.removeRecipe(<libvulpes:productrod:4>);
MetalPress.removeRecipe(<forestry:gear_copper>);
MetalPress.addRecipe(<immersiveposts:metal_rods:1> * 2, <ore:ingotCopper>, <immersiveengineering:mold:2>, 3600);
MetalPress.addRecipe(<libvulpes:productsheet:4>, <ore:plateCopper>, <immersiveengineering:mold>, 3600);

//Silver
Crusher.removeRecipesForInput(<immersiveengineering:ore:3>);
Crusher.addRecipe(<mekanism:dirtydust:5> * 2, <ore:oreSilver>, 4000, <mekanism:dirtydust:6>, 0.1);
furnace.remove(<ore:ingotSilver>, <mekanism:dust:5>);
furnace.remove(<ore:ingotSilver>, <ore:oreSilver>);
furnace.addRecipe(<immersiveengineering:metal:23> * 6, <ore:oreSilver>);
furnace.addRecipe(<immersiveengineering:metal:23> * 6, <ore:dustDirtySilver>);
furnace.addRecipe(<immersiveengineering:metal:23>, <simpleoresamples:sampleblocksilver>);
combiner.removeRecipe(<ore:oreSilver>, <mekanism:dust:5>);

//Lead
Crusher.removeRecipesForInput(<immersiveengineering:ore:2>);
Crusher.addRecipe(<mekanism:dirtydust:6> * 2, <ore:oreLead>, 4000, <mekanism:dirtydust:5>, 0.15);
furnace.remove(<ore:ingotLead>, <mekanism:dust:6>);
furnace.addRecipe(<immersiveengineering:metal:22>, <simpleoresamples:sampleblocklead>);
furnace.addRecipe(<immersiveengineering:metal:2>, <ore:dustDirtyLead>);
combiner.removeRecipe(<ore:oreLead>, <mekanism:dust:6>);
MetalPress.addRecipe(<contenttweaker:material_part:102>, <ore:plateLead>, <immersiveengineering:mold:0>, 3600);

//Tin
Crusher.removeRecipesForInput(<libvulpes:productingot:5>);
Crusher.removeRecipesForInput(<libvulpes:ore0:5>);
Crusher.addRecipe(<libvulpes:productdust:5>, <ore:ingotTin>, 1600);
Crusher.addRecipe(<mekanism:dirtydust:4> * 2, <ore:oreTin>, 4000, <mekanism:dirtydust>, 0.15);
furnace.remove(<mekanism:ingot:6>);
furnace.remove(<forestry:ingot_tin>);
furnace.addRecipe(<libvulpes:productingot:5>, <ore:dustDirtyTin>);
furnace.addRecipe(<libvulpes:productnugget:5>, <simpleoresamples:sampleblocktin>);
combiner.removeRecipe(<forestry:resources:2>, <libvulpes:productdust:5>);
combiner.removeRecipe(<forestry:resources:2>, <mekanism:dust:4>);
recipes.remove(<mekanism:ingot:6>);
recipes.remove(<mekanism:basicblock:13>);
recipes.remove(<mekanism:nugget:6>);
recipes.addShapeless(<libvulpes:productplate:5>, [<immersiveengineering:tool:0>, <ore:ingotTin>]);
MetalPress.removeRecipe(<forestry:gear_tin>);
MetalPress.addRecipe(<contenttweaker:tin_solder> * 4, <ore:ingotTin>, <immersiveengineering:mold:4>, 3600);

//Osmium
Crusher.removeRecipesForInput(<mekanism:oreblock:0>);
Crusher.addRecipe(<mekanism:dirtydust:2> * 2, <ore:oreOsmium>, 4000, <mekores:mekanismore:18>, 0.05);

//Nickel
Crusher.removeRecipesForInput(<immersiveengineering:ore:4>);
Crusher.addRecipe(<mekores:mekanismore:13> * 2, <ore:oreNickel>, 4000, <mekores:mekanismore:18>, 0.01);
furnace.addRecipe(<immersiveengineering:metal:4>, <mekores:mekanismore:13>);
furnace.addRecipe(<immersiveengineering:metal:24>, <simpleoresamples:sampleblocknickel>);

//Bronze
AlloySmelter.removeRecipe(<forestry:ingot_bronze>);
AlloySmelter.addRecipe(<mekanism:ingot:2> * 4, <ore:ingotEquivalentCopper> * 3, <ore:ingotEquivalentTin>, 200);
MetalPress.removeRecipe(<forestry:gear_bronze>);

//Electrum
AlloySmelter.removeRecipe(<immersiveengineering:metal:6>);
AlloySmelter.addRecipe(<immersiveengineering:metal:6> * 2, <ore:ingotEquivalentCopper>, <ore:ingotEquivalentNickel>, 200);

//Constantan
AlloySmelter.removeRecipe(<immersiveengineering:metal:7>);
AlloySmelter.addRecipe(<immersiveengineering:metal:7> * 2, <ore:ingotEquivalentGold>, <ore:ingotEquivalentSilver>, 200);

//Uranium
Crusher.removeRecipesForInput(<immersiveengineering:ore:5>);
Crusher.addRecipe(<mekores:mekanismore:3> * 2, <ore:oreUranium>, 4000, <mekanism:dirtydust:6>, 0.1);
furnace.remove(<immersiveengineering:metal:5>, <ore:oreUranium>);

//Aluminium
Crusher.removeRecipesForInput(<immersiveengineering:ore:1>);
Crusher.addRecipe(<mekores:mekanismore:33> * 2, <ore:oreBauxite>, 4000, <contenttweaker:material_part:111>, 0.025);
combiner.removeRecipe(<libvulpes:ore0:9>, <libvulpes:productdust:9>);
furnace.remove(<ore:ingotAluminum>, <ore:oreBauxite>);
furnace.remove(<libvulpes:productingot:9>);
recipes.remove(<libvulpes:metal0:9>);
recipes.remove(<libvulpes:productnugget:9>);
recipes.remove(<libvulpes:productrod:9>);
recipes.remove(<libvulpes:productingot:9>);
MetalPress.addRecipe(<libvulpes:productsheet:9>, <ore:plateAluminum>, <immersiveengineering:mold>, 3600);

//Titanium
Crusher.removeRecipesForInput(<libvulpes:ore0:8>);
Crusher.addRecipe(<mekores:mekanismore:88> * 2, <ore:oreIlmenite>, 4000, <contenttweaker:material_part:108>, 0.1);
furnace.remove(<ore:ingotTitanium>);
recipes.removeByRecipeName("advancedrocketry:sticktitanium");
MetalPress.addRecipe(<libvulpes:productsheet:7>, <ore:plateTitanium>, <immersiveengineering:mold>, 3600);
MetalPress.removeRecipe(<libvulpes:productgear:7>);

//Iridium
Crusher.removeRecipesForInput(<libvulpes:ore0:10>);
Crusher.addRecipe(<mekores:mekanismore:23> * 2, <ore:oreIridium>, 4000, <mekores:mekanismore:18>, 0.05);
furnace.remove(<ore:ingotIridium>);
recipes.removeByRecipeName("advancedrocketry:stickiridium");

//Tungsten
Crusher.addRecipe(<mekores:mekanismore:108> * 2, <ore:oreTungsten>, 4000, <mekanism:dirtydust>, 0.15);

//Steel
Crusher.removeRecipesForInput(<contenttweaker:material_part:5>);
Crusher.addRecipe(<immersiveengineering:metal:17>, <immersiveengineering:metal:8>, 1600);
furnace.remove(<mekanism:ingot:4>);
furnace.remove(<libvulpes:productingot:6>);
recipes.remove(<mekanism:basicblock:5>);
recipes.remove(<libvulpes:metal0:6>);
recipes.remove(<mekanism:nugget:4>);
recipes.remove(<libvulpes:productnugget:6>);
recipes.remove(<libvulpes:productrod:6>);
recipes.remove(<mekanism:ingot:4>);
recipes.remove(<libvulpes:productingot:6>);
recipes.replaceAllOccurences(<ore:ingotSteel>, <immersiveengineering:metal:8>, <ore:stickSteel>);
recipes.replaceAllOccurences(<ore:ingotSteel>, <immersiveengineering:metal:8>, <ore:plateSteel>);
recipes.replaceAllOccurences(<ore:plateSteel>, <immersiveengineering:metal:38>, <immersiveengineering:material:9>);
recipes.replaceAllOccurences(<ore:plateSteel>, <immersiveengineering:metal:38>, <immersiveengineering:material:23>);
recipes.remove(<libvulpes:productgear:6>);
recipes.addShaped(<libvulpes:productgear:6>,
 [[<immersiveengineering:material:2>, <immersiveengineering:metal:38>, <immersiveengineering:material:2>],
 [null, <immersiveengineering:metal:8>, null],
 [<immersiveengineering:material:2>, <immersiveengineering:metal:38>, <immersiveengineering:material:2>]]);
MetalPress.removeRecipe(<immersiveengineering:metal:38>);
MetalPress.removeRecipe(<immersiveengineering:material:23>);
MetalPress.removeRecipe(<libvulpes:productgear:6>);
MetalPress.addRecipe(<immersiveengineering:metal:38>, <immersiveengineering:metal:8>, <immersiveengineering:mold>, 3600);
MetalPress.addRecipe(<libvulpes:productsheet:6>, <immersiveengineering:metal:38>, <immersiveengineering:mold>, 3600);
MetalPress.addRecipe(<immersiveengineering:material:23> * 2, <immersiveengineering:metal:8>, <immersiveengineering:mold:4>, 3600);

//High Carbon Steel
MetalPress.addRecipe(<contenttweaker:material_part:84>, <ore:plateHighCarbonSteel>, <immersiveengineering:mold:0>, 3600);

//Maraging Steel
MetalPress.addRecipe(<contenttweaker:material_part:89>, <ore:plateMaragingSteel>, <immersiveengineering:mold:0>, 3600);

//Titanium Aluminide and Titanium Iridium
furnace.remove(<ore:ingotTitaniumAluminide>);
furnace.remove(<ore:ingotTitaniumIridium>);
recipes.removeByRecipeName("advancedrocketry:sticktitaniumaluminide");
recipes.removeByRecipeName("advancedrocketry:sticktitaniumiridium");
MetalPress.removeRecipe(<advancedrocketry:productgear:0>);
MetalPress.removeRecipe(<advancedrocketry:productgear:1>);

//Platinum Group Metal
furnace.addRecipe(<contenttweaker:platinum_group_metal_ingot>, <ore:dustMixedPlatinumGroupMetal>);
recipes.addShapeless(<contenttweaker:platinum_group_metal_ingot>, [<ore:nuggetMixedPlatinumGroupMetal>, <ore:nuggetMixedPlatinumGroupMetal>, <ore:nuggetMixedPlatinumGroupMetal>, <ore:nuggetMixedPlatinumGroupMetal>, <ore:nuggetMixedPlatinumGroupMetal>, <ore:nuggetMixedPlatinumGroupMetal>, <ore:nuggetMixedPlatinumGroupMetal>, <ore:nuggetMixedPlatinumGroupMetal>, <ore:nuggetMixedPlatinumGroupMetal>]);
recipes.addShapeless(<contenttweaker:platinum_group_metal_nugget> * 9, [<ore:ingotMixedPlatinumGroupMetal>]);
recipes.addShapeless(<contenttweaker:platinum_group_metal_plate>, [<immersiveengineering:tool:0>, <ore:ingotMixedPlatinumGroupMetal>]);
recipes.addShapeless(<contenttweaker:platinum_group_metal_wire>, [<immersiveengineering:tool:1>, <ore:plateMixedPlatinumGroupMetal>]);
MetalPress.addRecipe(<contenttweaker:platinum_group_metal_plate>, <ore:ingotMixedPlatinumGroupMetal>, <immersiveengineering:mold:0>, 3600);
MetalPress.addRecipe(<contenttweaker:platinum_group_metal_sheet>, <ore:plateMixedPlatinumGroupMetal>, <immersiveengineering:mold:0>, 3600);
MetalPress.addRecipe(<contenttweaker:platinum_group_metal_wire> * 2, <ore:ingotMixedPlatinumGroupMetal>, <immersiveengineering:mold:4>, 3600);

//Platinum
Crusher.removeRecipesForInput(<contenttweaker:platinum_ore>);
Crusher.addRecipe(<mekores:mekanismore:18> * 2, <ore:orePlatinum>, 4000, <mekores:mekanismore:13>, 0.1);
MetalPress.addRecipe(<contenttweaker:material_part:124>, <ore:platePlatinum>, <immersiveengineering:mold:0>, 3600);

//Niobium
Crusher.addRecipe(<contenttweaker:pyrochlore_ore_dust> * 2, <ore:oreNiobium>, 4000, <mekores:mekanismore:78>, 0.1);

//Zirconium
Crusher.addRecipe(<contenttweaker:zircon_ore_dust> * 2, <ore:oreZirconium>, 4000, <contenttweaker:rutile_dust>, 0.05);

//Misc. dusts
oxidizer.removeRecipe(<gas:sulfurdioxide> * 100, <mekanism:otherdust:3>);
recipes.replaceAllOccurences(<mekanism:salt>, <immersivetech:material>, <mekanism:saltblock>);
oxidizer.removeRecipe(<gas:brine> * 15, <immersivetech:material>);
oxidizer.removeRecipe(<gas:brine> * 15, <mekanism:salt>);
Crusher.removeRecipe(<libvulpes:productdust:3>);
furnace.remove(<libvulpes:productingot:3>);
recipes.remove(<libvulpes:productingot:3>);
MetalPress.removeRecipe(<libvulpes:productplate:3>);

//Misc. Gems
combiner.removeRecipe(<minecraft:emerald_ore>);
combiner.addRecipe(<ore:gemEmerald> * 5, <minecraft:cobblestone>, <minecraft:emerald_ore>);
combiner.removeRecipe(<minecraft:diamond_ore>);
combiner.addRecipe(<ore:gemDiamond> * 5, <minecraft:cobblestone>, <minecraft:diamond_ore>);
combiner.removeRecipe(<minecraft:coal_ore>);
combiner.addRecipe(<ore:coal> * 12, <minecraft:cobblestone>, <minecraft:coal_ore>);
Crusher.removeRecipe(<forestry:apatite>);
combiner.removeRecipe(<forestry:resources:0>, <forestry:apatite>);
furnace.remove(<forestry:apatite>);
Crusher.addRecipe(<contenttweaker:material_part:120>, <ore:gemFluorite>, 2400);

//Dilithium
furnace.addRecipe(<libvulpes:productdust:0>, <mekores:mekanismore:128>);
Crusher.removeRecipesForInput(<libvulpes:ore0:0>);
Crusher.removeRecipe(<libvulpes:productgem>);
Crusher.addRecipe(<libvulpes:productdust:0> * 2, <ore:oreDilithium>, 6000);


//Dyes
removeAndHide(<futuremc:dye:*>);
removeAndHide(<quark:root_dye:*>);
recipes.addShapeless(<biomesoplenty:black_dye>, [<quark:root_flower:1>]);
recipes.addShapeless(<biomesoplenty:black_dye>, [<futuremc:wither_rose>]);
recipes.addShapeless(<biomesoplenty:black_dye>, [<minecraft:dye:0>]);
recipes.addShapeless(<biomesoplenty:white_dye>, [<quark:root_flower:2>]);
recipes.addShapeless(<biomesoplenty:white_dye>, [<futuremc:lily_of_the_valley>]);
recipes.addShapeless(<biomesoplenty:white_dye>, [<minecraft:dye:15>]);
recipes.addShapeless(<biomesoplenty:brown_dye>, [<minecraft:dye:3>]);
recipes.addShapeless(<biomesoplenty:blue_dye>, [<quark:root_flower:0>]);
recipes.addShapeless(<biomesoplenty:blue_dye>, [<futuremc:cornflower>]);
recipes.addShapeless(<biomesoplenty:blue_dye>, [<minecraft:dye:4>]);

//Unused BoP Gems
Crusher.removeRecipe(<biomesoplenty:gem:0>);
furnace.remove(<biomesoplenty:gem:0>);
Crusher.removeRecipe(<biomesoplenty:gem:1>);
furnace.remove(<biomesoplenty:gem:1>);
Crusher.removeRecipe(<biomesoplenty:gem:2>);
furnace.remove(<biomesoplenty:gem:2>);
Crusher.removeRecipe(<biomesoplenty:gem:3>);
furnace.remove(<biomesoplenty:gem:3>);
Crusher.removeRecipe(<biomesoplenty:gem:4>);
furnace.remove(<biomesoplenty:gem:4>);
Crusher.removeRecipe(<biomesoplenty:gem:5>);
furnace.remove(<biomesoplenty:gem:5>);
Crusher.removeRecipe(<biomesoplenty:gem:6>);
furnace.remove(<biomesoplenty:gem:6>);
Crusher.removeRecipe(<biomesoplenty:gem:7>);
furnace.remove(<biomesoplenty:gem:7>);

//BoP Gem Ores
combiner.removeRecipe(<biomesoplenty:gem_ore:0>);
combiner.removeRecipe(<biomesoplenty:gem_ore:1>);
combiner.removeRecipe(<biomesoplenty:gem_ore:2>);
combiner.removeRecipe(<biomesoplenty:gem_ore:3>);
combiner.removeRecipe(<biomesoplenty:gem_ore:4>);
combiner.removeRecipe(<biomesoplenty:gem_ore:5>);
combiner.removeRecipe(<biomesoplenty:gem_ore:6>);
combiner.removeRecipe(<biomesoplenty:gem_ore:7>);

//Stones
//Marble in the IE crusher
Crusher.addRecipe(<contenttweaker:crushed_marble>, <ore:stoneMarbleAny>, 2400);
//Limestone in the IE crusher
Crusher.addRecipe(<contenttweaker:crushed_limestone>, <ore:stoneLimestoneAny>, 2400);
//Dolomite in the IE crusher
Crusher.addRecipe(<contenttweaker:crushed_dolomite>, <ore:stoneDolomiteAny>, 2400);
