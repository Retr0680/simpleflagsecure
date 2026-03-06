.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

.field public final synthetic f$1:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;

    invoke-static {v0, v1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->$r8$lambda$3qJfZiNExghXhIpE-_DN4Ds7e-Q(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V

    return-void
.end method
