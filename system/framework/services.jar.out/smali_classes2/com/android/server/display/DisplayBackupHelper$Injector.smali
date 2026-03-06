.class Lcom/android/server/display/DisplayBackupHelper$Injector;
.super Ljava/lang/Object;
.source "DisplayBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private final mIsDisplayTopologyEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-direct {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;-><init>()V

    .line 113
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayTopologyEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayBackupHelper$Injector;->mIsDisplayTopologyEnabled:Z

    .line 112
    return-void
.end method

.method private getTopologyFile(I)Landroid/util/AtomicFile;
    .locals 3
    .param p1, "userId"    # I

    .line 133
    new-instance v0, Landroid/util/AtomicFile;

    invoke-static {p1}, Lcom/android/server/display/DisplayTopologyXmlStore;->getUserTopologyFile(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "topology-state"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method getDisplayManagerInternal()Landroid/hardware/display/DisplayManagerInternal;
    .locals 1

    .line 121
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    return-object v0
.end method

.method isDisplayTopologyFlagEnabled()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/android/server/display/DisplayBackupHelper$Injector;->mIsDisplayTopologyEnabled:Z

    return v0
.end method

.method readTopologyFile(I)[B
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayBackupHelper$Injector;->getTopologyFile(I)Landroid/util/AtomicFile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    return-object v0
.end method

.method writeTopologyFile(I)Landroid/util/AtomicFileOutputStream;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    new-instance v0, Landroid/util/AtomicFileOutputStream;

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayBackupHelper$Injector;->getTopologyFile(I)Landroid/util/AtomicFile;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AtomicFileOutputStream;-><init>(Landroid/util/AtomicFile;)V

    return-object v0
.end method
