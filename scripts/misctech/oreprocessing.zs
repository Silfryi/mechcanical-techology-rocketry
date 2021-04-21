//Import
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Crusher;
import mods.immersivetechnology.ElectrolyticCrucibleBattery;
import mods.modularmachinery.RecipeBuilder.newBuilder;
import crafttweaker.oredict.IOreDictEntry;


//Dirty water reclamation
var dirty_water_reclamation = newBuilder("dirty_water_reclamation", "sluice", 1);
dirty_water_reclamation.addFluidInput(<liquid:dirtywater> * 24);
dirty_water_reclamation.addItemOutput(<ore:dustStone>.firstItem).setChance(0.12);
dirty_water_reclamation.addItemOutput(<earthworks:item_sand>).setChance(0.04);
dirty_water_reclamation.addItemOutput(<minecraft:clay_ball>).setChance(0.02);
dirty_water_reclamation.addFluidOutput(<liquid:water> * 20);
dirty_water_reclamation.build();

//Heated Air production
var heated_air = newBuilder("heated_air", "blast_preheater", 1);
heated_air.addMekanismHeatInput(0, 1500, (1.0/0));
heated_air.addFluidInput(<liquid:air> * 20);
heated_air.addFluidOutput(<liquid:heatedair> * 20);
heated_air.build();

//Molten slag to slag
var slag = newBuilder("slag", "casting_basin", 200);
slag.addFluidInput(<liquid:moltenslag> * 1200);
slag.addItemOutput(<immersiveengineering:material:7> * 12);
slag.build();

//Needed crusher recipes
Crusher.addRecipe(<ore:dustFluorite>.firstItem * 2, <ore:oreFluorite>.firstItem, 2400);
Crusher.addRecipe(<ore:dustCinnabar>.firstItem * 2, <ore:oreCinnabar>.firstItem, 2400);
Crusher.addRecipe(<ore:dustCinnabar>.firstItem * 2, <ore:oreNetherCinnabar>.firstItem, 2400);

//Aluminium Processing
var washed_bauxite_ore_dust = newBuilder("washed_bauxite_ore_dust", "sluice", 600);
washed_bauxite_ore_dust.addItemInput(<mekores:mekanismore:33> * 24);
washed_bauxite_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_bauxite_ore_dust.addItemOutput(<ore:dustWashedBauxite>.firstItem * 24);
washed_bauxite_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_bauxite_ore_dust.build();
furnace.addRecipe(<contenttweaker:calcined_red_mud>, <contenttweaker:red_mud_sludge>);
var red_mud_separation = newBuilder("red_mud_separation", "magnetic_separator", 1200);
red_mud_separation.addEnergyPerTickInput(3072);
red_mud_separation.addItemInput(<contenttweaker:calcined_red_mud> * 4);
red_mud_separation.addItemOutput(<contenttweaker:spent_red_mud> * 3);
red_mud_separation.addItemOutput(<immersiveengineering:metal:18> * 2).setChance(0.5);
red_mud_separation.addItemOutput(<immersiveengineering:metal:18> * 2).setChance(0.5);
red_mud_separation.addItemOutput(<immersiveengineering:metal:18> * 2).setChance(0.5);
red_mud_separation.addItemOutput(<immersiveengineering:metal:18>).setChance(0.2);
red_mud_separation.addItemOutput(<ore:dustRutile>.firstItem * 2).setChance(0.5);
red_mud_separation.addItemOutput(<ore:dustRutile>.firstItem * 2).setChance(0.5);
red_mud_separation.addItemOutput(<ore:dustRutile>.firstItem).setChance(0.4);
red_mud_separation.addItemOutput(<ore:dustGallium>.firstItem).setChance(0.5);
red_mud_separation.addItemOutput(<ore:dustGallium>.firstItem).setChance(0.25);
red_mud_separation.build();
furnace.addRecipe(<ore:dustAlumina>.firstItem, <ore:dustAluminiumHydroxide>.firstItem);
furnace.addRecipe(<ore:dustAlumina>.firstItem, <ore:dustWashedBauxite>.firstItem);
Mixer.addRecipe(<liquid:moltencryolitesolution> * 100, <liquid:moltencryolite> * 100, [<ore:dustAlumina>.firstItem], 4000);
ElectrolyticCrucibleBattery.addRecipe(<liquid:liquidoxygen> * 4800, <liquid:moltenaluminium> * 3200, <liquid:moltencryolite> * 3200, null, <liquid:moltencryolitesolution> * 3200, 16080000, 1600);
var cast_aluminium_ingot = newBuilder("cast_aluminium_ingot", "casting_basin", 400);
cast_aluminium_ingot.addFluidInput(<liquid:moltenaluminium> * 1600);
cast_aluminium_ingot.addItemInput(<ore:metalPressMoldIngot>.firstItem).setChance(0);
cast_aluminium_ingot.addItemOutput(<immersiveengineering:metal:1> * 16);
cast_aluminium_ingot.build();
var cast_aluminium_plate = newBuilder("cast_aluminium_plate", "casting_basin", 400);
cast_aluminium_plate.addFluidInput(<liquid:moltenaluminium> * 1600);
cast_aluminium_plate.addItemInput(<immersiveengineering:mold>).setChance(0);
cast_aluminium_plate.addItemOutput(<immersiveengineering:metal:31> * 16);
cast_aluminium_plate.build();
var cast_aluminium_rod = newBuilder("cast_aluminium_rod", "casting_basin", 200);
cast_aluminium_rod.addFluidInput(<liquid:moltenaluminium> * 800);
cast_aluminium_rod.addItemInput(<immersiveengineering:mold:2>).setChance(0);
cast_aluminium_rod.addItemOutput(<immersiveengineering:material:3> * 16);
cast_aluminium_rod.build();


