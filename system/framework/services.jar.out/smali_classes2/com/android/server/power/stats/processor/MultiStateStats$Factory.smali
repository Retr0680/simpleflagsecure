.class Lcom/android/server/power/stats/processor/MultiStateStats$Factory;
.super Ljava/lang/Object;
.source "MultiStateStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/processor/MultiStateStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# static fields
.field private static final INVALID_SERIAL_STATE:I = -0x1


# instance fields
.field final mCompositeToSerialState:[I

.field final mDimensionCount:I

.field final mSerialStateCount:I

.field private final mStateBitFieldMasks:[I

.field private final mStateBitFieldShifts:[S

.field final mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;


# direct methods
.method varargs constructor <init>(I[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V
    .locals 9
    .param p1, "dimensionCount"    # I
    .param p2, "states"    # [Lcom/android/server/power/stats/processor/MultiStateStats$States;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mDimensionCount:I

    .line 154
    iput-object p2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    .line 156
    const/4 v0, 0x1

    .line 157
    .local v0, "serialStateCount":I
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 158
    .local v4, "state":Lcom/android/server/power/stats/processor/MultiStateStats$States;
    iget-boolean v5, v4, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-eqz v5, :cond_0

    .line 159
    iget-object v5, v4, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    array-length v5, v5

    mul-int/2addr v0, v5

    .line 157
    .end local v4    # "state":Lcom/android/server/power/stats/processor/MultiStateStats$States;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_1
    iput v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mSerialStateCount:I

    .line 164
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    .line 165
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "shift":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 169
    iget-object v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    int-to-short v5, v1

    aput-short v5, v3, v2

    .line 170
    iget-object v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    array-length v3, v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_2

    .line 174
    iget-object v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v4

    .line 175
    .local v3, "max":I
    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x20

    .line 176
    .local v5, "bitcount":I
    iget-object v6, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    shl-int v7, v4, v5

    sub-int/2addr v7, v4

    shl-int v4, v7, v1

    aput v4, v6, v2

    .line 177
    add-int/2addr v1, v5

    .line 168
    .end local v3    # "max":I
    .end local v5    # "bitcount":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Should have at least two values."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 168
    :cond_3
    nop

    .line 180
    .end local v2    # "i":I
    const/16 v2, 0x1f

    if-ge v1, v2, :cond_9

    .line 187
    const/4 v2, -0x1

    .line 188
    .local v2, "trackedMask":I
    const/4 v3, 0x0

    .local v3, "state":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 189
    iget-object v5, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v5, v5, v3

    iget-boolean v5, v5, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-nez v5, :cond_4

    .line 190
    iget-object v5, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    aget v5, v5, v3

    not-int v5, v5

    and-int/2addr v2, v5

    .line 188
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    nop

    .line 194
    .end local v3    # "state":I
    shl-int v3, v4, v1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    .line 195
    iget-object v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 197
    const/4 v3, 0x0

    .line 198
    .local v3, "nextSerialState":I
    const/4 v5, 0x0

    .local v5, "composite":I
    :goto_3
    iget-object v6, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    array-length v6, v6

    if-ge v5, v6, :cond_8

    .line 199
    invoke-direct {p0, v5}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->isValidCompositeState(I)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_4

    .line 206
    :cond_6
    and-int v6, v5, v2

    .line 207
    .local v6, "baseComposite":I
    iget-object v7, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    aget v7, v7, v6

    if-eq v7, v4, :cond_7

    .line 208
    iget-object v7, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    iget-object v8, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    aget v8, v8, v6

    aput v8, v7, v5

    goto :goto_4

    .line 210
    :cond_7
    iget-object v7, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "nextSerialState":I
    .local v8, "nextSerialState":I
    aput v3, v7, v5

    move v3, v8

    .line 198
    .end local v6    # "baseComposite":I
    .end local v8    # "nextSerialState":I
    .restart local v3    # "nextSerialState":I
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    nop

    .line 213
    .end local v5    # "composite":I
    return-void

    .line 181
    .end local v2    # "trackedMask":I
    .end local v3    # "nextSerialState":I
    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many states: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bits are required to represent the composite state, but only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " are available"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private extractStateFromComposite(II)I
    .locals 2
    .param p1, "compositeState"    # I
    .param p2, "stateIndex"    # I

    .line 226
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    aget v0, v0, p2

    and-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    aget-short v1, v1, p2

    ushr-int/2addr v0, v1

    return v0
.end method

.method private isValidCompositeState(I)Z
    .locals 3
    .param p1, "composite"    # I

    .line 216
    const/4 v0, 0x0

    .local v0, "stateIndex":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 217
    invoke-direct {p0, p1, v0}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->extractStateFromComposite(II)I

    move-result v1

    .line 218
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 219
    const/4 v2, 0x0

    return v2

    .line 218
    :cond_0
    nop

    .line 216
    .end local v1    # "state":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 222
    .end local v0    # "stateIndex":I
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method create()Lcom/android/server/power/stats/processor/MultiStateStats;
    .locals 2

    .line 256
    new-instance v0, Lcom/android/server/power/stats/processor/MultiStateStats;

    iget v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mDimensionCount:I

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/stats/processor/MultiStateStats;-><init>(Lcom/android/server/power/stats/processor/MultiStateStats$Factory;I)V

    return-object v0
.end method

.method getSerialState(I)I
    .locals 1
    .param p1, "compositeState"    # I

    .line 289
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSerialState([I)I
    .locals 5
    .param p1, "states"    # [I

    .line 275
    array-length v0, p1

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "compositeState":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 278
    aget v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->setStateInComposite(III)I

    move-result v0

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 280
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    aget v1, v1, v0

    .line 281
    .local v1, "serialState":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 285
    return v1

    .line 282
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State values out of bounds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSerialStateCount()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mSerialStateCount:I

    return v0
.end method

.method setStateInComposite(III)I
    .locals 2
    .param p1, "baseCompositeState"    # I
    .param p2, "stateIndex"    # I
    .param p3, "value"    # I

    .line 231
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    aget v0, v0, p2

    not-int v0, v0

    and-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    aget-short v1, v1, p2

    shl-int v1, p3, v1

    or-int/2addr v0, v1

    return v0
.end method

.method setStateInComposite(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "compositeState"    # I
    .param p2, "stateName"    # Ljava/lang/String;
    .param p3, "stateLabel"    # Ljava/lang/String;

    .line 236
    const/4 v0, 0x0

    .local v0, "stateIndex":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    const/4 v2, -0x1

    const-string v3, "MultiStateStats"

    if-ge v0, v1, :cond_3

    .line 237
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v1, v1, v0

    .line 238
    .local v1, "stateConfig":Lcom/android/server/power/stats/processor/MultiStateStats$States;
    iget-object v4, v1, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 239
    const/4 v4, 0x0

    .local v4, "state":I
    :goto_1
    iget-object v5, v1, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 240
    iget-object v5, v1, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 241
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->setStateInComposite(III)I

    move-result v2

    return v2

    .line 239
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 244
    .end local v4    # "state":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected label \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' for state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return v2

    .line 238
    :cond_2
    nop

    .line 236
    .end local v1    # "stateConfig":Lcom/android/server/power/stats/processor/MultiStateStats$States;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 248
    .end local v0    # "stateIndex":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return v2
.end method
