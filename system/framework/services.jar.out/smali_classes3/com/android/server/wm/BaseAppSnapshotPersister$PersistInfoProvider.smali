.class Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;
.super Ljava/lang/Object;
.source "BaseAppSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BaseAppSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PersistInfoProvider"
.end annotation


# instance fields
.field private final mDirName:Ljava/lang/String;

.field protected final mDirectoryResolver:Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;

.field private final mEnableLowResSnapshots:Z

.field private final mInitializedUsers:Landroid/util/SparseBooleanArray;

.field private final mLowResScaleFactor:F

.field private final mScrambleDirectories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mUse16BitFormat:Z


# direct methods
.method public static synthetic $r8$lambda$Kq6deJ05IcnYhOTyoqTGIEcgML4(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->lambda$getScrambleDirectory$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;Ljava/lang/String;ZFZ)V
    .locals 1
    .param p1, "directoryResolver"    # Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;
    .param p2, "dirName"    # Ljava/lang/String;
    .param p3, "enableLowResSnapshots"    # Z
    .param p4, "lowResScaleFactor"    # F
    .param p5, "use16BitFormat"    # Z

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mInitializedUsers:Landroid/util/SparseBooleanArray;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mScrambleDirectories:Landroid/util/SparseArray;

    .line 98
    iput-object p1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirectoryResolver:Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;

    .line 99
    iput-object p2, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirName:Ljava/lang/String;

    .line 100
    iput-boolean p3, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mEnableLowResSnapshots:Z

    .line 101
    iput p4, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mLowResScaleFactor:F

    .line 102
    iput-boolean p5, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mUse16BitFormat:Z

    .line 103
    return-void
.end method

.method private getBaseDirectory(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .line 118
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirectoryResolver:Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;->getSystemDirectoryForUser(I)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mDirName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getOrInitScrambleDirectory(I)Ljava/io/File;
    .locals 10
    .param p1, "userId"    # I

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mScrambleDirectories:Landroid/util/SparseArray;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mInitializedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mScrambleDirectories:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    monitor-exit v0

    return-object v1

    .line 166
    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mInitializedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getScrambleDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 129
    .local v1, "scrambledDirectory":Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getBaseDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 130
    .local v2, "baseDir":Ljava/io/File;
    const/4 v3, 0x0

    .line 132
    .local v3, "newName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 133
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 134
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    .local v4, "scrambleTo":Ljava/io/File;
    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 136
    const-string v6, "WindowManager"

    const-string v7, "SnapshotPersister rename scramble folder fail."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    monitor-exit v0

    return-object v5

    .line 135
    :cond_1
    nop

    .line 139
    .end local v4    # "scrambleTo":Ljava/io/File;
    goto :goto_2

    .line 141
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_3

    .line 142
    const-string v4, "WindowManager"

    const-string v6, "SnapshotPersister make base folder fail."

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    monitor-exit v0

    return-object v5

    .line 145
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_4

    .line 146
    const-string v4, "WindowManager"

    const-string v6, "SnapshotPersister make scramble folder fail"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    monitor-exit v0

    return-object v5

    .line 150
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "files":[Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 152
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_6

    aget-object v7, v4, v6

    .line 153
    .local v7, "file":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    .local v8, "original":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 155
    move-object v3, v7

    goto :goto_1

    .line 157
    :cond_5
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    .local v9, "to":Ljava/io/File;
    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 152
    .end local v7    # "file":Ljava/lang/String;
    .end local v8    # "original":Ljava/io/File;
    .end local v9    # "to":Ljava/io/File;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 163
    .end local v4    # "files":[Ljava/lang/String;
    :cond_6
    :goto_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    .local v4, "newFolder":Ljava/io/File;
    iget-object v5, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mScrambleDirectories:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    monitor-exit v0

    return-object v4

    .line 166
    .end local v1    # "scrambledDirectory":Ljava/io/File;
    .end local v2    # "baseDir":Ljava/io/File;
    .end local v3    # "newName":Ljava/lang/String;
    .end local v4    # "newFolder":Ljava/io/File;
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getScrambleDirectory(I)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # I

    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getBaseDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 172
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "directories":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 175
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    .line 177
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static synthetic lambda$getScrambleDirectory$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "current"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method


# virtual methods
.method createDirectory(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 192
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method enableLowResSnapshots()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mEnableLowResSnapshots:Z

    return v0
.end method

.method getDirectory(I)Ljava/io/File;
    .locals 1
    .param p1, "userId"    # I

    .line 107
    nop

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getBaseDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getHighResolutionBitmapFile(II)Ljava/io/File;
    .locals 4
    .param p1, "index"    # I
    .param p2, "userId"    # I

    .line 204
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getLowResolutionBitmapFile(II)Ljava/io/File;
    .locals 4
    .param p1, "index"    # I
    .param p2, "userId"    # I

    .line 200
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_reduced"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getProtoFile(II)Ljava/io/File;
    .locals 4
    .param p1, "index"    # I
    .param p2, "userId"    # I

    .line 196
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".proto"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method lowResScaleFactor()F
    .locals 1

    .line 212
    iget v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mLowResScaleFactor:F

    return v0
.end method

.method use16BitFormat()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mUse16BitFormat:Z

    return v0
.end method