//Uranium processing
var washed_uranium_ore_dust = newBuilder("washed_uranium_ore_dust", "sluice", 600);
washed_uranium_ore_dust.addItemInput(<mekores:mekanismore:3> * 24);
washed_uranium_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_uranium_ore_dust.addItemOutput(<ore:dustWashedUranium>.firstItem * 24);
washed_uranium_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_uranium_ore_dust.build();
Mixer.addRecipe(<liquid:uraniumsulfatesolution> * 100, <liquid:sulfuricacid> * 100, [<ore:dustWashedUranium>.firstItem], 4000);
var uranium_tailings = newBuilder("uranium_tailings", "sluice", 100);
uranium_tailings.addItemInput(<ore:dustStone>, 16);
uranium_tailings.addFluidInput(<liquid:uraniumtailingssolution> * 2400);
uranium_tailings.addItemOutput(<contenttweaker:uranium_tailings> * 8);
uranium_tailings.addFluidOutput(<liquid:sulfuricacid> * 2000);
uranium_tailings.build();
furnace.addRecipe(<ore:dustYellowcake>.firstItem, <ore:dustAmmoniumDiuranate>.firstItem);
var yellowcake_agglomerate = newBuilder("yellowcake_agglomerate", "sluice", 1200);
yellowcake_agglomerate.addItemInput(<ore:dustYellowcake>.firstItem * 24);
yellowcake_agglomerate.addFluidInput(<liquid:water> * 800);
yellowcake_agglomerate.addItemOutput(<ore:dustYellowcakeAgglomerate>.firstItem * 24);
yellowcake_agglomerate.build();
Crusher.addRecipe(<ore:dustFineYellowcake>.firstItem, <ore:dustYellowcakeAgglomerate>.firstItem, 2400);


