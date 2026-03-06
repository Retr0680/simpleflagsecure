.class public final synthetic Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/debug/TouchpadSelectionView;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/debug/TouchpadSelectionView;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/debug/TouchpadSelectionView;

    iput-object p2, p0, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/debug/TouchpadSelectionView;

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, v1, p1}, Lcom/android/server/input/debug/TouchpadSelectionView;->$r8$lambda$Fte8vHin7tFS_3M8Z0-6JIkWlsk(Lcom/android/server/input/debug/TouchpadSelectionView;Ljava/util/function/Consumer;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
