.class public final synthetic Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;

.field public final synthetic f$1:Landroid/os/UEventObserver$UEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;Landroid/os/UEventObserver$UEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;

    iput-object p2, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener$$ExternalSyntheticLambda0;->f$1:Landroid/os/UEventObserver$UEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;

    iget-object v1, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener$$ExternalSyntheticLambda0;->f$1:Landroid/os/UEventObserver$UEvent;

    invoke-static {v0, v1}, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->$r8$lambda$A8GB7pJL44mEC8RsWsS_eXkLo9c(Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;Landroid/os/UEventObserver$UEvent;)V

    return-void
.end method