//Iron Processing
var washed_iron_ore_dust = newBuilder("washed_iron_ore_dust", "sluice", 600);
washed_iron_ore_dust.addItemInput(<mekanism:dirtydust:0> * 24);
washed_iron_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_iron_ore_dust.addItemOutput(<ore:dustWashedIron>.firstItem * 24);
washed_iron_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_iron_ore_dust.build();
var crude_iron = newBuilder("crude_iron", "large_blast_furnace", 2400);
crude_iron.addFluidInput(<liquid:heatedair> * 144000);
crude_iron.addItemInput(<ore:dustWashedIron>.firstItem * 192);
crude_iron.addItemInput(<ore:dustAnyCarbon>, 192);
crude_iron.addItemInput(<ore:flux>, 64);
crude_iron.addFluidOutput(<liquid:moltencrudeiron> * 14400);
crude_iron.addFluidOutput(<liquid:moltencrudeiron> * 14400);
crude_iron.addFluidOutput(<liquid:moltenslag> * 7200);
crude_iron.addFluidOutput(<liquid:moltenslag> * 7200);
crude_iron.build();
var steel = newBuilder("steel", "oxygen_converter", 100);
steel.addFluidInput(<liquid:moltencrudeiron> * 1200);
steel.addFluidInput(<liquid:liquidoxygen> * 300);
steel.addFluidInput(<liquid:water> * 1200);
steel.addFluidOutput(<liquid:moltenslag> * 800);
steel.addFluidOutput(<liquid:moltensteel> * 1200);
steel.build();
var steel_magnesium = newBuilder("steel_magnesium", "oxygen_converter", 100);
steel_magnesium.addFluidInput(<liquid:moltencrudeiron> * 1200);
steel_magnesium.addFluidInput(<liquid:liquidoxygen> * 300);
steel_magnesium.addFluidInput(<liquid:water> * 1200);
steel_magnesium.addFluidInput(<liquid:moltenmagnesium> * 100);
steel_magnesium.addFluidOutput(<liquid:moltenslag> * 400);
steel_magnesium.addFluidOutput(<liquid:moltensteel> * 1600);
steel_magnesium.build();
var cast_iron_ingot = newBuilder("cast_iron_ingot", "casting_basin", 400);
cast_iron_ingot.addFluidInput(<liquid:moltencrudeiron> * 1200);
cast_iron_ingot.addItemInput(<ore:metalPressMoldIngot>.firstItem).setChance(0);
cast_iron_ingot.addItemOutput(<minecraft:iron_ingot> * 12);
cast_iron_ingot.build();
var cast_iron_plate = newBuilder("cast_iron_plate", "casting_basin", 400);
cast_iron_plate.addFluidInput(<liquid:moltencrudeiron> * 1200);
cast_iron_plate.addItemInput(<immersiveengineering:mold>).setChance(0);
cast_iron_plate.addItemOutput(<immersiveengineering:metal:39> * 12);
cast_iron_plate.build();
var cast_iron_rod = newBuilder("cast_iron_rod", "casting_basin", 200);
cast_iron_rod.addFluidInput(<liquid:moltencrudeiron> * 600);
cast_iron_rod.addItemInput(<immersiveengineering:mold:2>).setChance(0);
cast_iron_rod.addItemOutput(<immersiveengineering:material:1> * 12);
cast_iron_rod.build();
var steel_ingot = newBuilder("steel_ingot", "casting_basin", 400);
steel_ingot.addFluidInput(<liquid:moltensteel> * 1200);
steel_ingot.addItemInput(<ore:metalPressMoldIngot>.firstItem).setChance(0);
steel_ingot.addItemOutput(<immersiveengineering:metal:8> * 12);
steel_ingot.build();
var steel_plate = newBuilder("steel_plate", "casting_basin", 400);
steel_plate.addFluidInput(<liquid:moltensteel> * 1200);
steel_plate.addItemInput(<immersiveengineering:mold>).setChance(0);
steel_plate.addItemOutput(<immersiveengineering:metal:38> * 12);
steel_plate.build();
var steel_rod = newBuilder("steel_rod", "casting_basin", 200);
steel_rod.addFluidInput(<liquid:moltensteel> * 600);
steel_rod.addItemInput(<immersiveengineering:mold:2>).setChance(0);
steel_rod.addItemOutput(<immersiveengineering:material:2> * 12);
steel_rod.build();

//Tungsten processing
var washed_tungsten_ore_dust = newBuilder("washed_tungsten_ore_dust", "sluice", 600);
washed_tungsten_ore_dust.addItemInput(<mekores:mekanismore:108> * 24);
washed_tungsten_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_tungsten_ore_dust.addItemOutput(<ore:dustWashedTungsten>.firstItem * 24);
washed_tungsten_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_tungsten_ore_dust.build();
var hydrated_tungsten_trioxide = newBuilder("hydrated_tungsten_trioxide", "sluice", 1200);
hydrated_tungsten_trioxide.addItemInput(<ore:dustWashedTungsten>.firstItem * 24);
hydrated_tungsten_trioxide.addFluidInput(<liquid:liquidhydrogenchloride> * 7200);
hydrated_tungsten_trioxide.addItemOutput(<ore:dustHydratedTungstenTrioxide>.firstItem * 36);
hydrated_tungsten_trioxide.addItemOutput(<contenttweaker:material_part:114> * 36);
hydrated_tungsten_trioxide.build();
furnace.addRecipe(<ore:dustTungstenTrioxide>.firstItem, <ore:dustHydratedTungstenTrioxide>.firstItem);
var tungsten_dust = newBuilder("tungsten_dust", "oxygen_converter", 400);
tungsten_dust.addItemInput(<ore:dustTungstenTrioxide>.firstItem * 16);
tungsten_dust.addFluidInput(<liquid:liquidhydrogen> * 4800);
tungsten_dust.addFluidInput(<liquid:water> * 9600);
tungsten_dust.addItemOutput(<ore:dustCalciumChloride>.firstItem * 16);
tungsten_dust.build();

