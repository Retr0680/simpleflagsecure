.class Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
.super Ljava/lang/Object;
.source "TelecomLoaderService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/TelecomLoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelecomServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/telecom/TelecomLoaderService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 66
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/telecom/ITelecomLoader$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomLoader;

    move-result-object v0

    .line 67
    .local v0, "telecomLoader":Lcom/android/internal/telecom/ITelecomLoader;
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 68
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 69
    .local v1, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$fgetmServiceRepo(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/telecom/InternalServiceRepository;

    move-result-object v2

    .line 70
    invoke-virtual {v1}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-interface {v0, v2, v3}, Lcom/android/internal/telecom/ITelecomLoader;->createTelecomService(Lcom/android/internal/telecom/IInternalServiceRetriever;Ljava/lang/String;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v2

    .line 72
    .local v2, "telecomService":Lcom/android/internal/telecom/ITelecomService;
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v3}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$fgetmContext(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    .line 73
    const-string v3, "telecom"

    invoke-interface {v2}, Lcom/android/internal/telecom/ITelecomService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 75
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v3}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$fgetmLock(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :try_start_1
    const-class v4, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 77
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 78
    .local v4, "permissionManager":Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;
    iget-object v5, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v5}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$fgetmDefaultSimCallManagerRequests(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 79
    iget-object v5, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v5}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$fgetmContext(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "telecom"

    .line 80
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/TelecomManager;

    .line 81
    .local v5, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    .line 82
    .local v6, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v6, :cond_0

    .line 83
    iget-object v7, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v7}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$fgetmDefaultSimCallManagerRequests(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/IntArray;->size()I

    move-result v7

    .line 84
    .local v7, "requestCount":I
    nop

    .line 85
    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, "packageName":Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_0

    .line 87
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$fgetmDefaultSimCallManagerRequests(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/util/IntArray;->get(I)I

    move-result v10

    .line 88
    .local v10, "userId":I
    iget-object v11, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v11}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$fgetmDefaultSimCallManagerRequests(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/util/IntArray;->remove(I)V

    .line 89
    nop

    .line 90
    invoke-interface {v4, v8, v10}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V

    .line 86
    .end local v10    # "userId":I
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 95
    .end local v4    # "permissionManager":Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;
    .end local v5    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v6    # "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v7    # "requestCount":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "i":I
    :catchall_0
    move-exception v4

    goto :goto_1

    :cond_0
    monitor-exit v3

    .line 98
    .end local v0    # "telecomLoader":Lcom/android/internal/telecom/ITelecomLoader;
    .end local v1    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v2    # "telecomService":Lcom/android/internal/telecom/ITelecomService;
    goto :goto_2

    .line 95
    .restart local v0    # "telecomLoader":Lcom/android/internal/telecom/ITelecomLoader;
    .restart local v1    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v2    # "telecomService":Lcom/android/internal/telecom/ITelecomService;
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    .end local p1    # "name":Landroid/content/ComponentName;
    .end local p2    # "service":Landroid/os/IBinder;
    :try_start_2
    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    .end local v0    # "telecomLoader":Lcom/android/internal/telecom/ITelecomLoader;
    .end local v1    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v2    # "telecomService":Lcom/android/internal/telecom/ITelecomService;
    .restart local p0    # "this":Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    .restart local p1    # "name":Landroid/content/ComponentName;
    .restart local p2    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    nop

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomLoaderService"

    const-string v2, "Failed linking to death."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 103
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v0}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$mconnectToTelecom(Lcom/android/server/telecom/TelecomLoaderService;)V

    .line 104
    return-void
.end method
