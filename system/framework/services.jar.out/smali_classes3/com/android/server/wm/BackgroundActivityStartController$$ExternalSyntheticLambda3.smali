.class public final synthetic Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BackgroundActivityStartController;

.field public final synthetic f$1:Ljava/util/function/Predicate;

.field public final synthetic f$2:[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/util/function/Predicate;[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/BackgroundActivityStartController;

    iput-object p2, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/Predicate;

    iput-object p3, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;->f$2:[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    iput p4, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/BackgroundActivityStartController;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/Predicate;

    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;->f$2:[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    iget v3, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;->f$3:I

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->$r8$lambda$9mD1MFsGNRxyY3OUy6EnJx1kz5o(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/util/function/Predicate;[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;ILcom/android/server/wm/TaskFragment;)V

    return-void
.end method
