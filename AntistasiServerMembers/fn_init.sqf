// Now it just types stuff into .rpt
diag_log "[ASMS] Info: AntistasiServerMembers: addon has been loaded";

// For compatibility reasons
AS_fnc_getExternalMemberListUIDs = ASMS_fnc_getExternalMemberListUIDs;
AS_fnc_getExternalMemberListPlates = ASMS_fnc_getExternalMemberListPlates;

// Add mission event handler
addMissionEventHandler ["PlayerConnected", ASMS_fnc_onPlayerConnected];
