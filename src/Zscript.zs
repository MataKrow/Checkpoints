version "4.7.1" // Change to "4.5" if LZDoom support is a must.
class sp_MultiplayerAutosave
{
    static clearscope void sp_ZscriptAutoSave()
    {
        LevelLocals.MakeAutoSave();
    }
}

