/*
Returns the list of customplates in the external member list.
Author: Meerkat 08/10/2020

*/

private _customplates = [];

//Load customplates from the classes
private _memberClasses = "true" configClasses (configFile >> "AntistasiServerMembers" >> "MembersClasses");
{_customplates pushBackUnique (getText (_x >> "customplate"))} forEach _memberClasses;

// Return
_customplates