//Copper processing
var washed_copper_ore_dust = newBuilder("washed_copper_ore_dust", "sluice", 600);
washed_copper_ore_dust.addItemInput(<mekanism:dirtydust:3> * 24);
washed_copper_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_copper_ore_dust.addItemOutput(<ore:dustWashedCopper>.firstItem * 24);
washed_copper_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_copper_ore_dust.build();
Mixer.addRecipe(<liquid:coppersulfatesolution> * 150, <liquid:sulfuricacid> * 150, [<ore:dustWashedCopper>.firstItem], 4000);
ElectrolyticCrucibleBattery.addRecipe(<liquid:sulfuricacid> * 1200, null, <liquid:coppersulfatesolutionresidue> * 400, <immersiveengineering:metal:30> * 16, <liquid:coppersulfatesolution> * 1600, 1340000, 400);
var copper_anode_sludge = newBuilder("copper_anode_sludge", "sluice", 200);
copper_anode_sludge.addFluidInput(<liquid:coppersulfatesolutionresidue> * 400);
copper_anode_sludge.addItemOutput(<ore:sludgeCopperDerivedAnode>.firstItem * 1);
copper_anode_sludge.addFluidOutput(<liquid:sulfuricacid> * 400);
copper_anode_sludge.build();
var copper_derived_anode_slime = newBuilder("copper_derived_anode_slime", "magnetic_separator", 800);
copper_derived_anode_slime.addEnergyPerTickInput(3072);
copper_derived_anode_slime.addItemInput(<ore:sludgeCopperDerivedAnode>.firstItem * 8);
copper_derived_anode_slime.addItemOutput(<immersiveengineering:metal:12> * 2).setChance(0.5);
copper_derived_anode_slime.addItemOutput(<immersiveengineering:metal:12> * 2).setChance(0.5);
copper_derived_anode_slime.addItemOutput(<immersiveengineering:metal:12>).setChance(0.5);
copper_derived_anode_slime.addItemOutput(<immersiveengineering:metal:12>).setChance(0.4);
copper_derived_anode_slime.addItemOutput(<immersiveengineering:metal:12>).setChance(0.2);
copper_derived_anode_slime.addItemOutput(<immersiveengineering:metal:19> * 2).setChance(0.5);
copper_derived_anode_slime.addItemOutput(<immersiveengineering:metal:19> * 2).setChance(0.5);
copper_derived_anode_slime.addItemOutput(<immersiveengineering:metal:19> * 2).setChance(0.5);
copper_derived_anode_slime.addItemOutput(<ore:dustIndium>.firstItem).setChance(0.8);
copper_derived_anode_slime.addItemOutput(<ore:dustIndium>.firstItem).setChance(0.4);
copper_derived_anode_slime.build();

