// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
/*
*
*		Andy's Cops and Robbers - a SA:MP server
*		Copyright (C) 2016  G. Andy K. Sedeyn
*
*		This program is free software: you can redistribute it and/or modify
*		it under the terms of the GNU Affero General Public License as published
*		by the Free Software Foundation, either version 3 of the License, or
*		(at your option) any later version.
*
*		This program is distributed in the hope that it will be useful,
*		but WITHOUT ANY WARRANTY; without even the implied warranty of
*		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*		GNU Affero General Public License for more details.
*
*		You should have received a copy of the GNU Affero General Public License
*		along with this program.  If not, see <http://www.gnu.org/licenses/>.
*
*		The full copy of the used license can be found in the "LICENSE.txt" file 
*		found in the project's root folder.
*/
// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/*
*
*		Player modules: global_player_functions.pwn
*
*/

Player_GetIP(playerid) {

	return Player[playerid][epd_IP];
}

Player_GetName(playerid) {

	return Player[playerid][epd_Username];
}

Player_LoggedIn(playerid) {

	return Player[playerid][epd_LoggedIn];
}

Player_Kick(playerid, delay = 200) {

	defer Player_ActualKick[delay](playerid);
	return true;
}

timer Player_ActualKick[200](playerid) {

	Kick(playerid);
	return true;
}
