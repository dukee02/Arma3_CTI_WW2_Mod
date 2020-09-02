player createDiarySubject ["Sari's WF","Sari's WF"];

player createDiaryRecord["Sari's WF", ["Contact us", "
To join our growing community, find our steam group - search for 'vio-community V_I_O_C' https://steamcommunity.com/groups/vio-community <br/><br/>
To report a bug or request a feature in the mission, use our Discord: https://discord.gg/KsGGBvJ<br/>
"]];

player createDiaryRecord ["Sari's WF",["Rules","
1. No scripting, hacking or exploiting of the mission file.<br/>
2. No racism / homophobia / sexism / etc. <br/>
3. No intentional teamkilling. This includes revenge teamkilling. <br/>
4. No stealing team vehicles. If you didnt buy it, it's not yours to take. <br/>
5. No giving information to enemy teams, unless agreed by both teams. <br/>
6. No shooting in base, unless shooting at an enemy. <br/>
7. Balance the teams on joining. We allow for a 2 person imbalance before we start kicking stackers. <br/> 
8. Base walls: It is allowed to place walls around a base building. <br/>
- It is not allowed to place walls in overlapping fashion. Exceptions to this are cases that can be proven to be placement errors and small overlaps to conceal the base structure to direct lines of fire. <br/>
- If you build walls around a base structure it must allow for access to the building on foot. <br/>
- It is not allowed to build walls adjacent to each other to create a double wall. <br/>
- It is not allowed to place walls/buildings to block other units/players. <br/>
9. Covering base structures: You may place roofs over base structures. <br/>
- It is not allowed to place roofs that overlap each other. The exception to this is for cases that can be proven to be placement errors. <br/><br/>

Breaking the rules will result in a kick. Repeated breaking of the rules will result in a 48 hour ban, followed by a permanent ban. Any offense followed by a disconnect will result in a 2 day ban or more. Admins reserve the right to instantly perma-ban at their discretion.<br/><br/>

If in doubt, ask an admin!"]];

player createDiaryRecord ["Sari's WF",["Changelog","
Changes made to the 'BECTI IFA3 Sahrani BTB CUP' mission: <br/><br/>

[V2.0beta] Changelog:<br/>
Fixed: invisible weapons - deleting all gear which was deleted by IFA3.<br/>
Added: Combined nation now automaticly have combined town and AI-Squad units.<br/>
Added: Functionality to support new and older IFA3 Version.<br/>
Added: Support for some FOW units (no standalone funktionality atm).<br/>
Added: Support for some CSA38 units (no standalone funktionality atm).<br/>
Added: You can now place mines like defenses, but costs 5 times more.<br/>
Added: AFAR - Radio addon by Phronk.<br/>
Changed: Town and AI param now fixed the selectet nation to them (disables the combination).<br/><br/>

[V1.9] Changelog:<br/>
Fixed: invisible vehicles (IFA3 deleted sdkfz222 + 234).<br/><br/>

[V1.8] Changelog:<br/>
Fixed: Wrong flag on camps at start.<br/>
Fixed: placing bridges on rivers (repairtruck).<br/>
Changed: complete rework of the weather skript.<br/>
Changed: updated fasttime skript fom arma2 to arma3 methods.<br/>
Changed: complete rework of all tech-trees.<br/>
Changed: selectable nation for every side - no more multiple versions needed, one mission for each map! You can put nations together (e.g. US + UK).<br/>
Changed: Depot and Bunker markers, now better to see on the map.<br/>
Changed: For tracked and wheeled units buildingtimes for Allies lowered.<br/>
Changed: Produktion cost for PzVI raised a bit.<br/>
Added: UK as a full playable side.<br/>
Added: selection of the town occupation nation.<br/>
Added: selection of the AI-groupleader nation.<br/>
Added: selection of the main camo units uses.<br/>
Added: selection of the flag for each side. <br/>
Added: selecable max tech-level for gear, infantry, wheeled, tracked, naval and air units.<br/>
Added: price setup for weapons, equipment, infantry, wheeled, tracked, air and naval units.<br/>
Added: price multiplier for higher priced high tier units.<br/>
Added: special mark up for armed/special units.<br/>
Added: Townname to the town markers.<br/>
Added: Towns now can have static waepons and will man them with occupation spawn.<br/>

- Known Issue: AI don't take command if commander disconnects. <br/>
- Known Issue: AI teams occasionally respawn at the default respawn area. <br/><br/>
"]];

player createDiaryRecord ["Sari's WF",["About our changes","
As seasoned Arma 2 Warfare Benny Edition veterans, we loved the depth and gameplay that the CTI gamemode can offer. Whilst Benny has made a tremendous effort so far in Arma 3 with BECTI, the mission still lacks a lot of the features and depth we enjoyed in Arma 2. So we decided, with permission from Benny, to bring some of these features over and integrate them into BECTI. So far, most of our work has focused existing systems, making these systems more fleshed out and a little less frustrating. The main features over the stock 0.97 BECTI mission includes: <br/><br/>

Town Supply Value: The town value is now  based on a secondary 'supply' currency and will generate more and more of both supply and money for the longer that team hold the town. Friendly towns on the map will display 2 values. This first is the amount of supply per cycle that the town will generate for its team and the second is the maximum possible value it can generate per cycle. <br/><br/>
Town Depots: The central flagpole that marks the capture point of the town has been replaced with a bunker like depot. Once the town has been captured, this depot grants access to equipment, basic transport and AI purchase as well as the service menu depending on the parameters set. <br/><br/>
Town Camps: Around the edges of the town are smaller camps which can be captured individually from the main town depot. Once captured these camps can provide a respawn point within that town and grant access to equipment purchase, depending on the parameters set. Be careful though, as the town's AI can patrol to and recapture these camps. <br/><br/>
Town Defenses: In larger towns, static defenses now spawn and are manned by AI. However, you need to research 'Town Occupation' to at least level one before towns on you side with spawn thir defenses. <br/><br/>
Town Banners: Once you are in range of a town (ie, close enough to spawn the town AI), you now get a coloured banner at the top of your HUD showing you which side the town belongs to, as well as the progress of the towns capture. <br/><br/>
Town Capture rates: The time it takes to capture a town now depends on a number of things - town value, number of friendly units in the capture radius, the number of enemy units in the capture radius and the number of camps held. <br/><br/>
Town Templates: The number of towns that can be captured on the map can now be set through templates and the 'Towns: Amount' parameter. This allows for more intense close quarter/PVP fights to be had. If you know some basic scripting then these templates can be easily modified.<br/><br/><br/>

Commander Voting: The top slot in player lobby is no longer the commander by default. A commander can be selected by pressing the 'voting' button in the command menu. Once a vote has started, a menu will pop up and everyone picks who they want to be commander. Once the time is up, the player with the most votes will be selected as commander. <br/><br/>
Commander Funding: The commanders funds are kept completely separate to any player pot. once a player is voted commander, this player then has access to the commanders funds. If the player is voted out, then they will get their previous funds back. <br/><br/>
Commander (AI): Whilst there haven't been any tweaks to the Ai commander cycle itself, the AI commander is now compatible with this new system. If disabled in the parameters, voting for the AI commander will result in nothing happening until a player is voted in. <br/><br/>
Commander: The current commander is now displayed in the info box of the options menu. <br/>
"]];