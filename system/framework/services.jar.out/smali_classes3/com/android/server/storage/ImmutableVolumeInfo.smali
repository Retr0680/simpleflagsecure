.class public final Lcom/android/server/storage/ImmutableVolumeInfo;
.super Ljava/lang/Object;
.source "ImmutableVolumeInfo.java"


# instance fields
.field private final mVolumeInfo:Landroid/os/storage/VolumeInfo;


# direct methods
.method private constructor <init>(Landroid/os/storage/VolumeInfo;)V
    .locals 1
    .param p1, "volumeInfo"    # Landroid/os/storage/VolumeInfo;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, p1}, Landroid/os/storage/VolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    iput-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    .line 38
    return-void
.end method

.method public static fromVolumeInfo(Landroid/os/storage/VolumeInfo;)Lcom/android/server/storage/ImmutableVolumeInfo;
    .locals 1
    .param p0, "info"    # Landroid/os/storage/VolumeInfo;

    .line 41
    new-instance v0, Lcom/android/server/storage/ImmutableVolumeInfo;

    invoke-direct {v0, p0}, Lcom/android/server/storage/ImmutableVolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    return-object v0
.end method


# virtual methods
.method public buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "reportUnmounted"    # Z

    .line 49
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/server/storage/ImmutableVolumeInfo;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/storage/ImmutableVolumeInfo;->fromVolumeInfo(Landroid/os/storage/VolumeInfo;)Lcom/android/server/storage/ImmutableVolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/android/server/storage/ImmutableVolumeInfo;->clone()Lcom/android/server/storage/ImmutableVolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 53
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, p1}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 54
    return-void
.end method

.method public getDisk()Landroid/os/storage/DiskInfo;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDiskId()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFsLabel()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getFsPath()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getFsType()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    return-object v0
.end method

.method public getFsUuid()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalPath()Ljava/io/File;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getInternalPath()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getMountFlags()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    return v0
.end method

.method public getMountUserId()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    return v0
.end method

.method public getPartGuid()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/io/File;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget v0, v0, Landroid/os/storage/VolumeInfo;->state:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget v0, v0, Landroid/os/storage/VolumeInfo;->type:I

    return v0
.end method

.method public getVolumeInfo()Landroid/os/storage/VolumeInfo;
    .locals 2

    .line 113
    new-instance v0, Landroid/os/storage/VolumeInfo;

    iget-object v1, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v1}, Landroid/os/storage/VolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    return-object v0
.end method

.method public isMountedReadable()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    return v0
.end method

.method public isMountedWritable()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v0

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isVisibleForUser(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 133
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    move-result v0

    return v0
.end method

.method public isVisibleForWrite(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 137
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/server/storage/ImmutableVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
