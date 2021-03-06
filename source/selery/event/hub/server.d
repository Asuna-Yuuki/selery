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
module selery.event.hub.server;

import selery.event.event : Event;
import selery.hub.server : HubServer;

abstract class HubServerEvent : Event {
	
	private shared HubServer _server;
	
	public this(shared HubServer server) {
		this._server = server;
	}
	
	public final pure nothrow @property @safe @nogc shared(HubServer) server() {
		return this._server;
	}
	
}