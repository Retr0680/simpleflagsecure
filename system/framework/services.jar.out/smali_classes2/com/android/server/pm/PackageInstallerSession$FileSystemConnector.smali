.class final Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;
.super Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FileSystemConnector"
.end annotation


# instance fields
.field final mAddedFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/InstallationFileParcel;",
            ">;)V"
        }
    .end annotation

    .line 2399
    .local p2, "addedFiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstallationFileParcel;>;"
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub;-><init>()V

    .line 2397
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->mAddedFiles:Ljava/util/Set;

    .line 2400
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/InstallationFileParcel;

    .line 2401
    .local v0, "file":Landroid/content/pm/InstallationFileParcel;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->mAddedFiles:Ljava/util/Set;

    iget-object v2, v0, Landroid/content/pm/InstallationFileParcel;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2402
    .end local v0    # "file":Landroid/content/pm/InstallationFileParcel;
    goto :goto_0

    .line 2403
    :cond_0
    return-void
.end method


# virtual methods
.method public writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .param p6, "incomingFd"    # Landroid/os/ParcelFileDescriptor;

    .line 2408
    if-eqz p6, :cond_1

    .line 2411
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->mAddedFiles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2415
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->this$0:Lcom/android/server/pm/PackageInstallerSession;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .end local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    .local v2, "name":Ljava/lang/String;
    .local v3, "offsetBytes":J
    .local v5, "lengthBytes":J
    .local v7, "incomingFd":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mdoWriteInternal(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2418
    nop

    .line 2419
    return-void

    .line 2416
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "offsetBytes":J
    .end local v5    # "lengthBytes":J
    .end local v7    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    .restart local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    move-object p1, v0

    .line 2417
    .end local p2    # "offsetBytes":J
    .end local p4    # "lengthBytes":J
    .end local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "offsetBytes":J
    .restart local v5    # "lengthBytes":J
    .restart local v7    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    .local p1, "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 2412
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "offsetBytes":J
    .end local v5    # "lengthBytes":J
    .end local v7    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    .local p1, "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    .restart local p4    # "lengthBytes":J
    .restart local p6    # "incomingFd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    move-object v2, p1

    move-wide v3, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offsetBytes":J
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "offsetBytes":J
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "File name is not in the list of added files."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2409
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "offsetBytes":J
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "offsetBytes":J
    :cond_1
    move-object v2, p1

    move-wide v3, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offsetBytes":J
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "offsetBytes":J
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "incomingFd can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
