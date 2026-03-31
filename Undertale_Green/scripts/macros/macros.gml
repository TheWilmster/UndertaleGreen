// Various enumerators used across the code

enum PlayerState {
    NORMAL   = 0,
    MENU     = 1,
    INTERACT = 2,
    CUTSCENE = 3
}
enum BattleTurn {
    NONE     = 0,
    ENEMY    = 1,
    PLAYER   = 2,
    GAMEOVER = 3
}
enum BattleBox {
    TEXT     = 0,
    ATTACK   = 1,
    METER    = 2
}
enum BattleMenu {
    MAIN     = 0,
    FIGHT    = 1,
    ITEMS    = 2,
    FLEE     = 3,
    HEAL     = 4
}
enum TextBubbleStyle {
    NORMAL   = 0
}
enum ShopMenu {
    MAIN     = 0,
    BUY      = 1,
    TALK     = 2,
    EXIT     = 3
}
