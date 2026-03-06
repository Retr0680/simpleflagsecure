.class Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
.super Ljava/lang/Object;
.source "PermissionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .locals 0
    .param p1, "appId"    # I
    .param p2, "userId"    # I

    .line 5314
    return-void
.end method

.method public onInstallPermissionGranted()V
    .locals 0

    .line 5317
    return-void
.end method

.method public onInstallPermissionRevoked()V
    .locals 0

    .line 5323
    return-void
.end method

.method public onInstallPermissionUpdated()V
    .locals 0

    .line 5326
    return-void
.end method

.method public onPermissionChanged()V
    .locals 0

    .line 5315
    return-void
.end method

.method public onPermissionGranted(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 5316
    return-void
.end method

.method public onPermissionRemoved()V
    .locals 0

    .line 5325
    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 5319
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "uid":I
    .end local p2    # "userId":I
    .end local p3    # "reason":Ljava/lang/String;
    .local v1, "uid":I
    .local v2, "userId":I
    .local v3, "reason":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V

    .line 5320
    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "overrideKill"    # Z
    .param p5, "permissionName"    # Ljava/lang/String;

    .line 5322
    return-void
.end method

.method public onPermissionUpdated([IZI)V
    .locals 0
    .param p1, "userIds"    # [I
    .param p2, "sync"    # Z
    .param p3, "appId"    # I

    .line 5324
    return-void
.end method
