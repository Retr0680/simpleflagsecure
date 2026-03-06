.class public interface abstract Lcom/nothing/server/ext/INtDualAppsService;
.super Ljava/lang/Object;
.source "INtDualAppsService.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ext/INtDualAppsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/nothing/server/ext/INtDualAppsService$1;

    invoke-direct {v0}, Lcom/nothing/server/ext/INtDualAppsService$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ext/INtDualAppsService;->DEFAULT:Lcom/nothing/server/ext/INtDualAppsService;

    return-void
.end method


# virtual methods
.method public adjustDeleteWithParentFlags(Ljava/lang/String;II)I
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "originFlags"    # I

    .line 116
    return p3
.end method

.method public blockInstall(ILjava/util/ArrayList;Ljava/io/PrintWriter;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")Z"
        }
    .end annotation

    .line 56
    .local p2, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public findDualAppsUserId()I
    .locals 1

    .line 43
    const/16 v0, -0x2710

    return v0
.end method

.method public fixResolveInfoUserId(Landroid/content/pm/ActivityInfo;I)I
    .locals 1
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingUserId"    # I

    .line 113
    const/16 v0, -0x2710

    return v0
.end method

.method public getDualAppsUserId()I
    .locals 1

    .line 40
    const/16 v0, -0x2710

    return v0
.end method

.method public getUserUnlockIntentForDualApps(I)Landroid/content/Intent;
    .locals 1
    .param p1, "userId"    # I

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasDualFlags(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public hiddenFromLauncher(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public installBlocked(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public installBlocked(Ljava/lang/String;IILandroid/content/pm/UserInfo;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pkgFlags"    # I
    .param p3, "installedUserId"    # I
    .param p4, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public installExistingPackageCheck(Ljava/lang/String;II)[Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "installReason"    # I

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public installRedirectToOwner(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "installer"    # Ljava/lang/String;
    .param p2, "callingUserId"    # I
    .param p3, "userId"    # I

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public isAuthorityRedirectedForDualAppsProfile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isAuthorityRedirectedForDualAppsProfile(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isCallingRelation(II)Z
    .locals 1
    .param p1, "userId1"    # I
    .param p2, "userId2"    # I

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public isDualAppsUserId(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public isWidgetProviderWhiteListed(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public modifyDefaultTypeProfileClone(Lcom/android/server/pm/UserTypeDetails$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 51
    return-void
.end method

.method public onDualSpaceInitialized()V
    .locals 0

    .line 81
    return-void
.end method

.method public onPackageUninstalled(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 111
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 82
    return-void
.end method

.method public overrideCombineActivitiesResult(ILjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileDomainInfo;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p2, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p3, "crossProfileCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    return-void
.end method

.method public overrideInstallablePackages(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .param p1, "userType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p2, "out":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public overrideRequestIfNeeded(Lcom/android/server/wm/NtWmWrapper;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 0
    .param p1, "wmObject"    # Lcom/android/server/wm/NtWmWrapper;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 104
    return-void
.end method

.method public overrideUserId(IZ)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "isEnableAndMatch"    # Z

    .line 70
    const/16 v0, -0x2710

    return v0
.end method

.method public redirectToOwner(II)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "componentUid"    # I

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public resolveIntent(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "supervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "filterCallingUid"    # I
    .param p5, "callingPid"    # I

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldHandleIntentActivities(Landroid/content/Intent;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public shouldUninstallDuringUpdate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public skipCrossProfileAppsTarget(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public skipCurrentProfileIntents(Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public skipSyncAppOps(II)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "appUid"    # I

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public updateBlocked(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pkgFlags"    # I
    .param p3, "userId"    # I

    .line 79
    const/4 v0, 0x0

    return v0
.end method