//Nickel Processing
var washed_nickel_ore_dust = newBuilder("washed_nickel_ore_dust", "sluice", 600);
washed_nickel_ore_dust.addItemInput(<mekores:mekanismore:13> * 24);
washed_nickel_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_nickel_ore_dust.addItemOutput(<ore:dustWashedNickel>.firstItem * 24);
washed_nickel_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_nickel_ore_dust.build();
var nickel_matte = newBuilder("nickel_matte", "oxygen_converter", 200);
nickel_matte.addMekanismHeatInput(0, 1350, (1.0/0));
nickel_matte.addItemInput(<ore:dustWashedNickel>.firstItem * 16);
nickel_matte.addFluidInput(<liquid:liquidoxygen> * 600);
nickel_matte.addFluidInput(<liquid:water> * 2400);
nickel_matte.addFluidOutput(<liquid:moltenslag> * 800);
nickel_matte.addFluidOutput(<liquid:moltennickelmatte> * 2400);
nickel_matte.build();
var nickel_matte_ingot = newBuilder("nickel_matte_ingot", "casting_basin", 400);
nickel_matte_ingot.addFluidInput(<liquid:moltennickelmatte> * 1600);
nickel_matte_ingot.addItemOutput(<ore:slagNickelMatte>.firstItem * 16);
nickel_matte_ingot.build();
Mixer.addRecipe(<liquid:nickelsulfatesolution> * 100, <liquid:sulfuricacid> * 100, [<ore:slagNickelMatte>.firstItem], 4000);
ElectrolyticCrucibleBattery.addRecipe(<liquid:sulfuricacid> * 1200, null, <liquid:nickelsulfatesolutionresidue> * 400, <immersiveengineering:metal:34> * 16, <liquid:nickelsulfatesolution> * 1600, 2010000, 400);
var nickel_anode_sludge = newBuilder("nickel_anode_sludge", "sluice", 200);
nickel_anode_sludge.addFluidInput(<liquid:nickelsulfatesolutionresidue> * 400);
nickel_anode_sludge.addItemOutput(<ore:sludgeNickelDerivedAnode>.firstItem * 2);
nickel_anode_sludge.addFluidOutput(<liquid:sulfuricacid> * 400);
nickel_anode_sludge.build();
var nickel_derived_anode_slime = newBuilder("nickel_derived_anode_slime", "magnetic_separator", 800);
nickel_derived_anode_slime.addEnergyPerTickInput(3072);
nickel_derived_anode_slime.addItemInput(<ore:sludgeNickelDerivedAnode>.firstItem * 8);
nickel_derived_anode_slime.addItemOutput(<immersiveengineering:metal:9> * 2).setChance(0.5);
nickel_derived_anode_slime.addItemOutput(<immersiveengineering:metal:9> * 2).setChance(0.5);
nickel_derived_anode_slime.addItemOutput(<immersiveengineering:metal:9>).setChance(0.75);
nickel_derived_anode_slime.addItemOutput(<immersiveengineering:metal:9>).setChance(0.6);
nickel_derived_anode_slime.addItemOutput(<immersiveengineering:metal:9>).setChance(0.4);
nickel_derived_anode_slime.addItemOutput(<immersiveengineering:metal:9>).setChance(0.25);
nickel_derived_anode_slime.addItemOutput(<ore:dustMixedPlatinumGroupMetal>.firstItem.withTag({display: {Lore: ["Platinum-Rich"]}}).withTag({metal: "platinum"})).setChance(0.6);
nickel_derived_anode_slime.addItemOutput(<ore:dustMixedPlatinumGroupMetal>.firstItem.withTag({display: {Lore: ["Platinum-Rich"]}}).withTag({metal: "platinum"})).setChance(0.5);
nickel_derived_anode_slime.addItemOutput(<ore:dustMixedPlatinumGroupMetal>.firstItem.withTag({display: {Lore: ["Platinum-Rich"]}}).withTag({metal: "platinum"})).setChance(0.5);
nickel_derived_anode_slime.addItemOutput(<ore:dustMixedPlatinumGroupMetal>.firstItem.withTag({display: {Lore: ["Platinum-Rich"]}}).withTag({metal: "platinum"})).setChance(0.4);
nickel_derived_anode_slime.build();

//Tin processing
var washed_tin_ore_dust = newBuilder("washed_tin_ore_dust", "sluice", 600);
washed_tin_ore_dust.addItemInput(<mekanism:dirtydust:4> * 24);
washed_tin_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_tin_ore_dust.addItemOutput(<ore:dustWashedTin>.firstItem * 24);
washed_tin_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_tin_ore_dust.build();
var impure_tin = newBuilder("impure_tin", "large_blast_furnace", 2400);
impure_tin.addFluidInput(<liquid:heatedair> * 96000);
impure_tin.addItemInput(<ore:dustWashedTin>.firstItem * 192);
impure_tin.addItemInput(<ore:dustAnyCarbon>, 192);
impure_tin.addItemInput(<ore:flux>, 48);
impure_tin.addFluidOutput(<liquid:impuremoltentin> * 14400);
impure_tin.addFluidOutput(<liquid:impuremoltentin> * 14400);
impure_tin.addFluidOutput(<liquid:moltenslag> * 4800);
impure_tin.addFluidOutput(<liquid:moltenslag> * 4800);
impure_tin.build();
var impure_tin_ingot = newBuilder("impure_tin_ingot", "casting_basin", 400);
impure_tin_ingot.addFluidInput(<liquid:impuremoltentin> * 1600);
impure_tin_ingot.addItemOutput(<ore:slagImpureTin>.firstItem * 16);
impure_tin_ingot.build();
Mixer.addRecipe(<liquid:tinsulfatesolution> * 100, <liquid:sulfuricacid> * 100, [<ore:slagImpureTin>.firstItem], 4000);
ElectrolyticCrucibleBattery.addRecipe(<liquid:sulfuricacid> * 1600, null, null, <libvulpes:productplate:5> * 16, <liquid:tinsulfatesolution> * 1600, 2010000, 400);

