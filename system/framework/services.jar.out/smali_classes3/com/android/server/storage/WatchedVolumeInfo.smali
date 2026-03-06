.class public Lcom/android/server/storage/WatchedVolumeInfo;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedVolumeInfo.java"


# instance fields
.field private final mVolumeInfo:Landroid/os/storage/VolumeInfo;


# direct methods
.method private constructor <init>(Landroid/os/storage/VolumeInfo;)V
    .locals 0
    .param p1, "volumeInfo"    # Landroid/os/storage/VolumeInfo;

    .line 44
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/server/storage/WatchedVolumeInfo;)V
    .locals 2
    .param p1, "watchedVolumeInfo"    # Lcom/android/server/storage/WatchedVolumeInfo;

    .line 48
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 49
    new-instance v0, Landroid/os/storage/VolumeInfo;

    iget-object v1, p1, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v1}, Landroid/os/storage/VolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    iput-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    .line 50
    return-void
.end method

.method public static fromVolumeInfo(Landroid/os/storage/VolumeInfo;)Lcom/android/server/storage/WatchedVolumeInfo;
    .locals 1
    .param p0, "info"    # Landroid/os/storage/VolumeInfo;

    .line 53
    new-instance v0, Lcom/android/server/storage/WatchedVolumeInfo;

    invoke-direct {v0, p0}, Lcom/android/server/storage/WatchedVolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    return-object v0
.end method


# virtual methods
.method public buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "reportUnmounted"    # Z

    .line 76
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/server/storage/WatchedVolumeInfo;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/storage/WatchedVolumeInfo;->fromVolumeInfo(Landroid/os/storage/VolumeInfo;)Lcom/android/server/storage/WatchedVolumeInfo;

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

    .line 41
    invoke-virtual {p0}, Lcom/android/server/storage/WatchedVolumeInfo;->clone()Lcom/android/server/storage/WatchedVolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 80
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, p1}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 81
    return-void
.end method

.method public getClonedImmutableVolumeInfo()Lcom/android/server/storage/ImmutableVolumeInfo;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/storage/ImmutableVolumeInfo;->fromVolumeInfo(Landroid/os/storage/VolumeInfo;)Lcom/android/server/storage/ImmutableVolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDisk()Landroid/os/storage/DiskInfo;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDiskId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFsLabel()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getFsPath()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getFsType()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    return-object v0
.end method

.method public getFsUuid()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImmutableVolumeInfo()Lcom/android/server/storage/ImmutableVolumeInfo;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-static {v0}, Lcom/android/server/storage/ImmutableVolumeInfo;->fromVolumeInfo(Landroid/os/storage/VolumeInfo;)Lcom/android/server/storage/ImmutableVolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getInternalPath()Ljava/io/File;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getInternalPath()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getMountFlags()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    return v0
.end method

.method public getMountUserId()I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    return v0
.end method

.method public getPartGuid()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/io/File;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget v0, v0, Landroid/os/storage/VolumeInfo;->state:I

    return v0
.end method

.method public getState(I)I
    .locals 1
    .param p1, "state"    # I

    .line 171
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget v0, v0, Landroid/os/storage/VolumeInfo;->state:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iget v0, v0, Landroid/os/storage/VolumeInfo;->type:I

    return v0
.end method

.method public getVolumeInfo()Landroid/os/storage/VolumeInfo;
    .locals 2

    .line 184
    new-instance v0, Landroid/os/storage/VolumeInfo;

    iget-object v1, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v1}, Landroid/os/storage/VolumeInfo;-><init>(Landroid/os/storage/VolumeInfo;)V

    return-object v0
.end method

.method public isMountedReadable()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    return v0
.end method

.method public isMountedWritable()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v0

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isVisibleForUser(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 204
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    move-result v0

    return v0
.end method

.method public isVisibleForWrite(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 208
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v0

    return v0
.end method

.method public setFsLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "fsLabel"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iput-object p1, v0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    .line 97
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 98
    return-void
.end method

.method public setFsPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iput-object p1, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 106
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 107
    return-void
.end method

.method public setFsType(Ljava/lang/String;)V
    .locals 1
    .param p1, "fsType"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iput-object p1, v0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 115
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 116
    return-void
.end method

.method public setFsUuid(Ljava/lang/String;)V
    .locals 1
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iput-object p1, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 124
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 125
    return-void
.end method

.method public setInternalPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "internalPath"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iput-object p1, v0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 137
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 138
    return-void
.end method

.method public setMountFlags(I)V
    .locals 1
    .param p1, "mountFlags"    # I

    .line 145
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iput p1, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 146
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 147
    return-void
.end method

.method public setMountUserId(I)V
    .locals 1
    .param p1, "mountUserId"    # I

    .line 154
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iput p1, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 155
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 156
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 175
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    iput p1, v0, Landroid/os/storage/VolumeInfo;->state:I

    .line 176
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 177
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/server/storage/WatchedVolumeInfo;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
