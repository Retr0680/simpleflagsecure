.class public Lcom/android/server/crashrecovery/CrashRecoveryAdaptor;
.super Ljava/lang/Object;
.source "CrashRecoveryAdaptor.java"


# static fields
.field private static final CRASHRECOVERY_MODULE_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.crashrecovery.CrashRecoveryModule$Lifecycle"

.field private static final TAG:Ljava/lang/String; = "CrashRecoveryAdaptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeCrashrecoveryModuleService(Lcom/android/server/SystemServiceManager;)V
    .locals 1
    .param p0, "mSystemServiceManager"    # Lcom/android/server/SystemServiceManager;

    .line 40
    const-string v0, "com.android.server.crashrecovery.CrashRecoveryModule$Lifecycle"

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 41
    return-void
.end method

.method public static packageWatchdogNoteBoot(Landroid/content/Context;)V
    .locals 0
    .param p0, "mSystemContext"    # Landroid/content/Context;

    .line 46
    return-void
.end method

.method public static packageWatchdogOnPackagesReady(Lcom/android/server/PackageWatchdog;)V
    .locals 0
    .param p0, "mPackageWatchdog"    # Lcom/android/server/PackageWatchdog;

    .line 56
    return-void
.end method

.method public static packageWatchdogWriteNow(Landroid/content/Context;)V
    .locals 0
    .param p0, "mContext"    # Landroid/content/Context;

    .line 51
    return-void
.end method

.method public static rescuePartyOnSettingsProviderPublished(Landroid/content/Context;)V
    .locals 0
    .param p0, "mContext"    # Landroid/content/Context;

    .line 66
    return-void
.end method

.method public static rescuePartyRegisterHealthObserver(Landroid/content/Context;)V
    .locals 0
    .param p0, "mSystemContext"    # Landroid/content/Context;

    .line 61
    return-void
.end method

.method public static rescuePartyResetDeviceConfigForPackages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method