//Lead processing
var washed_lead_ore_dust = newBuilder("washed_lead_ore_dust", "sluice", 600);
washed_lead_ore_dust.addItemInput(<mekanism:dirtydust:6> * 24);
washed_lead_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_lead_ore_dust.addItemOutput(<ore:dustWashedLead>.firstItem * 24);
washed_lead_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_lead_ore_dust.build();
var molten_lead = newBuilder("molten_lead", "large_blast_furnace", 2400);
molten_lead.addFluidInput(<liquid:heatedair> * 96000);
molten_lead.addItemInput(<ore:slagLeadSinter>.firstItem * 192);
molten_lead.addItemInput(<ore:dustAnyCarbon>, 192);
molten_lead.addFluidOutput(<liquid:moltenlead> * 9600);
molten_lead.addFluidOutput(<liquid:moltenlead> * 9600);
molten_lead.addFluidOutput(<liquid:moltenslag> * 7200);
molten_lead.addFluidOutput(<liquid:moltenslag> * 7200);
molten_lead.build();
var lead_ingot = newBuilder("lead_ingot", "casting_basin", 400);
lead_ingot.addFluidInput(<liquid:moltenlead> * 1200);
lead_ingot.addItemInput(<ore:metalPressMoldIngot>.firstItem).setChance(0);
lead_ingot.addItemOutput(<immersiveengineering:metal:2> * 12);
lead_ingot.addFluidOutput(<liquid:moltensilver> * 200);
lead_ingot.build();
var lead_plate = newBuilder("lead_plate", "casting_basin", 400);
lead_plate.addFluidInput(<liquid:moltenlead> * 1200);
lead_plate.addItemInput(<immersiveengineering:mold>).setChance(0);
lead_plate.addItemOutput(<immersiveengineering:metal:32> * 12);
lead_plate.addFluidOutput(<liquid:moltensilver> * 200);
lead_plate.build();
var lead_rod = newBuilder("lead_rod", "casting_basin", 200);
lead_rod.addFluidInput(<liquid:moltenlead> * 600);
lead_rod.addItemInput(<immersiveengineering:mold:2>).setChance(0);
lead_rod.addItemOutput(<immersiveposts:metal_rods:2> * 12);
lead_rod.addFluidOutput(<liquid:moltensilver> * 100);
lead_rod.build();
var silver_ingot = newBuilder("silver_ingot", "casting_basin", 400);
silver_ingot.addFluidInput(<liquid:moltensilver> * 1200);
silver_ingot.addItemInput(<ore:metalPressMoldIngot>.firstItem).setChance(0);
silver_ingot.addItemOutput(<immersiveengineering:metal:3> * 12);
silver_ingot.build();
var silver_plate = newBuilder("silver_plate", "casting_basin", 400);
silver_plate.addFluidInput(<liquid:moltensilver> * 1200);
silver_plate.addItemInput(<immersiveengineering:mold>).setChance(0);
silver_plate.addItemOutput(<immersiveengineering:metal:33> * 12);
silver_plate.build();
var silver_rod = newBuilder("silver_rod", "casting_basin", 200);
silver_rod.addFluidInput(<liquid:moltensilver> * 600);
silver_rod.addItemInput(<immersiveengineering:mold:2>).setChance(0);
silver_rod.addItemOutput(<immersiveposts:metal_rods:3> * 12);
silver_rod.build();

//Titanium processing
var washed_ilmenite_ore_dust = newBuilder("washed_ilmenite_ore_dust", "sluice", 600);
washed_ilmenite_ore_dust.addItemInput(<mekores:mekanismore:88> * 24);
washed_ilmenite_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_ilmenite_ore_dust.addItemOutput(<ore:dustWashedIlmenite>.firstItem * 24);
washed_ilmenite_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_ilmenite_ore_dust.build();
var rutile_dust = newBuilder("rutile_dust", "large_blast_furnace", 7200);
rutile_dust.addFluidInput(<liquid:heatedair> * 192000);
rutile_dust.addItemInput(<ore:dustWashedIlmenite>.firstItem * 192);
rutile_dust.addItemInput(<ore:dustAnyCarbon>, 288);
rutile_dust.addFluidOutput(<liquid:moltencrudeiron> * 3200);
rutile_dust.addFluidOutput(<liquid:moltencrudeiron> * 3200);
rutile_dust.addFluidOutput(<liquid:moltenslag> * 2400);
rutile_dust.addFluidOutput(<liquid:moltenslag> * 2400);
rutile_dust.addItemOutput(<ore:dustRutile>.firstItem * 64);
rutile_dust.addItemOutput(<ore:dustRutile>.firstItem * 64);
rutile_dust.addItemOutput(<ore:dustRutile>.firstItem * 64);
rutile_dust.build();

