.class public interface abstract Lcom/nothing/server/ext/INtPrivateSpaceService;
.super Ljava/lang/Object;
.source "INtPrivateSpaceService.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ext/INtPrivateSpaceService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/nothing/server/ext/INtPrivateSpaceService$1;

    invoke-direct {v0}, Lcom/nothing/server/ext/INtPrivateSpaceService$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ext/INtPrivateSpaceService;->DEFAULT:Lcom/nothing/server/ext/INtPrivateSpaceService;

    return-void
.end method


# virtual methods
.method public disallowToDontAskCredential(Landroid/content/pm/UserInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getDisableQuietModeUserUnlockedCallback(Landroid/os/Handler;)Landroid/os/IProgressListener;
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler(I)Landroid/os/Handler;
    .locals 1
    .param p1, "userId"    # I

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHiddenPackagesAsUser(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStopUserCallback(Landroid/os/Handler;)Landroid/app/IStopUserCallback;
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleInstaller(Ljava/lang/String;)Z
    .locals 1
    .param p1, "installerPackageName"    # Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public handleVerifyAndGetBypass(ILcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .locals 1
    .param p1, "opCode"    # I
    .param p2, "pkgState"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "userId"    # I

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public installBlocked(Lcom/android/server/pm/PackageSetting;I)Z
    .locals 1
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I

    .line 50
    const/4 v0, 0x0

    return v0
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

.method public interceptRequestQuietModeEnabled(Ljava/lang/String;ZILjava/lang/Runnable;)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "enableQuietMode"    # Z
    .param p3, "userId"    # I
    .param p4, "lockAction"    # Ljava/lang/Runnable;

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public isInstallingAppForbidden(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public isPrivateAppMediaPlaying()Z
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityManagerReady()V
    .locals 0

    .line 41
    return-void
.end method

.method public onPackageUninstalled(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 69
    return-void
.end method

.method public onProfileRemoved(IILjava/lang/String;)V
    .locals 0
    .param p1, "parentUserId"    # I
    .param p2, "removedUserId"    # I
    .param p3, "userType"    # Ljava/lang/String;

    .line 42
    return-void
.end method

.method public onQuietModeEnabled(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "enableQuietMode"    # Z

    .line 40
    return-void
.end method

.method public onQuietModeUserUnlocked(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 76
    return-void
.end method

.method public overrideRequestIfNeeded(Lcom/android/server/wm/NtWmWrapper;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 0
    .param p1, "wmObject"    # Lcom/android/server/wm/NtWmWrapper;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 68
    return-void
.end method

.method public shouldBlockInstallPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public skipCheckStartIntentAfterDisablingQuietMode(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public skipCrashingInfo(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public updateFlags(Lcom/android/server/pm/ComputerEngine;IIJ)J
    .locals 0
    .param p1, "engine"    # Lcom/android/server/pm/ComputerEngine;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "flags"    # J

    .line 53
    return-wide p4
.end method
