.class Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;
.super Landroid/os/RemoteCallbackList;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;-><init>(Lcom/android/server/power/Notifier;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Landroid/os/IScreenTimeoutPolicyListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

.field final synthetic val$this$0:Lcom/android/server/power/Notifier;


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;Lcom/android/server/power/Notifier;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1458
    iput-object p1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;->this$1:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    iput-object p2, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;->val$this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1458
    check-cast p1, Landroid/os/IScreenTimeoutPolicyListener;

    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;->onCallbackDied(Landroid/os/IScreenTimeoutPolicyListener;)V

    return-void
.end method

.method public onCallbackDied(Landroid/os/IScreenTimeoutPolicyListener;)V
    .locals 1
    .param p1, "callbackInterface"    # Landroid/os/IScreenTimeoutPolicyListener;

    .line 1461
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;->this$1:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    invoke-static {v0}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->-$$Nest$fgetmLastReportedState(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    return-void
.end method
