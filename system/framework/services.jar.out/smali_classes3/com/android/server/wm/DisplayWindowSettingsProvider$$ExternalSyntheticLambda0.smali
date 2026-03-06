.class public final synthetic Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayWindowSettingsProvider;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayWindowSettingsProvider;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    iput-object p2, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    check-cast p1, Landroid/view/DisplayInfo;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->$r8$lambda$eM_ZFLJ2IWWSfNJX2VvEsDuGSdI(Lcom/android/server/wm/DisplayWindowSettingsProvider;Ljava/util/Set;Landroid/view/DisplayInfo;)V

    return-void
.end method
