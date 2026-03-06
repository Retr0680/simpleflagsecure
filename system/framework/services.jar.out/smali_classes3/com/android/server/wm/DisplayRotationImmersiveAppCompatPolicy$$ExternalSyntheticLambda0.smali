.class public final synthetic Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

.field public final synthetic f$1:Lcom/android/server/wm/WindowOrientationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;Lcom/android/server/wm/WindowOrientationListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    iput-object p2, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowOrientationListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowOrientationListener;

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->$r8$lambda$goMWfxf-NANK8C-U8-jjfWI8u4E(Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;Lcom/android/server/wm/WindowOrientationListener;)V

    return-void
.end method
