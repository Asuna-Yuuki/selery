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
module selery.entity.interfaces;

interface Undead {}

interface Shooter {
	/// an entity that can shoot projectiles
}

interface PotionThrower {
	/// an entity that can throw potions
}

interface Collectable {
	/// an entity that can be picked up (arrows, dops, ...)
}

interface Collector {

	// returns true if the entity should despawn
	public @safe bool onCollect(Collectable collectable);

}

interface Arthropods {}
