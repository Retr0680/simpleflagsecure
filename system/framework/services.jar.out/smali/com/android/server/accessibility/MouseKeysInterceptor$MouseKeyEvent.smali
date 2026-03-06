.class public final enum Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
.super Ljava/lang/Enum;
.source "MouseKeysInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MouseKeysInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MouseKeyEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum DIAGONAL_DOWN_LEFT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum DIAGONAL_DOWN_RIGHT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum DIAGONAL_UP_LEFT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum DIAGONAL_UP_RIGHT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum DOWN_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum HOLD:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum LEFT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum LEFT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum RELEASE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum RIGHT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum RIGHT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum SCROLL_TOGGLE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum UP_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;


# instance fields
.field private final mLocationKeyCode:I


# direct methods
.method private static synthetic $values()[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
    .locals 13

    .line 137
    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DIAGONAL_UP_LEFT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v1, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->UP_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v2, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DIAGONAL_UP_RIGHT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v3, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->LEFT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v4, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RIGHT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v5, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DIAGONAL_DOWN_LEFT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v6, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DOWN_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v7, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DIAGONAL_DOWN_RIGHT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v8, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->LEFT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v9, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RIGHT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v10, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->HOLD:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v11, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RELEASE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    sget-object v12, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->SCROLL_TOGGLE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    filled-new-array/range {v0 .. v12}, [Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 138
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0xe

    const-string v3, "DIAGONAL_UP_LEFT_MOVE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DIAGONAL_UP_LEFT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 139
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/4 v1, 0x1

    const/16 v2, 0xf

    const-string v3, "UP_MOVE_OR_SCROLL"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->UP_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 140
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/4 v1, 0x2

    const/16 v2, 0x10

    const-string v3, "DIAGONAL_UP_RIGHT_MOVE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DIAGONAL_UP_RIGHT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 141
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/4 v1, 0x3

    const/16 v2, 0x31

    const-string v3, "LEFT_MOVE_OR_SCROLL"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->LEFT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 142
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/4 v1, 0x4

    const/16 v2, 0x2b

    const-string v3, "RIGHT_MOVE_OR_SCROLL"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RIGHT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 143
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/4 v1, 0x5

    const/16 v2, 0x26

    const-string v3, "DIAGONAL_DOWN_LEFT_MOVE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DIAGONAL_DOWN_LEFT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 144
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/4 v1, 0x6

    const/16 v2, 0x27

    const-string v3, "DOWN_MOVE_OR_SCROLL"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DOWN_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 145
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/4 v1, 0x7

    const/16 v2, 0x28

    const-string v3, "DIAGONAL_DOWN_RIGHT_MOVE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DIAGONAL_DOWN_RIGHT_MOVE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 146
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0x8

    const/16 v2, 0x25

    const-string v3, "LEFT_CLICK"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->LEFT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 147
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0x9

    const/16 v2, 0x4c

    const-string v3, "RIGHT_CLICK"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RIGHT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 148
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0xa

    const/16 v2, 0x29

    const-string v3, "HOLD"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->HOLD:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 149
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0xb

    const/16 v2, 0x37

    const-string v3, "RELEASE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RELEASE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 150
    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0xc

    const/16 v2, 0x38

    const-string v3, "SCROLL_TOGGLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->SCROLL_TOGGLE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    .line 137
    invoke-static {}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->$values()[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->$VALUES:[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "enumValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 154
    iput p3, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->mLocationKeyCode:I

    .line 155
    return-void
.end method

.method public static from(IILandroid/util/SparseArray;)Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
    .locals 2
    .param p0, "keyCode"    # I
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;",
            ">;>;)",
            "Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;"
        }
    .end annotation

    .line 184
    .local p2, "deviceKeyCodeMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;>;>;"
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 185
    .local v0, "keyCodeToEnumMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;>;"
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    return-object v1

    .line 188
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 137
    const-class v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    return-object v0
.end method

.method public static values()[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
    .locals 1

    .line 137
    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->$VALUES:[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v0}, [Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    return-object v0
.end method


# virtual methods
.method public getKeyCode(Landroid/view/InputDevice;)I
    .locals 2
    .param p1, "inputDevice"    # Landroid/view/InputDevice;

    .line 170
    invoke-virtual {p1}, Landroid/view/InputDevice;->getGeneration()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 171
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->mLocationKeyCode:I

    return v0

    .line 173
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->mLocationKeyCode:I

    invoke-virtual {p1, v0}, Landroid/view/InputDevice;->getKeyCodeForKeyLocation(I)I

    move-result v0

    return v0
.end method

.method public final getKeyCodeValue()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->mLocationKeyCode:I

    return v0
.end method
