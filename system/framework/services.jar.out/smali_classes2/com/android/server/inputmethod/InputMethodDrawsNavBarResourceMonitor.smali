.class final Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor;
.super Ljava/lang/Object;
.source "InputMethodDrawsNavBarResourceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;
    }
.end annotation


# static fields
.field private static final SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "InputMethodDrawsNavBarResourceMonitor"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static evaluate(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 51
    move-object v0, p0

    .local v0, "userAwareContext":Landroid/content/Context;
    goto :goto_0

    .line 53
    .end local v0    # "userAwareContext":Landroid/content/Context;
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 56
    .restart local v0    # "userAwareContext":Landroid/content/Context;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android"

    .line 57
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 58
    const v3, 0x11101c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return v1

    .line 59
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "InputMethodDrawsNavBarResourceMonitor"

    const-string v4, "getResourcesForApplication(\"android\") failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    return v1
.end method

.method static registerCallback(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ioHandler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 76
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "package"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 77
    const-string v0, "android"

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 79
    new-instance v3, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$1;

    invoke-direct {v3, p2}, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$1;-><init>(Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;)V

    .line 86
    .local v3, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v8, 0x4

    move-object v2, p0

    move-object v7, p1

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "ioHandler":Landroid/os/Handler;
    .local v2, "context":Landroid/content/Context;
    .local v7, "ioHandler":Landroid/os/Handler;
    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 88
    return-void
.end method
