﻿/*
 * Copyright (c) 2017 SEL
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU Lesser General Public License for more details.
 * 
 */
module selery.block.redstone;

import selery.about : block_t;
import selery.block.block;
import selery.block.solid;
import selery.item.item : Item;
import selery.item.items : Items;
import selery.math.vector;
import selery.player.player : Player;

static import sul.blocks;

class SwitchingBlock(bool restoneOnly=false) : MineableBlock {

	private block_t change;

	public this(sul.blocks.Block data, MiningTool miningTool, Drop drop, block_t change) {
		super(data, miningTool, drop);
		this.change = change;
	}

	static if(!restoneOnly) {
		public override bool onInteract(Player player, Item item, BlockPosition position, ubyte face) {
			player.world[position] = this.change;
			return true;
		}
	}
	
}