//Platinum Processing
var platinum_group_metal_dust_pt = newBuilder("platinum_group_metal_dust_pt", "sluice", 75);
platinum_group_metal_dust_pt.addFluidInput(<liquid:water> * 1800);
platinum_group_metal_dust_pt.addItemInput(<mekores:mekanismore:18> * 6);
platinum_group_metal_dust_pt.addItemOutput(<ore:dustMixedPlatinumGroupMetal>.firstItem.withTag({display: {Lore: ["Platinum-Rich"]}}).withTag({metal: "platinum"}));
platinum_group_metal_dust_pt.addFluidOutput(<liquid:dirtywater> * 1800);
platinum_group_metal_dust_pt.build();
var platinum_group_metal_dust_ir = newBuilder("platinum_group_metal_dust_ir", "sluice", 75);
platinum_group_metal_dust_ir.addFluidInput(<liquid:water> * 1800);
platinum_group_metal_dust_ir.addItemInput(<mekores:mekanismore:23> * 6);
platinum_group_metal_dust_ir.addItemOutput(<ore:dustMixedPlatinumGroupMetal>.firstItem.withTag({display: {Lore: ["Iridium-Rich"]}}).withTag({metal: "iridium"}));
platinum_group_metal_dust_ir.addFluidOutput(<liquid:dirtywater> * 1800);
platinum_group_metal_dust_ir.build();
var platinum_group_metal_dust_os = newBuilder("platinum_group_metal_dust_os", "sluice", 75);
platinum_group_metal_dust_os.addFluidInput(<liquid:water> * 1800);
platinum_group_metal_dust_os.addItemInput(<mekanism:dirtydust:2> * 6);
platinum_group_metal_dust_os.addItemOutput(<ore:dustMixedPlatinumGroupMetal>.firstItem.withTag({display: {Lore: ["Osmium-Rich"]}}).withTag({metal: "osmium"}));
platinum_group_metal_dust_os.addFluidOutput(<liquid:dirtywater> * 1800);
platinum_group_metal_dust_os.build();
Mixer.addRecipe(<liquid:nitricacidhydrochloridept> * 100, <liquid:nitricacidhydrochloride> * 100, [<ore:dustMixedPlatinumGroupMetal>.firstItem.withTag({metal: "platinum"})], 4000);
Mixer.addRecipe(<liquid:nitricacidhydrochlorideir> * 100, <liquid:nitricacidhydrochloride> * 100, [<ore:dustMixedPlatinumGroupMetal>.firstItem.withTag({metal: "iridium"})], 4000);
Mixer.addRecipe(<liquid:nitricacidhydrochlorideos> * 100, <liquid:nitricacidhydrochloride> * 100, [<ore:dustMixedPlatinumGroupMetal>.firstItem.withTag({metal: "osmium"})], 4000);
furnace.addRecipe(<ore:ingotPlatinum>.firstItem, <ore:dustAmmoniumChloroplatinate>.firstItem);


//Gold Processing
var impure_gold_riffle = newBuilder("impure_gold_riffle", "sluice", 150);
impure_gold_riffle.addFluidInput(<liquid:water> * 1800);
impure_gold_riffle.addItemInput(<mekanism:dirtydust:1> * 6);
impure_gold_riffle.addItemOutput(<ore:dustWashedImpureGold>.firstItem * 6);
impure_gold_riffle.addFluidOutput(<liquid:dirtywater> * 1800);
impure_gold_riffle.build();
var gold_riffle = newBuilder("gold_riffle", "large_blast_furnace", 1200);
gold_riffle.addFluidInput(<liquid:heatedair> * 72000);
gold_riffle.addItemInput(<ore:dustWashedImpureGold>.firstItem * 256);
gold_riffle.addItemOutput(<ore:dustWashedGold>.firstItem * 64);
gold_riffle.addItemOutput(<ore:dustWashedGold>.firstItem * 64);
gold_riffle.addItemOutput(<ore:dustWashedGold>.firstItem * 64);
gold_riffle.addItemOutput(<ore:dustWashedGold>.firstItem * 64);
gold_riffle.build();
var mercury_gold_amalgam = newBuilder("mercury_gold_amalgam", "sluice", 300);
mercury_gold_amalgam.addFluidInput(<liquid:mercury> * 1600);
mercury_gold_amalgam.addItemInput(<ore:dustWashedGold>.firstItem * 6);
mercury_gold_amalgam.addItemOutput(<ore:amalgamMercuryGold>.firstItem * 6);
mercury_gold_amalgam.addItemOutput(<ore:dustStone>.firstItem);
mercury_gold_amalgam.addFluidOutput(<liquid:mercury> * 1000);
mercury_gold_amalgam.build();
furnace.addRecipe(<minecraft:gold_ingot>, <ore:amalgamMercuryGold>.firstItem);


