from enum import Enum
class Wine(Enum):
    Blackdog = 1
    RoyalStag = 2
    JohnyWalker = 3
    Chivas = 4
    BlenderSpride = 5
    Sprite = 6
    ThumsUp = 7

def checkWine(value)->str:
    result: str = ""
    match(value):
        case Wine.Blackdog.value:
            result= "it is a wine"

        case Wine.RoyalStag.value:
            result = "it is a wine"

        case Wine.JohnyWalker.value:
            result = "it is a wine"

        case Wine.Chivas.value:
            result = "it is a wine"

        case Wine.BlenderSpride.value:
            result = "it is a wine"

        case Wine.Sprite.value:
            result = "it is not a wine"

        case Wine.ThumsUp.value:
            result = "it is not a wine"
    return result
n = int(input("Enter the value :"))
print(checkWine(n))