.class public Lcom/android/server/appop/HistoricalRegistrySql;
.super Ljava/lang/Object;
.source "HistoricalRegistrySql.java"

# interfaces
.implements Lcom/android/server/appop/HistoricalRegistryInterface;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/android/server/appop/HistoricalRegistrySql;)V
    .locals 0
    .param p1, "other"    # Lcom/android/server/appop/HistoricalRegistrySql;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 0
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 149
    return-void
.end method

.method public clearAllHistory()V
    .locals 0

    .line 126
    return-void
.end method

.method public clearHistory(ILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 100
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "filterUid"    # I
    .param p4, "filterPackage"    # Ljava/lang/String;
    .param p5, "filterAttributionTag"    # Ljava/lang/String;
    .param p6, "filterOp"    # I
    .param p7, "filter"    # I

    .line 59
    return-void
.end method

.method public dumpDiscreteData(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "uidFilter"    # I
    .param p3, "packageNameFilter"    # Ljava/lang/String;
    .param p4, "attributionTagFilter"    # Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "dumpOp"    # I
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p8, "date"    # Ljava/util/Date;
    .param p9, "prefix"    # Ljava/lang/String;
    .param p10, "nDiscreteOps"    # I

    .line 67
    return-void
.end method

.method public getHistoricalOps(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJI[Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "opNames"    # [Ljava/lang/String;
    .param p5, "historyFlags"    # I
    .param p6, "filter"    # I
    .param p7, "beginTimeMillis"    # J
    .param p9, "endTimeMillis"    # J
    .param p11, "flags"    # I
    .param p12, "attributionExemptPkgs"    # [Ljava/lang/String;
    .param p13, "callback"    # Landroid/os/RemoteCallback;

    .line 95
    return-void
.end method

.method public getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJI[Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "opNames"    # [Ljava/lang/String;
    .param p5, "historyFlags"    # I
    .param p6, "filter"    # I
    .param p7, "beginTimeMillis"    # J
    .param p9, "endTimeMillis"    # J
    .param p11, "flags"    # I
    .param p12, "attributionExemptedPackages"    # [Ljava/lang/String;
    .param p13, "callback"    # Landroid/os/RemoteCallback;

    .line 144
    return-void
.end method

.method public increaseOpAccessDuration(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJII)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "uidState"    # I
    .param p7, "flags"    # I
    .param p8, "eventStartTime"    # J
    .param p10, "increment"    # J
    .param p12, "attributionFlags"    # I
    .param p13, "attributionChainId"    # I

    .line 74
    return-void
.end method

.method public incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIII)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "uidState"    # I
    .param p7, "flags"    # I
    .param p8, "accessTime"    # J
    .param p10, "attributionFlags"    # I
    .param p11, "attributionChainId"    # I
    .param p12, "accessCount"    # I

    .line 81
    return-void
.end method

.method public incrementOpRejectedCount(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I

    .line 87
    return-void
.end method

.method public offsetDiscreteHistory(J)V
    .locals 0
    .param p1, "offsetMillis"    # J

    .line 136
    return-void
.end method

.method public offsetHistory(J)V
    .locals 0
    .param p1, "offsetMillis"    # J

    .line 131
    return-void
.end method

.method public persistPendingHistory()V
    .locals 0

    .line 110
    return-void
.end method

.method public resetHistoryParameters()V
    .locals 0

    .line 121
    return-void
.end method

.method public setHistoryParameters(IJJ)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "baseSnapshotInterval"    # J
    .param p4, "intervalCompressionMultiplier"    # J

    .line 116
    return-void
.end method

.method public shutdown()V
    .locals 0

    .line 52
    return-void
.end method

.method public systemReady(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 47
    return-void
.end method

.method public writeAndClearDiscreteHistory()V
    .locals 0

    .line 105
    return-void
.end method
