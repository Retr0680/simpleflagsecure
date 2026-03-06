.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/input/InputManager$KeyGestureEventHandler;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/InputManagerService;

    return-void
.end method


# virtual methods
.method public final handleKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->$r8$lambda$cP-8M_oJ3cJxiMWouBPeDum6DUc(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V

    return-void
.end method
