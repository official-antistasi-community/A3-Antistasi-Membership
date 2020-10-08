/*
Returns the list of UIDs in the external member list.
Author: Sparker 14.07.2018
Edited: Meerkat 08/10/2020
*/

private _memberUIDs = [];

// Load data from the classes
private _memberClasses = "true" configClasses (configFile >> "AntistasiServerMembers" >> "MembersClasses");
{_memberUIDs pushBackUnique (getText (_x >> "uid"))} forEach _memberClasses;

// Load data from the array
private _memberUIDsFromConfig = getArray (configFile >> "AntistasiServerMembers" >> "MembersArray" >> "uidArray");
{_memberUIDs pushBackUnique _x} forEach _memberUIDsFromConfig;

// Return
_memberUIDs
