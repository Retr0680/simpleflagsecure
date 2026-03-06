.class public Lcom/android/server/security/FileIntegrityService;
.super Lcom/android/server/SystemService;
.source "FileIntegrityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/security/FileIntegrityService$BinderService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileIntegrityService"


# instance fields
.field private final mService:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic -$$Nest$mgetStorageManagerInternal(Lcom/android/server/security/FileIntegrityService;)Landroid/os/storage/StorageManagerInternal;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/security/FileIntegrityService;->getStorageManagerInternal()Landroid/os/storage/StorageManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v0, Lcom/android/server/security/FileIntegrityService$BinderService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/security/FileIntegrityService$BinderService;-><init>(Lcom/android/server/security/FileIntegrityService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/security/FileIntegrityService;->mService:Landroid/os/IBinder;

    .line 124
    const-class v0, Lcom/android/server/security/FileIntegrityService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public static getService()Lcom/android/server/security/FileIntegrityService;
    .locals 1

    .line 49
    const-class v0, Lcom/android/server/security/FileIntegrityService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/security/FileIntegrityService;

    return-object v0
.end method

.method private getStorageManagerInternal()Landroid/os/storage/StorageManagerInternal;
    .locals 1

    .line 133
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 138
    const-string v0, "file_integrity"

    iget-object v1, p0, Lcom/android/server/security/FileIntegrityService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 139
    return-void
.end method
