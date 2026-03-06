.class final Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "InputMethodMenuControllerNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubtypeViewHolder"
.end annotation


# instance fields
.field private final mCheckmark:Landroid/widget/ImageView;

.field private final mContainer:Landroid/view/View;

.field private mIsSelected:Z

.field private mItem:Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;

.field private final mLayout:Landroid/widget/TextView;

.field private final mName:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$Gyl9DaLB6ibpLPHtVu3WemQ5-Kw(Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->lambda$new$0(Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroid/view/View;Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;

    .line 549
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 551
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->mContainer:Landroid/view/View;

    .line 552
    const v0, 0x1020574

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->mName:Landroid/widget/TextView;

    .line 553
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->mLayout:Landroid/widget/TextView;

    .line 554
    const v0, 0x102036d

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->mCheckmark:Landroid/widget/ImageView;

    .line 556
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->mContainer:Landroid/view/View;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;Landroid/view/View;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;
    .param p2, "v"    # Landroid/view/View;

    .line 557
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->mItem:Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->mItem:Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->mIsSelected:Z

    invoke-interface {p1, v0, v1}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;->onClick(Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;Z)V

    .line 560
    :cond_0
    return-void
.end method


# virtual methods
.method bind(Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;Z)V
    .locals 5
    .param p1, "item"    # Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;
    .param p2, "isSelected"    # Z

    .line 570
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->mItem:Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;

    .line 571
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->mIsSelected:Z

    .line 573
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mImeName:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 575
    .local v0, "name":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 577
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 579
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 580
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->mLayout:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->-$$Nest$fgetmLayoutName(Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->mLayout:Landroid/widget/TextView;

    .line 583
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->-$$Nest$fgetmLayoutName(Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    .line 582
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 584
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$SubtypeViewHolder;->mCheckmark:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    return-void
.end method
