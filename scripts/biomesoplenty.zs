//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;

//Remove Biomes O Plenty blocks and items that are either duplicate or appear in the bad biomes (sacred springs, eucaplyptus etc) and so don't exist
var biomesOfPlentyToRemove = [<biomesoplenty:gem_ore:*>,
                              <biomesoplenty:gem_block:*>,
                              <biomesoplenty:gem:*>,
                              <biomesoplenty:biome_block>,
                              <biomesoplenty:bamboo_thatching>,
                              <biomesoplenty:earth>,
                              <biomesoplenty:crystal_shard>,
                              <biomesoplenty:biome_essence>,
                              <biomesoplenty:terrestrial_artifact>,
                              <biomesoplenty:biome_finder>,
                              <biomesoplenty:log_4:4>,
                              <biomesoplenty:leaves_6:8>,
                              <biomesoplenty:leaves_6:9>,
                              <biomesoplenty:leaves_0:8>,
                              <biomesoplenty:sapling_0>,
                              <biomesoplenty:leaves_0:9>,
                              <biomesoplenty:sapling_0:1>,
                              <biomesoplenty:leaves_2:11>,
                              <biomesoplenty:sapling_1:3>,
                              <biomesoplenty:log_0:4>,
                              <biomesoplenty:leaves_3:11>,
                              <biomesoplenty:planks_0>,
                              <biomesoplenty:sacred_oak_stairs>,
                              <biomesoplenty:wood_slab_0>,
                              <biomesoplenty:sacred_oak_fence>,
                              <biomesoplenty:sacred_oak_fence_gate>,
                              <biomesoplenty:sacred_oak_door>,
                              <biomesoplenty:sapling_1:7>,
                              <biomesoplenty:boat_sacred_oak>,
                              <biomesoplenty:log_0:5>,
                              <biomesoplenty:leaves_2:9>,
                              <biomesoplenty:leaves_2:10>,
                              <biomesoplenty:planks_0:1>,
                              <biomesoplenty:cherry_stairs>,
                              <biomesoplenty:wood_slab_0:1>,
                              <biomesoplenty:cherry_fence>,
                              <biomesoplenty:cherry_fence_gate>,
                              <biomesoplenty:cherry_door>,
                              <biomesoplenty:sapling_1:1>,
                              <biomesoplenty:sapling_1:2>,
                              <biomesoplenty:boat_cherry>,
                              <biomesoplenty:log_1:4>,
                              <biomesoplenty:leaves_1:11>,
                              <biomesoplenty:planks_0:4>,
                              <biomesoplenty:ethereal_stairs>,
                              <biomesoplenty:wood_slab_0:4>,
                              <biomesoplenty:ethereal_fence>,
                              <biomesoplenty:ethereal_fence_gate>,
                              <biomesoplenty:ethereal_door>,
                              <biomesoplenty:sapling_0:7>,
                              <biomesoplenty:boat_ethereal>,
                              <biomesoplenty:log_1:5>,
                              <biomesoplenty:leaves_0:11>,
                              <biomesoplenty:planks_0:5>,
                              <biomesoplenty:magic_stairs>,
                              <biomesoplenty:wood_slab_0:5>,
                              <biomesoplenty:magic_fence>,
                              <biomesoplenty:magic_fence_gate>,
                              <biomesoplenty:magic_door>,
                              <biomesoplenty:sapling_0:3>,
                              <biomesoplenty:boat_magic>,
                              <biomesoplenty:log_3:7>,
                              <biomesoplenty:leaves_5:11>,
                              <biomesoplenty:planks_0:15>,
                              <biomesoplenty:eucalyptus_stairs>,
                              <biomesoplenty:wood_slab_1:7>,
                              <biomesoplenty:eucalyptus_fence>,
                              <biomesoplenty:eucalyptus_fence_gate>,
                              <biomesoplenty:eucalyptus_door>,
                              <biomesoplenty:sapling_2:7>,
                              <biomesoplenty:boat_eucalyptus>,
                              <biomesoplenty:log_2:4>,
                              <biomesoplenty:leaves_4:10>,
                              <biomesoplenty:planks_0:8>,
                              <biomesoplenty:redwood_stairs>,
                              <biomesoplenty:wood_slab_1>,
                              <biomesoplenty:redwood_fence>,
                              <biomesoplenty:redwood_fence_gate>,
                              <biomesoplenty:redwood_door>,
                              <biomesoplenty:sapling_2:2>,
                              <biomesoplenty:boat_redwood>
                       ] as IItemStack[];
for item in biomesOfPlentyToRemove{
    removeAndHide(item);
    }

    
//Add in some compat recipes and remove wierd recipes
recipes.removeByRecipeName("biomesoplenty:coal_from_ash");
recipes.addShapeless(<aquaculture:food>, [<biomesoplenty:seaweed>]);
