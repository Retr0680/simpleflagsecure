.class final Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$HeaderViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "InputMethodMenuControllerNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 594
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 596
    const v0, 0x1020352

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    .line 597
    return-void
.end method


# virtual methods
.method bind(Lcom/android/server/inputmethod/InputMethodMenuControllerNew$HeaderItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/server/inputmethod/InputMethodMenuControllerNew$HeaderItem;

    .line 605
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter$HeaderViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$HeaderItem;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    return-void
.end method
