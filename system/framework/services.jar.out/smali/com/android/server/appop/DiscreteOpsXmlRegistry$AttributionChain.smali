.class final Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;
.super Ljava/lang/Object;
.source "DiscreteOpsXmlRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteOpsXmlRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AttributionChain"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;
    }
.end annotation


# instance fields
.field mChain:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;",
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

.field mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

.field mStartEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;


# direct methods
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

    .line 479
    .local p1, "exemptPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    .line 477
    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    .line 480
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mExemptPkgs:Ljava/util/Set;

    .line 481
    return-void
.end method

.method private getLastVisible()Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;
    .locals 4

    .line 501
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 502
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    .line 503
    .local v1, "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mExemptPkgs:Ljava/util/Set;

    iget-object v3, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 504
    return-object v1

    .line 503
    :cond_0
    nop

    .line 501
    .end local v1    # "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 507
    .end local v0    # "i":I
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStart()Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    invoke-direct {p0, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    goto :goto_1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private isEnd(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z
    .locals 2
    .param p1, "event"    # Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    .line 549
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget v0, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isStart(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z
    .locals 1
    .param p1, "event"    # Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    .line 554
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget v0, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

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
.method addEvent(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "op"    # I
    .param p5, "opEvent"    # Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    .line 512
    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "op":I
    .end local p5    # "opEvent":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    .local v1, "pkgName":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "attributionTag":Ljava/lang/String;
    .local v4, "op":I
    .local v5, "opEvent":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)V

    .line 515
    .local v0, "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_0
    iget-object p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 516
    iget-object p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    .line 517
    .local p2, "item":Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;
    invoke-virtual {p2, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->equalsExceptDuration(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 518
    iget-object p3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-wide p3, p3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    const-wide/16 v6, -0x1

    cmp-long p3, p3, v6

    if-eqz p3, :cond_0

    .line 519
    iget-object p3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iput-object p3, p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    .line 521
    :cond_0
    return-void

    .line 517
    :cond_1
    nop

    .line 515
    .end local p2    # "item":Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 525
    .end local p1    # "i":I
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isEnd(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    goto :goto_2

    .line 527
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 528
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 531
    :cond_5
    const/4 p1, 0x0

    .restart local p1    # "i":I
    :goto_1
    iget-object p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_a

    .line 532
    iget-object p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    .line 533
    .local p2, "currEvent":Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;
    invoke-direct {p0, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-wide p3, p3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-object p5, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-wide v6, p5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long p3, p3, v6

    if-gtz p3, :cond_7

    :cond_6
    iget-object p3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 535
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_8

    invoke-direct {p0, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isEnd(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 536
    :cond_7
    iget-object p3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p3, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 537
    goto :goto_3

    .line 538
    :cond_8
    iget-object p3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_9

    .line 539
    iget-object p3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    goto :goto_3

    .line 538
    :cond_9
    nop

    .line 531
    .end local p2    # "currEvent":Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 526
    .end local p1    # "i":I
    :goto_2
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isComplete()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->getStart()Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    move-result-object p1

    goto :goto_4

    :cond_b
    move-object p1, p2

    :goto_4
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    .line 545
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->getLastVisible()Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    move-result-object p2

    :cond_c
    iput-object p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    .line 546
    return-void
.end method

.method isComplete()Z
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->getStart()Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    invoke-direct {p0, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isEnd(Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "op"    # I
    .param p5, "opEvent"    # Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    .line 489
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    if-eqz v0, :cond_1

    if-nez p5, :cond_0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    goto :goto_0

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "op":I
    .end local p5    # "opEvent":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    .local v2, "pkgName":Ljava/lang/String;
    .local v3, "uid":I
    .local v4, "attributionTag":Ljava/lang/String;
    .local v5, "op":I
    .local v6, "opEvent":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->matches(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)Z

    move-result p1

    return p1

    .line 489
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "uid":I
    .end local v4    # "attributionTag":Ljava/lang/String;
    .end local v5    # "op":I
    .end local v6    # "opEvent":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    .restart local p1    # "pkgName":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "attributionTag":Ljava/lang/String;
    .restart local p4    # "op":I
    .restart local p5    # "opEvent":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    :cond_1
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 490
    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "op":I
    .end local p5    # "opEvent":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "uid":I
    .restart local v4    # "attributionTag":Ljava/lang/String;
    .restart local v5    # "op":I
    .restart local v6    # "opEvent":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
