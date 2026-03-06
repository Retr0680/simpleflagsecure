.class final Lcom/android/server/input/InputGestureManager;
.super Ljava/lang/Object;
.source "InputGestureManager.java"


# static fields
.field private static final KEY_GESTURE_META_MASK:I = 0x11003

.field private static final TAG:Ljava/lang/String; = "InputGestureManager"

.field private static final mGestureLock:Ljava/lang/Object;


# instance fields
.field private final mBlockListedTriggers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/input/InputGestureData$Trigger;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCustomInputGestures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Landroid/hardware/input/InputGestureData$Trigger;",
            "Landroid/hardware/input/InputGestureData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSystemShortcuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/input/InputGestureData$Trigger;",
            "Landroid/hardware/input/InputGestureData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$rFyxEpYsnhnRsDQaYg4ACW996zo(Landroid/hardware/input/InputGestureData$Filter;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/input/InputGestureManager;->lambda$removeAllCustomInputGestures$0(Landroid/hardware/input/InputGestureData$Filter;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputGestureManager;->mSystemShortcuts:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xb

    new-array v1, v1, [Landroid/hardware/input/InputGestureData$Trigger;

    .line 78
    const/16 v2, 0x3d

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 79
    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    .line 80
    const/16 v2, 0x3e

    const/16 v5, 0x1000

    invoke-static {v2, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v6

    aput-object v6, v1, v3

    .line 81
    const/16 v3, 0x1001

    invoke-static {v2, v3}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    aput-object v2, v1, v4

    .line 83
    const/16 v2, 0x36

    const/16 v3, 0x1002

    invoke-static {v2, v3}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v1, v4

    .line 85
    const/16 v3, 0x1d

    invoke-static {v3, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v1, v4

    .line 86
    const/16 v3, 0x1f

    invoke-static {v3, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v1, v4

    .line 87
    const/16 v3, 0x32

    invoke-static {v3, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 88
    const/16 v3, 0x34

    invoke-static {v3, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v1, v4

    .line 89
    invoke-static {v2, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 90
    const/16 v2, 0x35

    invoke-static {v2, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 77
    invoke-static {v1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/input/InputGestureManager;->mBlockListedTriggers:Ljava/util/Set;

    .line 94
    iput-object p1, p0, Lcom/android/server/input/InputGestureManager;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method

.method private blockListBookmarkedTriggers(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/input/InputGestureData;",
            ">;)V"
        }
    .end annotation

    .line 267
    .local p1, "bookmarks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputGestureData;

    .line 269
    .local v2, "bookmark":Landroid/hardware/input/InputGestureData;
    iget-object v3, p0, Lcom/android/server/input/InputGestureManager;->mBlockListedTriggers:Ljava/util/Set;

    invoke-virtual {v2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    nop

    .end local v2    # "bookmark":Landroid/hardware/input/InputGestureData;
    goto :goto_0

    .line 271
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    .line 272
    return-void

    .line 271
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static createKeyGesture(III)Landroid/hardware/input/InputGestureData;
    .locals 2
    .param p0, "keycode"    # I
    .param p1, "modifierState"    # I
    .param p2, "keyGestureType"    # I

    .line 432
    new-instance v0, Landroid/hardware/input/InputGestureData$Builder;

    invoke-direct {v0}, Landroid/hardware/input/InputGestureData$Builder;-><init>()V

    .line 433
    invoke-static {p0, p1}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object v0

    .line 434
    invoke-virtual {v0, p2}, Landroid/hardware/input/InputGestureData$Builder;->setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Landroid/hardware/input/InputGestureData$Builder;->build()Landroid/hardware/input/InputGestureData;

    move-result-object v0

    .line 432
    return-object v0
.end method

.method private initSystemShortcuts()V
    .locals 11

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf

    new-array v1, v1, [Landroid/hardware/input/InputGestureData;

    .line 105
    const/16 v2, 0x1d

    const/high16 v3, 0x10000

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v1, v5

    .line 110
    const/16 v2, 0x24

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v2

    aput-object v2, v1, v5

    .line 115
    const/16 v2, 0x42

    invoke-static {v2, v3, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v1, v6

    .line 120
    const/16 v5, 0x25

    const/4 v7, 0x7

    invoke-static {v5, v3, v7}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v1, v8

    .line 125
    const/16 v5, 0x28

    const/16 v9, 0x20

    invoke-static {v5, v3, v9}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v5

    const/4 v9, 0x4

    aput-object v5, v1, v9

    .line 130
    const/16 v5, 0x2a

    const/16 v9, 0x8

    invoke-static {v5, v3, v9}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v5

    aput-object v5, v1, v4

    .line 135
    const/16 v4, 0x2f

    const/16 v5, 0xa

    invoke-static {v4, v3, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v4

    const/4 v10, 0x6

    aput-object v4, v1, v10

    .line 140
    const/16 v4, 0x6f

    invoke-static {v4, v3, v8}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v4

    aput-object v4, v1, v7

    .line 145
    const/16 v4, 0x13

    const v7, 0x11000

    const/16 v10, 0x35

    invoke-static {v4, v7, v10}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v4

    aput-object v4, v1, v9

    .line 150
    const/16 v4, 0x14

    const/16 v9, 0x34

    invoke-static {v4, v7, v9}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v4

    const/16 v9, 0x9

    aput-object v4, v1, v9

    .line 155
    const/16 v4, 0x15

    invoke-static {v4, v3, v8}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v8

    aput-object v8, v1, v5

    .line 160
    const/16 v8, 0x1b

    invoke-static {v4, v7, v8}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v4

    const/16 v8, 0xb

    aput-object v4, v1, v8

    .line 165
    const/16 v4, 0x16

    const/16 v9, 0x1c

    invoke-static {v4, v7, v9}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v4

    const/16 v9, 0xc

    aput-object v4, v1, v9

    .line 170
    const/16 v4, 0x4c

    invoke-static {v4, v3, v9}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v4

    const/16 v10, 0xd

    aput-object v4, v1, v10

    .line 175
    const/16 v4, 0x3d

    invoke-static {v4, v3, v6}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v4

    const/16 v6, 0xe

    aput-object v4, v1, v6

    .line 104
    invoke-static {v1}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 181
    .local v0, "systemShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    const-string v1, "1"

    const-string/jumbo v4, "ro.debuggable"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x43

    if-eqz v1, :cond_0

    .line 182
    const/16 v1, 0x1f

    invoke-static {v4, v7, v1}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    nop

    .line 195
    nop

    .line 206
    nop

    .line 213
    sget-object v1, Landroid/window/DesktopModeFlags;->ENABLE_TASK_RESIZING_KEYBOARD_SHORTCUTS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v1}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    const/16 v1, 0x44

    const/16 v6, 0x47

    invoke-static {v6, v3, v1}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    const/16 v1, 0x48

    const/16 v7, 0x45

    invoke-static {v1, v3, v7}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const/16 v1, 0x46

    invoke-static {v1, v3, v6}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-static {v7, v3, v1}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_1
    nop

    .line 236
    const/16 v1, 0x41

    const v3, 0x10002

    invoke-static {v5, v3, v1}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilityMouseKeysFeatureFlagEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    invoke-static {v8, v3, v4}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_2
    const/16 v1, 0x40

    invoke-static {v9, v3, v1}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-static {v10, v3, v2}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v1, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputGestureData;

    .line 261
    .local v3, "systemShortcut":Landroid/hardware/input/InputGestureData;
    iget-object v4, p0, Lcom/android/server/input/InputGestureManager;->mSystemShortcuts:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    nop

    .end local v3    # "systemShortcut":Landroid/hardware/input/InputGestureData;
    goto :goto_0

    .line 263
    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_3
    monitor-exit v1

    .line 264
    return-void

    .line 263
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static synthetic lambda$removeAllCustomInputGestures$0(Landroid/hardware/input/InputGestureData$Filter;Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "filter"    # Landroid/hardware/input/InputGestureData$Filter;
    .param p1, "entry"    # Ljava/util/Map$Entry;

    .line 356
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputGestureData;

    invoke-virtual {p0, v0}, Landroid/hardware/input/InputGestureData$Filter;->matches(Landroid/hardware/input/InputGestureData;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addCustomInputGesture(ILandroid/hardware/input/InputGestureData;)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "newGesture"    # Landroid/hardware/input/InputGestureData;

    .line 301
    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mBlockListedTriggers:Ljava/util/Set;

    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mSystemShortcuts:Ljava/util/Map;

    .line 303
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 306
    :cond_0
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v1

    instance-of v3, v1, Landroid/hardware/input/InputGestureData$KeyTrigger;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/hardware/input/InputGestureData$KeyTrigger;

    .line 307
    .local v1, "keyTrigger":Landroid/hardware/input/InputGestureData$KeyTrigger;
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getKeycode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 308
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getKeycode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->isSystemKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 322
    .end local v1    # "keyTrigger":Landroid/hardware/input/InputGestureData$KeyTrigger;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 309
    .restart local v1    # "keyTrigger":Landroid/hardware/input/InputGestureData$KeyTrigger;
    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    .line 312
    .end local v1    # "keyTrigger":Landroid/hardware/input/InputGestureData$KeyTrigger;
    :cond_2
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 313
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    :cond_3
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    .line 316
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 317
    .local v1, "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 318
    monitor-exit v0

    const/4 v0, 0x2

    return v0

    .line 320
    :cond_4
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 304
    .end local v1    # "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    :cond_5
    :goto_1
    monitor-exit v0

    return v2

    .line 322
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 6
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 439
    const-string v0, "InputGestureManager:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 441
    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_0
    const-string v1, "System Shortcuts:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 444
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mSystemShortcuts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputGestureData;

    .line 445
    .local v2, "systemShortcut":Landroid/hardware/input/InputGestureData;
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 446
    .end local v2    # "systemShortcut":Landroid/hardware/input/InputGestureData;
    goto :goto_0

    .line 467
    :catchall_0
    move-exception v1

    goto/16 :goto_4

    .line 447
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 448
    const-string v1, "Blocklisted Triggers:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 450
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mBlockListedTriggers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputGestureData$Trigger;

    .line 451
    .local v2, "blocklistedTrigger":Landroid/hardware/input/InputGestureData$Trigger;
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 452
    .end local v2    # "blocklistedTrigger":Landroid/hardware/input/InputGestureData$Trigger;
    goto :goto_1

    .line 453
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 454
    const-string v1, "Custom Gestures:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 456
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 457
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 458
    iget-object v3, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    .line 459
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 460
    .local v3, "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 462
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/InputGestureData;

    .line 463
    .local v5, "customGesture":Landroid/hardware/input/InputGestureData;
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 464
    .end local v5    # "customGesture":Landroid/hardware/input/InputGestureData;
    goto :goto_3

    .line 465
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 457
    nop

    .end local v3    # "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    nop

    .line 467
    .end local v1    # "size":I
    .end local v2    # "i":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 469
    return-void

    .line 467
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCustomGestureForKeyEvent(ILandroid/view/KeyEvent;)Landroid/hardware/input/InputGestureData;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 387
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 388
    .local v0, "keyCode":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 389
    return-object v1

    .line 391
    :cond_0
    sget-object v2, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v2

    .line 392
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    .line 393
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 394
    .local v3, "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    if-nez v3, :cond_1

    .line 395
    monitor-exit v2

    return-object v1

    .line 399
    .end local v3    # "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 397
    .restart local v3    # "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    const v4, 0x11003

    and-int/2addr v1, v4

    .line 398
    .local v1, "modifierState":I
    invoke-static {v0, v1}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputGestureData;

    monitor-exit v2

    return-object v4

    .line 399
    .end local v1    # "modifierState":I
    .end local v3    # "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCustomGestureForTouchpadGesture(II)Landroid/hardware/input/InputGestureData;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "touchpadGestureType"    # I

    .line 405
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 406
    return-object v0

    .line 408
    :cond_0
    sget-object v1, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    .line 410
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 411
    .local v2, "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    if-nez v2, :cond_1

    .line 412
    monitor-exit v1

    return-object v0

    .line 415
    .end local v2    # "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 414
    .restart local v2    # "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    :cond_1
    invoke-static {p2}, Landroid/hardware/input/InputGestureData;->createTouchpadTrigger(I)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputGestureData;

    monitor-exit v1

    return-object v0

    .line 415
    .end local v2    # "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "filter"    # Landroid/hardware/input/InputGestureData$Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/hardware/input/InputGestureData$Filter;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/input/InputGestureData;",
            ">;"
        }
    .end annotation

    .line 366
    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 382
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    .line 371
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 372
    .local v1, "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    if-nez p2, :cond_1

    .line 373
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v2

    .line 375
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputGestureData;

    .line 377
    .local v4, "customGesture":Landroid/hardware/input/InputGestureData;
    invoke-virtual {p2, v4}, Landroid/hardware/input/InputGestureData$Filter;->matches(Landroid/hardware/input/InputGestureData;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 378
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    .end local v4    # "customGesture":Landroid/hardware/input/InputGestureData;
    :cond_2
    goto :goto_0

    .line 381
    :cond_3
    monitor-exit v0

    return-object v2

    .line 382
    .end local v1    # "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInputGesture(ILandroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "trigger"    # Landroid/hardware/input/InputGestureData$Trigger;

    .line 276
    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mBlockListedTriggers:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 278
    new-instance v1, Landroid/hardware/input/InputGestureData$Builder;

    invoke-direct {v1}, Landroid/hardware/input/InputGestureData$Builder;-><init>()V

    invoke-virtual {v1, p2}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputGestureData$Builder;->setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$Builder;->build()Landroid/hardware/input/InputGestureData;

    move-result-object v1

    monitor-exit v0

    .line 278
    return-object v1

    .line 296
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 281
    :cond_0
    instance-of v1, p2, Landroid/hardware/input/InputGestureData$KeyTrigger;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Landroid/hardware/input/InputGestureData$KeyTrigger;

    .line 282
    .local v1, "keyTrigger":Landroid/hardware/input/InputGestureData$KeyTrigger;
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getKeycode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 283
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getKeycode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->isSystemKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 284
    :cond_1
    new-instance v3, Landroid/hardware/input/InputGestureData$Builder;

    invoke-direct {v3}, Landroid/hardware/input/InputGestureData$Builder;-><init>()V

    invoke-virtual {v3, p2}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/input/InputGestureData$Builder;->setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object v2

    .line 285
    invoke-virtual {v2}, Landroid/hardware/input/InputGestureData$Builder;->build()Landroid/hardware/input/InputGestureData;

    move-result-object v2

    monitor-exit v0

    .line 284
    return-object v2

    .line 288
    .end local v1    # "keyTrigger":Landroid/hardware/input/InputGestureData$KeyTrigger;
    :cond_2
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mSystemShortcuts:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputGestureData;

    .line 289
    .local v1, "gestureData":Landroid/hardware/input/InputGestureData;
    if-eqz v1, :cond_3

    .line 290
    monitor-exit v0

    return-object v1

    .line 292
    :cond_3
    iget-object v2, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 293
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 295
    :cond_4
    iget-object v2, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputGestureData;

    monitor-exit v0

    return-object v2

    .line 296
    .end local v1    # "gestureData":Landroid/hardware/input/InputGestureData;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSystemShortcutForKeyEvent(Landroid/view/KeyEvent;)Landroid/hardware/input/InputGestureData;
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 420
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 421
    .local v0, "keyCode":I
    if-nez v0, :cond_0

    .line 422
    const/4 v1, 0x0

    return-object v1

    .line 424
    :cond_0
    sget-object v1, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    const v3, 0x11003

    and-int/2addr v2, v3

    .line 426
    .local v2, "modifierState":I
    iget-object v3, p0, Lcom/android/server/input/InputGestureManager;->mSystemShortcuts:Ljava/util/Map;

    invoke-static {v0, v2}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputGestureData;

    monitor-exit v1

    return-object v3

    .line 427
    .end local v2    # "modifierState":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public init(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/input/InputGestureData;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "bookmarks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    invoke-direct {p0}, Lcom/android/server/input/InputGestureManager;->initSystemShortcuts()V

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/input/InputGestureManager;->blockListBookmarkedTriggers(Ljava/util/List;)V

    .line 100
    return-void
.end method

.method public removeAllCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "filter"    # Landroid/hardware/input/InputGestureData$Filter;

    .line 346
    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    .line 348
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 349
    .local v1, "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    if-nez v1, :cond_0

    .line 350
    monitor-exit v0

    return-void

    .line 360
    .end local v1    # "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 352
    .restart local v1    # "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    :cond_0
    if-nez p2, :cond_1

    .line 353
    iget-object v2, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 354
    monitor-exit v0

    return-void

    .line 356
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/android/server/input/InputGestureManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2}, Lcom/android/server/input/InputGestureManager$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/input/InputGestureData$Filter;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 357
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    iget-object v2, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 360
    .end local v1    # "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    :cond_2
    monitor-exit v0

    .line 361
    return-void

    .line 360
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeCustomInputGesture(ILandroid/hardware/input/InputGestureData;)I
    .locals 5
    .param p1, "userId"    # I
    .param p2, "data"    # Landroid/hardware/input/InputGestureData;

    .line 327
    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    .line 329
    monitor-exit v0

    return v2

    .line 342
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    .line 332
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 333
    .local v1, "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputGestureData;

    .line 334
    .local v3, "customGesture":Landroid/hardware/input/InputGestureData;
    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 335
    monitor-exit v0

    return v2

    .line 337
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 339
    iget-object v2, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 341
    :cond_2
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 342
    .end local v1    # "customGestures":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/input/InputGestureData$Trigger;Landroid/hardware/input/InputGestureData;>;"
    .end local v3    # "customGesture":Landroid/hardware/input/InputGestureData;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
