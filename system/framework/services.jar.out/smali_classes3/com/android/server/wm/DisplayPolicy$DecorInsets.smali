.class Lcom/android/server/wm/DisplayPolicy$DecorInsets;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DecorInsets"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;,
        Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;
    }
.end annotation


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

.field final mTmpInfo:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)Lcom/android/server/wm/DisplayContent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInfoForRotation(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 2462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2459
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 2460
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mTmpInfo:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 2463
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2464
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2465
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;-><init>()V

    aput-object v2, v1, v0

    .line 2464
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 2467
    .end local v0    # "i":I
    return-void
.end method

.method static hasInsetsFrameDiff(Landroid/view/InsetsState;Landroid/view/InsetsState;I)Z
    .locals 7
    .param p0, "s1"    # Landroid/view/InsetsState;
    .param p1, "s2"    # Landroid/view/InsetsState;
    .param p2, "insetsTypes"    # I

    .line 2498
    const/4 v0, 0x0

    .line 2499
    .local v0, "insetsCount1":I
    invoke-virtual {p0}, Landroid/view/InsetsState;->sourceSize()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2500
    invoke-virtual {p0, v1}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 2501
    .local v3, "source1":Landroid/view/InsetsSource;
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    and-int/2addr v4, p2

    if-nez v4, :cond_0

    .line 2502
    goto :goto_1

    .line 2504
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2505
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 2506
    .local v4, "source2":Landroid/view/InsetsSource;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    goto :goto_2

    .line 2499
    .end local v3    # "source1":Landroid/view/InsetsSource;
    .end local v4    # "source2":Landroid/view/InsetsSource;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2507
    .restart local v3    # "source1":Landroid/view/InsetsSource;
    .restart local v4    # "source2":Landroid/view/InsetsSource;
    :goto_2
    return v2

    .line 2499
    .end local v3    # "source1":Landroid/view/InsetsSource;
    .end local v4    # "source2":Landroid/view/InsetsSource;
    :cond_3
    nop

    .line 2510
    .end local v1    # "i":I
    const/4 v1, 0x0

    .line 2511
    .local v1, "insetsCount2":I
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_3
    if-ltz v3, :cond_5

    .line 2512
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 2513
    .restart local v4    # "source2":Landroid/view/InsetsSource;
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v5

    and-int/2addr v5, p2

    if-eqz v5, :cond_4

    .line 2514
    add-int/lit8 v1, v1, 0x1

    .line 2511
    .end local v4    # "source2":Landroid/view/InsetsSource;
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_5
    nop

    .line 2517
    .end local v3    # "i":I
    if-eq v0, v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    return v2
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 2491
    const/4 v0, 0x0

    .local v0, "rotation":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2492
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    aget-object v1, v1, v0

    .line 2493
    .local v1, "info":Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2491
    .end local v1    # "info":Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2495
    .end local v0    # "rotation":I
    return-void
.end method

.method get(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    .locals 2
    .param p1, "rotation"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 2470
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    aget-object v0, v0, p1

    .line 2471
    .local v0, "info":Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->-$$Nest$fgetmNeedUpdate(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2472
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->update(Lcom/android/server/wm/DisplayContent;III)Landroid/view/InsetsState;

    .line 2474
    :cond_0
    return-object v0
.end method

.method invalidate()V
    .locals 5

    .line 2479
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2480
    .local v3, "info":Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->-$$Nest$fputmNeedUpdate(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;Z)V

    .line 2479
    .end local v3    # "info":Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2482
    :cond_0
    return-void
.end method

.method setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V
    .locals 3
    .param p1, "src"    # Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 2485
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2486
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->set(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;)V

    .line 2485
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 2488
    .end local v0    # "i":I
    return-void
.end method
