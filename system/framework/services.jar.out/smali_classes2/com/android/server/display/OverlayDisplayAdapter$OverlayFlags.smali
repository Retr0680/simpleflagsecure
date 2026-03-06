.class final Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverlayFlags"
.end annotation


# instance fields
.field final mDisableWindowInteraction:Z

.field final mFixedContentMode:Z

.field final mGravity:I

.field final mOwnContentOnly:Z

.field final mSecure:Z

.field final mShouldShowSystemDecorations:Z


# direct methods
.method constructor <init>(ZZZZZI)V
    .locals 0
    .param p1, "secure"    # Z
    .param p2, "ownContentOnly"    # Z
    .param p3, "shouldShowSystemDecorations"    # Z
    .param p4, "fixedContentMode"    # Z
    .param p5, "disableWindowInteraction"    # Z
    .param p6, "gravity"    # I

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    iput-boolean p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    .line 679
    iput-boolean p2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mOwnContentOnly:Z

    .line 680
    iput-boolean p3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mShouldShowSystemDecorations:Z

    .line 681
    iput-boolean p4, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mFixedContentMode:Z

    .line 682
    iput-boolean p5, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mDisableWindowInteraction:Z

    .line 683
    iput p6, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mGravity:I

    .line 684
    return-void
.end method

.method static parseFlags(Ljava/lang/String;)Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
    .locals 17
    .param p0, "flagString"    # Ljava/lang/String;

    .line 687
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;-><init>(ZZZZZI)V

    return-object v1

    .line 697
    :cond_0
    const/4 v0, 0x0

    .line 698
    .local v0, "secure":Z
    const/4 v1, 0x0

    .line 699
    .local v1, "ownContentOnly":Z
    const/4 v2, 0x0

    .line 700
    .local v2, "shouldShowSystemDecorations":Z
    const/4 v3, 0x0

    .line 701
    .local v3, "fixedContentMode":Z
    const/4 v4, 0x0

    .line 702
    .local v4, "disableWindowInteraction":Z
    const/4 v5, 0x0

    .line 703
    .local v5, "gravity":I
    const-string v6, ","

    move-object/from16 v7, p0

    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    const/4 v9, 0x0

    move v11, v0

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    .end local v0    # "secure":Z
    .end local v1    # "ownContentOnly":Z
    .end local v2    # "shouldShowSystemDecorations":Z
    .end local v3    # "fixedContentMode":Z
    .end local v4    # "disableWindowInteraction":Z
    .end local v5    # "gravity":I
    .local v11, "secure":Z
    .local v12, "ownContentOnly":Z
    .local v13, "shouldShowSystemDecorations":Z
    .local v14, "fixedContentMode":Z
    .local v15, "disableWindowInteraction":Z
    .local v16, "gravity":I
    :goto_0
    if-ge v9, v8, :cond_6

    aget-object v0, v6, v9

    .line 704
    .local v0, "flag":Ljava/lang/String;
    const-string/jumbo v1, "secure"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    const/4 v1, 0x1

    move v11, v1

    .end local v11    # "secure":Z
    .local v1, "secure":Z
    goto :goto_1

    .line 706
    .end local v1    # "secure":Z
    .restart local v11    # "secure":Z
    :cond_1
    const-string/jumbo v1, "own_content_only"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 707
    const/4 v1, 0x1

    move v12, v1

    .end local v12    # "ownContentOnly":Z
    .local v1, "ownContentOnly":Z
    goto :goto_1

    .line 708
    .end local v1    # "ownContentOnly":Z
    .restart local v12    # "ownContentOnly":Z
    :cond_2
    const-string/jumbo v1, "should_show_system_decorations"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 709
    const/4 v1, 0x1

    move v13, v1

    .end local v13    # "shouldShowSystemDecorations":Z
    .local v1, "shouldShowSystemDecorations":Z
    goto :goto_1

    .line 710
    .end local v1    # "shouldShowSystemDecorations":Z
    .restart local v13    # "shouldShowSystemDecorations":Z
    :cond_3
    const-string v1, "fixed_content_mode"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 711
    const/4 v1, 0x1

    move v14, v1

    .end local v14    # "fixedContentMode":Z
    .local v1, "fixedContentMode":Z
    goto :goto_1

    .line 712
    .end local v1    # "fixedContentMode":Z
    .restart local v14    # "fixedContentMode":Z
    :cond_4
    const-string v1, "disable_window_interaction"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 713
    const/4 v1, 0x1

    move v15, v1

    .end local v15    # "disableWindowInteraction":Z
    .local v1, "disableWindowInteraction":Z
    goto :goto_1

    .line 715
    .end local v1    # "disableWindowInteraction":Z
    .restart local v15    # "disableWindowInteraction":Z
    :cond_5
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayAdapter;->-$$Nest$smparseOverlayGravity(Ljava/lang/String;)I

    move-result v1

    move/from16 v16, v1

    .line 703
    .end local v0    # "flag":Ljava/lang/String;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 718
    :cond_6
    new-instance v10, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    invoke-direct/range {v10 .. v16}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;-><init>(ZZZZZI)V

    return-object v10
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 725
    const-string/jumbo v1, "secure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 726
    const-string v1, ", ownContentOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mOwnContentOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 727
    const-string v1, ", shouldShowSystemDecorations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mShouldShowSystemDecorations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 728
    const-string v1, ", fixedContentMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mFixedContentMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 729
    const-string v1, ", disableWindowInteraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mDisableWindowInteraction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 730
    const-string v1, ", gravity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mGravity:I

    invoke-static {v1}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 724
    return-object v0
.end method