//Silver processing
var impure_silver_riffle = newBuilder("impure_silver_riffle", "sluice", 150);
impure_silver_riffle.addFluidInput(<liquid:water> * 1800);
impure_silver_riffle.addItemInput(<mekanism:dirtydust:5> * 6);
impure_silver_riffle.addItemOutput(<ore:dustWashedImpureSilver>.firstItem * 6);
impure_silver_riffle.addFluidOutput(<liquid:dirtywater> * 1800);
impure_silver_riffle.build();
var silver_riffle = newBuilder("silver_riffle", "large_blast_furnace", 1200);
silver_riffle.addFluidInput(<liquid:heatedair> * 72000);
silver_riffle.addItemInput(<ore:dustWashedImpureSilver>.firstItem * 256);
silver_riffle.addItemOutput(<ore:dustWashedSilver>.firstItem * 64);
silver_riffle.addItemOutput(<ore:dustWashedSilver>.firstItem * 64);
silver_riffle.addItemOutput(<ore:dustWashedSilver>.firstItem * 64);
silver_riffle.addItemOutput(<ore:dustWashedSilver>.firstItem * 64);
silver_riffle.build();
var mercury_silver_amalgam = newBuilder("mercury_silver_amalgam", "sluice", 300);
mercury_silver_amalgam.addFluidInput(<liquid:mercury> * 1600);
mercury_silver_amalgam.addItemInput(<ore:dustWashedSilver>.firstItem * 6);
mercury_silver_amalgam.addItemOutput(<ore:amalgamMercurySilver>.firstItem * 6);
mercury_silver_amalgam.addItemOutput(<ore:dustStone>.firstItem);
mercury_silver_amalgam.addFluidOutput(<liquid:mercury> * 1000);
mercury_silver_amalgam.build();
furnace.addRecipe(<immersiveengineering:metal:3>, <ore:amalgamMercurySilver>.firstItem);


//Niobium processing
//Associated with zirconium - same vein for both
var washed_pyrochlore_ore_dust = newBuilder("washed_pyrochlore_ore_dust", "sluice", 600);
washed_pyrochlore_ore_dust.addItemInput(<ore:dustDirtyNiobium>.firstItem * 24);
washed_pyrochlore_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_pyrochlore_ore_dust.addItemOutput(<ore:dustWashedNiobium>.firstItem * 24);
washed_pyrochlore_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_pyrochlore_ore_dust.build();
var niobium_pentoxide = newBuilder("niobium_pentoxide", "oxygen_converter", 200);
niobium_pentoxide.addMekanismHeatInput(0, 2100, (1.0/0));
niobium_pentoxide.addItemInput(<ore:slagNiobiumFerroalloy>.firstItem * 16);
niobium_pentoxide.addFluidInput(<liquid:liquidoxygen> * 600);
niobium_pentoxide.addFluidInput(<liquid:water> * 2400);
niobium_pentoxide.addFluidOutput(<liquid:moltenslag> * 100);
niobium_pentoxide.addFluidOutput(<liquid:moltencrudeiron> * 300);
niobium_pentoxide.addItemOutput(<ore:dustNiobiumPentoxide>.firstItem * 12);
niobium_pentoxide.build();


//Zirconium processing
var washed_zircon_ore_dust = newBuilder("washed_zircon_ore_dust", "sluice", 600);
washed_zircon_ore_dust.addItemInput(<ore:dustDirtyZirconium>, 24);
washed_zircon_ore_dust.addFluidInput(<liquid:water> * 3200);
washed_zircon_ore_dust.addItemOutput(<ore:dustWashedZirconium>.firstItem * 24);
washed_zircon_ore_dust.addFluidOutput(<liquid:dirtywater> * 3200);
washed_zircon_ore_dust.build();
