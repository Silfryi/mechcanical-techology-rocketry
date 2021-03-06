//Fusion reactor blueprints
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_hd"}),
 [[null, <ore:plateTungstensteel>, null],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_hhe3"}), [<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_hd"})]);
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_dd"}), [<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_hhe3"})]);
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_dt"}), [<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_dd"})]);
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_dhe3"}), [<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_dt"})]);
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_tt"}), [<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_dhe3"})]);
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_the3"}), [<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_tt"})]);
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_he3he3"}), [<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_the3"})]);
recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_hd"}), [<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fusion_reactor_extractor_he3he3"})]);

//Fusion plasma heaters
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:0>,
 [[<mekanism:configurator:*>, <ore:machineCasingSuperconductiveCoil>, null],
 [null, <modularmachinery:blockfluidinputhatch:2>, null],
 [null, null, null]]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:3>,
 [[<mekanism:configurator:*>, null, <ore:machineCasingSuperconductiveCoil>],
 [null, <modularmachinery:blockfluidinputhatch:2>, null],
 [null, null, null]]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:4>,
 [[<mekanism:configurator:*>, null, null],
 [null, <modularmachinery:blockfluidinputhatch:2>, <ore:machineCasingSuperconductiveCoil>],
 [null, null, null]]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:5>,
 [[<mekanism:configurator:*>, null, null],
 [null, <modularmachinery:blockfluidinputhatch:2>, null],
 [null, null, <ore:machineCasingSuperconductiveCoil>]]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:6>,
 [[<mekanism:configurator:*>, null, null],
 [null, <modularmachinery:blockfluidinputhatch:2>, null],
 [null, <ore:machineCasingSuperconductiveCoil>, null]]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:7>,
 [[<mekanism:configurator:*>, null, null],
 [null, <modularmachinery:blockfluidinputhatch:2>, null],
 [<ore:machineCasingSuperconductiveCoil>, null, null]]);
