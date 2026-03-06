.class public final synthetic Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/WindowManagerService;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->$r8$lambda$b0RL9JPXUM35c9H8FLHfRJnOKvU(Ljava/util/function/Consumer;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
