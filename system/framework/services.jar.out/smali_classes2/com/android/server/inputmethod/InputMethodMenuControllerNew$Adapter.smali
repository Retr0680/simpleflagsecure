.class final Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "InputMethodMenuControllerNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodMenuControllerNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;,
        Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$HeaderViewHolder;,
        Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$DividerViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/RecyclerView$Adapter<",
        "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_DIVIDER:I = 0x2

.field private static final TYPE_HEADER:I = 0x1

.field private static final TYPE_SUBTYPE:I = 0x0

.field private static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;

.field private final mSelectedIndex:I


# direct methods
.method constructor <init>(Ljava/util/List;ILandroid/view/LayoutInflater;Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;)V
    .locals 0
    .param p2, "selectedIndex"    # I
    .param p3, "inflater"    # Landroid/view/LayoutInflater;
    .param p4, "listener"    # Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;",
            ">;I",
            "Landroid/view/LayoutInflater;",
            "Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 459
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    .line 460
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;->mItems:Ljava/util/List;

    .line 461
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;->mSelectedIndex:I

    .line 462
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;->mInflater:Landroid/view/LayoutInflater;

    .line 463
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;->mListener:Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;

    .line 464
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 515
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;

    .line 516
    .local v0, "item":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;
    instance-of v1, v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;

    if-eqz v1, :cond_0

    .line 517
    const/4 v1, 0x0

    return v1

    .line 518
    :cond_0
    instance-of v1, v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$HeaderItem;

    if-eqz v1, :cond_1

    .line 519
    const/4 v1, 0x1

    return v1

    .line 520
    :cond_1
    instance-of v1, v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$DividerItem;

    if-eqz v1, :cond_2

    .line 521
    const/4 v1, 0x2

    return v1

    .line 523
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 493
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;

    .line 494
    .local v0, "item":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;
    instance-of v1, p1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;

    nop

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;

    .local v1, "subtypeHolder":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;
    instance-of v2, v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;

    if-eqz v2, :cond_1

    .line 495
    move-object v2, v0

    check-cast v2, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;

    .line 496
    .local v2, "subtypeItem":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;->mSelectedIndex:I

    if-ne p2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->bind(Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;Z)V

    goto :goto_1

    .line 497
    .end local v1    # "subtypeHolder":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;
    .end local v2    # "subtypeItem":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;
    :cond_1
    instance-of v1, p1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$HeaderViewHolder;

    nop

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$HeaderViewHolder;

    .local v1, "headerHolder":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$HeaderViewHolder;
    instance-of v2, v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$HeaderItem;

    if-eqz v2, :cond_2

    .line 498
    move-object v2, v0

    check-cast v2, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$HeaderItem;

    .line 499
    .local v2, "headerItem":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$HeaderItem;
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$HeaderViewHolder;->bind(Lcom/android/server/inputmethod/InputMethodMenuControllerNew$HeaderItem;)V

    goto :goto_1

    .line 500
    .end local v1    # "headerHolder":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$HeaderViewHolder;
    .end local v2    # "headerItem":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$HeaderItem;
    :cond_2
    instance-of v1, p1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$DividerViewHolder;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$DividerItem;

    if-eqz v1, :cond_3

    .line 502
    return-void

    .line 504
    :cond_3
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Holder type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t match item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 468
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    .line 487
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown viewType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109009a

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 485
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$DividerViewHolder;

    invoke-direct {v1, v0}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$DividerViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 476
    .end local v0    # "view":Landroid/view/View;
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109009b

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 479
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$HeaderViewHolder;

    invoke-direct {v1, v0}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 470
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109009c

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 473
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;->mListener:Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;

    invoke-direct {v1, v0, v2}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;-><init>(Landroid/view/View;Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
