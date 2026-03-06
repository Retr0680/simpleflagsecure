.class public interface abstract Lcom/android/server/pm/INtPackageManagerService;
.super Ljava/lang/Object;
.source "INtPackageManagerService.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/pm/INtPackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/android/server/pm/INtPackageManagerService$1;

    invoke-direct {v0}, Lcom/android/server/pm/INtPackageManagerService$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/INtPackageManagerService;->DEFAULT:Lcom/android/server/pm/INtPackageManagerService;

    return-void
.end method


# virtual methods
.method public disableNssiSpecificApps()V
    .locals 0

    .line 30
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public handleCreateNewSettings(Lcom/android/server/pm/PackageSetting;ILandroid/content/pm/UserInfo;I)V
    .locals 0
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "pkgFlags"    # I
    .param p3, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p4, "installedUserId"    # I

    .line 50
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "ipm"    # Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 28
    return-void
.end method

.method public installRedirectToOwner(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "installer"    # Ljava/lang/String;
    .param p2, "callingUserId"    # I
    .param p3, "userId"    # I

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isDebugPersistApp()Z
    .locals 1

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public isEscapeDeleteCheckSystemPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public isNdasScopedApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public setPrivacyHiddenAppAsUser(Ljava/lang/String;ZIZ)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hidden"    # Z
    .param p3, "userId"    # I
    .param p4, "sendBroadcast"    # Z

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public systemReady()V
    .locals 0

    .line 29
    return-void
.end method

.method public updatePackageSetting(Lcom/android/server/pm/PackageSetting;ILandroid/content/pm/UserInfo;)V
    .locals 0
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "pkgFlags"    # I
    .param p3, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 51
    return-void
.end method
