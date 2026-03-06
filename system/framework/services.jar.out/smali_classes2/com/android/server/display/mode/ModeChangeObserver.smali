.class final Lcom/android/server/display/mode/ModeChangeObserver;
.super Ljava/lang/Object;
.source "ModeChangeObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ModeChangeObserver"


# instance fields
.field mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field private final mLooper:Landroid/os/Looper;

.field mModeChangeListener:Landroid/view/DisplayEventReceiver;

.field private final mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRejectedModesMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPhysicalIdToLogicalIdMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRejectedModesMap(Lcom/android/server/display/mode/ModeChangeObserver;)Landroid/util/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mRejectedModesMap:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/ModeChangeObserver;)Lcom/android/server/display/mode/VotesStorage;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateRejectedModesListByDisplay(Lcom/android/server/display/mode/ModeChangeObserver;JI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/mode/ModeChangeObserver;->updateRejectedModesListByDisplay(JI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateVoteForDisplay(Lcom/android/server/display/mode/ModeChangeObserver;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/mode/ModeChangeObserver;->updateVoteForDisplay(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Landroid/os/Looper;)V
    .locals 2
    .param p1, "votesStorage"    # Lcom/android/server/display/mode/VotesStorage;
    .param p2, "injector"    # Lcom/android/server/display/mode/DisplayModeDirector$Injector;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mRejectedModesMap:Landroid/util/LongSparseArray;

    .line 46
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    .line 57
    iput-object p1, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 58
    iput-object p2, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 59
    iput-object p3, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mLooper:Landroid/os/Looper;

    .line 60
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method private updatePhysicalIdToLogicalIdMap()V
    .locals 10

    .line 142
    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v0}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 144
    .local v0, "displays":[Landroid/view/Display;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 145
    .local v3, "display":Landroid/view/Display;
    if-nez v3, :cond_0

    .line 146
    goto :goto_1

    .line 148
    :cond_0
    invoke-virtual {v3}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v4

    .line 149
    .local v4, "address":Landroid/view/DisplayAddress;
    instance-of v5, v4, Landroid/view/DisplayAddress$Physical;

    nop

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Landroid/view/DisplayAddress$Physical;

    .line 150
    .local v5, "physical":Landroid/view/DisplayAddress$Physical;
    iget-object v6, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/view/DisplayAddress$Physical;->getPhysicalDisplayId()J

    move-result-wide v7

    .line 151
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 150
    invoke-virtual {v6, v7, v8, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 144
    .end local v3    # "display":Landroid/view/Display;
    .end local v4    # "address":Landroid/view/DisplayAddress;
    .end local v5    # "physical":Landroid/view/DisplayAddress$Physical;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_2
    return-void
.end method

.method private updateRejectedModesListByDisplay(JI)V
    .locals 2
    .param p1, "rejectedModePhysicalDisplayId"    # J
    .param p3, "rejectedModeId"    # I

    .line 158
    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mRejectedModesMap:Landroid/util/LongSparseArray;

    .line 159
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 160
    .local v0, "alreadyRejectedModes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 161
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 162
    iget-object v1, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mRejectedModesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 165
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method private updateVoteForDisplay(I)V
    .locals 9
    .param p1, "displayId"    # I

    .line 123
    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 124
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_0

    .line 128
    const-string v1, "ModeChangeObserver"

    const-string v2, "Added or Changed display has disappeared"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 131
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v1

    .line 132
    .local v1, "address":Landroid/view/DisplayAddress;
    instance-of v2, v1, Landroid/view/DisplayAddress$Physical;

    nop

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/view/DisplayAddress$Physical;

    .line 133
    .local v2, "physical":Landroid/view/DisplayAddress$Physical;
    invoke-virtual {v2}, Landroid/view/DisplayAddress$Physical;->getPhysicalDisplayId()J

    move-result-wide v3

    .line 134
    .local v3, "physicalDisplayId":J
    iget-object v5, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mPhysicalIdToLogicalIdMap:Landroid/util/LongSparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v4, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 135
    iget-object v5, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mRejectedModesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 136
    .local v5, "modes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 137
    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/android/server/display/mode/Vote;->forRejectedModes(Ljava/util/Set;)Lcom/android/server/display/mode/Vote;

    move-result-object v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 136
    :goto_0
    const/16 v8, 0x8

    invoke-virtual {v6, p1, v8, v7}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 139
    .end local v2    # "physical":Landroid/view/DisplayAddress$Physical;
    .end local v3    # "physicalDisplayId":J
    .end local v5    # "modes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    .line 67
    invoke-direct {p0}, Lcom/android/server/display/mode/ModeChangeObserver;->updatePhysicalIdToLogicalIdMap()V

    .line 68
    new-instance v0, Lcom/android/server/display/mode/ModeChangeObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/ModeChangeObserver$1;-><init>(Lcom/android/server/display/mode/ModeChangeObserver;)V

    iput-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 102
    iget-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    iget-object v1, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 106
    new-instance v0, Lcom/android/server/display/mode/ModeChangeObserver$2;

    iget-object v1, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/mode/ModeChangeObserver$2;-><init>(Lcom/android/server/display/mode/ModeChangeObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/mode/ModeChangeObserver;->mModeChangeListener:Landroid/view/DisplayEventReceiver;

    .line 120
    return-void
.end method
