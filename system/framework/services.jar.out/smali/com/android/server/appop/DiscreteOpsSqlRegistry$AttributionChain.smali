.class Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;
.super Ljava/lang/Object;
.source "DiscreteOpsSqlRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteOpsSqlRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttributionChain"
.end annotation


# instance fields
.field mChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;",
            ">;"
        }
    .end annotation
.end field

.field mExemptPkgs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

.field mStartEvent:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;


# direct methods
.method static bridge synthetic -$$Nest$misStart(Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p1, "exemptPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 280
    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 283
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mExemptPkgs:Ljava/util/Set;

    .line 284
    return-void
.end method

.method private isEnd(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z
    .locals 2
    .param p1, "event"    # Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 295
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAttributionFlags(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isStart(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z
    .locals 1
    .param p1, "event"    # Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 300
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAttributionFlags(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method addEvent(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)V
    .locals 7
    .param p1, "opEvent"    # Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "matchingItem":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 320
    .local v2, "item":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    invoke-virtual {v2, p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->equalsExceptDuration(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    move-object v0, v2

    .line 322
    goto :goto_1

    .line 320
    :cond_0
    nop

    .line 318
    .end local v2    # "item":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    .line 328
    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDuration(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v1

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDuration(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDuration(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v1

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDuration(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    :cond_2
    goto :goto_2

    .line 332
    :cond_3
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 330
    :goto_2
    return-void

    .line 335
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isEnd(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    goto :goto_5

    .line 337
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 338
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 340
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 341
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 342
    .local v2, "currEvent":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAccessTime(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v3

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAccessTime(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    .line 344
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_a

    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isEnd(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 345
    :cond_9
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v3, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 346
    goto :goto_6

    .line 347
    :cond_a
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_b

    .line 348
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    goto :goto_6

    .line 347
    :cond_b
    nop

    .line 340
    .end local v2    # "currEvent":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 336
    .end local v1    # "i":I
    :goto_5
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_c
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isComplete()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->getStart()Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    move-result-object v1

    goto :goto_7

    :cond_d
    move-object v1, v2

    :goto_7
    iput-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 354
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->getLastVisible()Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    move-result-object v2

    :cond_e
    iput-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 355
    return-void
.end method

.method getLastVisible()Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 308
    .local v1, "event":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mExemptPkgs:Ljava/util/Set;

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmPackageName(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    return-object v1

    .line 308
    :cond_0
    nop

    .line 306
    .end local v1    # "event":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 312
    .end local v0    # "i":I
    const/4 v0, 0x0

    return-object v0
.end method

.method getStart()Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    invoke-direct {p0, v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    goto :goto_1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method isComplete()Z
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->getStart()Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->mChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    invoke-direct {p0, v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$AttributionChain;->isEnd(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
