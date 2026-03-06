.class public interface abstract Lcom/android/server/appop/INtAppopsService;
.super Ljava/lang/Object;
.source "INtAppopsService.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/appop/INtAppopsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/android/server/appop/INtAppopsService$1;

    invoke-direct {v0}, Lcom/android/server/appop/INtAppopsService$1;-><init>()V

    sput-object v0, Lcom/android/server/appop/INtAppopsService;->DEFAULT:Lcom/android/server/appop/INtAppopsService;

    return-void
.end method


# virtual methods
.method public addAppOpsLogRecord(Ljava/lang/String;)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;

    .line 34
    return-void
.end method

.method public appOpsShutdown()V
    .locals 0

    .line 37
    return-void
.end method

.method public appOpsSystemReady()V
    .locals 0

    .line 36
    return-void
.end method

.method public copyAppopsFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .line 38
    return-void
.end method

.method public dumpAppOps(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 35
    return-void
.end method

.method public enableAppOpsLog(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public isAppOpsDebugEnabled()Z
    .locals 1

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public readNtPackageOpsOnly(Lcom/android/server/appop/LegacyAppOpStateParser;Landroid/util/AtomicFile;Landroid/util/SparseArray;)Z
    .locals 1
    .param p1, "appopParser"    # Lcom/android/server/appop/LegacyAppOpStateParser;
    .param p2, "file"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appop/LegacyAppOpStateParser;",
            "Landroid/util/AtomicFile;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;>;)Z"
        }
    .end annotation

    .line 41
    .local p3, "userPackageModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public readOnlyNt(I)Z
    .locals 1
    .param p1, "opCode"    # I

    .line 44
    const/4 v0, 0x0

    return v0
.end method
