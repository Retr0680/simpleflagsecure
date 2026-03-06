.class public interface abstract Lcom/nothing/server/ext/INtAppUsageManager;
.super Ljava/lang/Object;
.source "INtAppUsageManager.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ext/INtAppUsageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/nothing/server/ext/INtAppUsageManager$1;

    invoke-direct {v0}, Lcom/nothing/server/ext/INtAppUsageManager$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ext/INtAppUsageManager;->DEFAULT:Lcom/nothing/server/ext/INtAppUsageManager;

    return-void
.end method


# virtual methods
.method public addNewPackages(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 35
    return-void
.end method

.method public appDied(Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "p"    # Lcom/android/server/am/ProcessRecord;

    .line 56
    return-void
.end method

.method public cleanAllData(J)V
    .locals 0
    .param p1, "millis"    # J

    .line 31
    return-void
.end method

.method public geedHighUsedRecord(ZLjava/lang/String;)Lcom/nothing/server/utils/SimpleAppRecord;
    .locals 1
    .param p1, "needUpdatHighUste"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGeneralUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 1
    .param p1, "needUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getHighUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 1
    .param p1, "needUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getHighUsedRecords(Z)Ljava/util/ArrayList;
    .locals 1
    .param p1, "needUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/nothing/server/utils/SimpleAppRecord;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getLowUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 1
    .param p1, "needUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public handleDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 30
    return-void
.end method

.method public isHighUsedPackages(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setLastCachedPss(Ljava/lang/String;J)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pss"    # J

    .line 55
    return-void
.end method

.method public setRemoveTaskTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setScreenState(Z)V
    .locals 0
    .param p1, "isOff"    # Z

    .line 32
    return-void
.end method

.method public setTargetAdj(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "adj"    # I

    .line 57
    return-void
.end method

.method public setUpdatingPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 34
    return-void
.end method

.method public systemReady(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pmi"    # Landroid/content/pm/PackageManagerInternal;

    .line 29
    return-void
.end method

.method public updateDuration(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 37
    return-void
.end method

.method public updateLaunchTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 36
    return-void
.end method
