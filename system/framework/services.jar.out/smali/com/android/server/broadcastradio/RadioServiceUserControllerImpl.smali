.class public final Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;
.super Ljava/lang/Object;
.source "RadioServiceUserControllerImpl.java"

# interfaces
.implements Lcom/android/server/broadcastradio/RadioServiceUserController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallingUserId()I
    .locals 1

    .line 60
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public getCurrentUser()I
    .locals 4

    .line 43
    const/16 v0, -0x2710

    .line 44
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 46
    .local v1, "identity":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    .line 50
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    goto :goto_1

    .line 50
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    throw v3

    .line 47
    :catch_0
    move-exception v3

    goto :goto_0

    .line 52
    :goto_1
    return v0
.end method

.method public isCurrentOrSystemUser()Z
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;->getCallingUserId()I

    move-result v0

    .line 35
    .local v0, "callingUser":I
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;->getCurrentUser()I

    move-result v1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method
