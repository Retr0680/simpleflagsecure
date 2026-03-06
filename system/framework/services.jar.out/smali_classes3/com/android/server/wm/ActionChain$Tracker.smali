.class Lcom/android/server/wm/ActionChain$Tracker;
.super Ljava/lang/Object;
.source "ActionChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActionChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tracker"
.end annotation


# instance fields
.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 178
    return-void
.end method

.method private makeChain(Ljava/lang/String;I)Lcom/android/server/wm/ActionChain;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 190
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    .line 189
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v0

    return-object v0
.end method

.method private makeChain(Ljava/lang/String;ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "transit"    # Lcom/android/server/wm/Transition;

    .line 181
    new-instance v0, Lcom/android/server/wm/ActionChain;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/wm/ActionChain;-><init>(Ljava/lang/String;ILcom/android/server/wm/Transition;Lcom/android/server/wm/ActionChain-IA;)V

    .line 182
    .local v0, "out":Lcom/android/server/wm/ActionChain;
    nop

    .line 183
    iget-object v1, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v1, v0, Lcom/android/server/wm/ActionChain;->mTmpAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 185
    return-object v0
.end method


# virtual methods
.method start(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "transit"    # Lcom/android/server/wm/Transition;

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v0

    return-object v0
.end method

.method startDefault(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;I)Lcom/android/server/wm/ActionChain;

    move-result-object v0

    return-object v0
.end method

.method startFailsafe(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .line 226
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;I)Lcom/android/server/wm/ActionChain;

    move-result-object v0

    return-object v0
.end method

.method startFinish(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "finishTransit"    # Lcom/android/server/wm/Transition;

    .line 214
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v0

    return-object v0
.end method

.method startLegacy(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .line 220
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActionChain$Tracker;->makeChain(Ljava/lang/String;ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v0

    return-object v0
.end method
