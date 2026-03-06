.class Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodDrawsNavBarResourceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor;->registerCallback(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$1;->val$callback:Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 82
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    .line 83
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$1;->val$callback:Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;

    invoke-interface {v1, v0}, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;->onUpdate(I)V

    .line 84
    return-void
.end method
