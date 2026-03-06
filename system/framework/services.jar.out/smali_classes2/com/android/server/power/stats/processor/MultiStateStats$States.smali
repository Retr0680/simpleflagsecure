.class Lcom/android/server/power/stats/processor/MultiStateStats$States;
.super Ljava/lang/Object;
.source "MultiStateStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/processor/MultiStateStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "States"
.end annotation


# instance fields
.field final mLabels:[Ljava/lang/String;

.field final mName:Ljava/lang/String;

.field final mTracked:Z


# direct methods
.method varargs constructor <init>(Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tracked"    # Z
    .param p3, "labels"    # [Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mName:Ljava/lang/String;

    .line 59
    iput-boolean p2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    .line 60
    iput-object p3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static findTrackedStateByName([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;)I
    .locals 2
    .param p0, "states"    # [Lcom/android/server/power/stats/processor/MultiStateStats$States;
    .param p1, "name"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 80
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    return v0

    .line 79
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 84
    .end local v0    # "i":I
    const/4 v0, -0x1

    return v0
.end method

.method private static forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V
    .locals 2
    .param p1, "states"    # [Lcom/android/server/power/stats/processor/MultiStateStats$States;
    .param p2, "statesValues"    # [I
    .param p3, "stateIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "[I>;[",
            "Lcom/android/server/power/stats/processor/MultiStateStats$States;",
            "[II)V"
        }
    .end annotation

    .line 107
    .local p0, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<[I>;"
    array-length v0, p2

    if-ge p3, v0, :cond_2

    .line 108
    aget-object v0, p1, p3

    iget-boolean v0, v0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-nez v0, :cond_0

    .line 109
    add-int/lit8 v0, p3, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    .line 110
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    aget-object v1, p1, p3

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 113
    aput v0, p2, p3

    .line 114
    add-int/lit8 v1, p3, 0x1

    invoke-static {p0, p1, p2, v1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 116
    .end local v0    # "i":I
    return-void

    .line 118
    :cond_2
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public static forEachTrackedStateCombination([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/util/function/Consumer;)V
    .locals 2
    .param p0, "states"    # [Lcom/android/server/power/stats/processor/MultiStateStats$States;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/server/power/stats/processor/MultiStateStats$States;",
            "Ljava/util/function/Consumer<",
            "[I>;)V"
        }
    .end annotation

    .line 93
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<[I>;"
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    .line 94
    return-void
.end method


# virtual methods
.method public getLabels()[Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isTracked()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    return v0
.end method
