# ![logo](https://user-images.githubusercontent.com/48725508/181269756-df1dfbbf-7cbf-48e9-9d6e-91c9b84635b3.png)


## Sites
### [Doomworld Thread](https://www.doomworld.com/forum/topic/135726)<br />[Realm 667 Submission](https://www.realm667.com/en/item-store-mainmenu-169-61042/powerups-a-artifacts-mainmenu-170-4162/2466-checkpoint-disk)
## **Overview**
When touched, the game will save and the player will respawn in that location when they die.<br />
Additionally, it resurrects all players in surival.<br />
It's a solution I've made for when an autosave unexpectedly buffers the game for a second. Now players could invoke the buffer by choice.<br />
It also solves the "Running To Evil" problem present in co-op. Players can get right back into the action with little to no delay with the spawnpoint moved.<br />
## **Features**
* Zandronum and GZDoom Compatible.
* Uses an actor for it's position tracking so that it could be placed on moving sectors without any clips.
* Still Saves in GZDoom Multiplayer.
* Collision-Safe. It's unable to telefrag existing Players.
* Sprite Bridge Safe. (If a map uses one...)
* Fail-Safe. Holding zoom cancels you out of it's effects if the destination is undesirable.
* Warp-Safe. Gives you respawn protection to protect against sudden hazards after warps.
* Mod-Safe. Designed to run with *anything*!
* Comes with an option menu.
* Mapper Friendly. You only need to place the Save Disk object on the map to use the system.
* Presets.
## **Presets**<br />
The checkpoint system was primarilly designed as a resource for mappers, but the people I've shown this to expressed of adding sometype of way to place this into pre-existing maps.<br /> So I made this.<br /> A mistake I've made when first releasing this was to place this in the "Gameplay Mods" category on zdoom forums.<br />
With presets, It is a gameplay mod, but it's not the main focus.
<br /> I really care about polishing this system more and more and making presets *surprisingly* is real draining for me.
<br /> Currently the only mapset supported is [AUGER;ZENITH](https://www.doomworld.com/forum/topic/123042-dbp37-augerzenith-the-cyberpunk-megawad/).
## Media

https://user-images.githubusercontent.com/48725508/186764879-d458b23c-8786-48c1-b425-784506d2252d.mp4

https://user-images.githubusercontent.com/48725508/186764901-af983d60-ab26-46fa-a544-ed3cc4122619.mp4

https://user-images.githubusercontent.com/48725508/186764933-498834f6-e346-41be-8060-f2a78ca80550.mp4


![image](https://user-images.githubusercontent.com/48725508/186786800-841658e8-3202-45f6-86a5-8ea1ec15ca10.png)

<img alt="GitHub" src="https://img.shields.io/github/license/Matacrat/Checkpoints">  <img alt="GitHub release (latest by date)" src="https://img.shields.io/github/downloads/Matacrat/Checkpoints/latest/total">

