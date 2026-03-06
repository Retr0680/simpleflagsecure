.class Lcom/android/server/am/AppStartInfoTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "AppStartInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppStartInfoTracker;->registerForPackageRemoval()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppStartInfoTracker;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppStartInfoTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/AppStartInfoTracker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 948
    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$2;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 951
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 952
    .local v0, "replacing":Z
    if-eqz v0, :cond_0

    .line 953
    return-void

    .line 955
    :cond_0
    const-string v2, "android.intent.extra.UID"

    const/16 v3, -0x2710

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 956
    .local v2, "uid":I
    nop

    .line 957
    const-string v3, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 958
    .local v1, "allUsers":Z
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker$2;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/am/AppStartInfoTracker;->onPackageRemoved(Ljava/lang/String;IZ)V

    .line 959
    return-void
.end method
