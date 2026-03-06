.class public Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
.super Ljava/lang/Object;
.source "PermissionManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;,
        Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;,
        Lcom/android/server/pm/permission/PermissionManagerServiceImpl$UpdatePermissionFlags;
    }
.end annotation


# static fields
.field private static final BACKGROUND_RATIONALE_CHANGE_ID:J = 0x8c7dff3L

.field private static final BACKUP_TIMEOUT_MILLIS:J

.field private static final BLOCKING_PERMISSION_FLAGS:I = 0x34

.field private static final EMPTY_INT_ARRAY:[I

.field private static final FULLER_PERMISSION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_PERMISSION_TREE_FOOTPRINT:I = 0x8000

.field private static final NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOTIFICATION_PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SKIP_KILL_APP_REASON_NOTIFICATION_TEST:Ljava/lang/String; = "skip permission revoke app kill for notification test"

.field private static final STORAGE_PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PermissionManager"

.field private static final UPDATE_PERMISSIONS_ALL:I = 0x1

.field private static final UPDATE_PERMISSIONS_REPLACE_ALL:I = 0x4

.field private static final UPDATE_PERMISSIONS_REPLACE_PKG:I = 0x2

.field private static final USER_PERMISSION_FLAGS:I = 0x3


# instance fields
.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

.field private final mGlobalGids:[I

.field private final mHandler:Landroid/os/Handler;

.field private final mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

.field private final mIsLeanback:Z

.field private final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

.field private final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field private mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field private mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

.field private final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field private mPrivappPermissionsViolations:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

.field private final mState:Lcom/android/server/pm/permission/DevicePermissionState;

.field private final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private final mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$-fiRUAMMHVhqpJh_JNpXmdQtUj8(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$resetRuntimePermissionsInternal$3(IZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8Sme45Qvw9zW2bBrdtvASVYcOVo(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$updatePermissions$11(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DfvddoHDfyKGCzWx8aYmsFkA5kE(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;ZILcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$revokeRuntimePermissionsIfPermissionDefinitionChangedInternal$7([ILjava/lang/String;ZILcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IZGdZLu9IXWwkIE-78RVorfH6ro(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILjava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$restoreDelayedRuntimePermissions$5(ILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LgrGsOx7VAKdJc4oDshdvCpA0pQ(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILcom/android/server/pm/PackageSetting;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$writeLegacyPermissionStateTEMP$16([ILcom/android/server/pm/PackageSetting;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MGC-4_nFjXpM3q4woMu1yIiXTSs(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$readLegacyPermissionStateTEMP$15([ILcom/android/server/pm/pkg/PackageStateInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TVcfivNHjY7gHyGgY0IQMMyc0DA(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I[ZIILcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$updatePermissionFlagsForAllApps$2(I[ZIILcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WSkE5PiNBH1FdUtUU2bp3jGFnOc(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$revokeRuntimePermissionsIfGroupChangedInternal$6([ILjava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XO0n9wIy3T3IzcC-Y6FduT8bcSY(I)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$revokeSharedUserPermissionsForLeavingPackageInternal$10(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XR_K49R0rSNeTixW4kIpcd-NnlQ(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$onSystemReady$14(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZvgQQyQrxfZ6zPfSBdxIwcK3hmU(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ZLcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$onPackageAddedInternal$17(ZLcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bgZmqAeD0LQYW4VoaxyUvyEFrhM(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$getGrantedPermissionsInternal$8(ILcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$chxVBKurN-nt7lKNd-xdsXYMz9E(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IILandroid/content/pm/PermissionGroupInfo;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$getAllPermissionGroups$0(IILandroid/content/pm/PermissionGroupInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$k2_g4EmAjzmPTbLZVw7_encYyNA(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IILandroid/content/pm/PermissionInfo;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$queryPermissionsByGroup$1(IILandroid/content/pm/PermissionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mKXsRlf-7x5d8JK782Hg-sGYT70(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$updatePermissionSourcePackage$12(Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qozdUvGVCPDUPIg8wD0NT0Qxa2A(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$updatePermissionSourcePackage$13(Lcom/android/server/pm/permission/Permission;Lcom/android/server/pm/pkg/AndroidPackage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uWRHC5nVKduB4K_FGz2O8nzlqsA(II)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$resetRuntimePermissionsInternal$4(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$yPrF8ewzWaNwnhsFhJAbRXoJvTU(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Ljava/lang/String;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->lambda$grantRequestedPermissionsInternal$9(Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckUidPermission(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILjava/lang/String;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smkillUid(IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 182
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->LOG_TAG:Ljava/lang/String;

    .line 188
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->BACKUP_TIMEOUT_MILLIS:J

    .line 193
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->STORAGE_PERMISSIONS:Ljava/util/List;

    .line 210
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    .line 212
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 235
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->STORAGE_PERMISSIONS:Ljava/util/List;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->STORAGE_PERMISSIONS:Ljava/util/List;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

    const-string v1, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/ArrayMap;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;)V"
        }
    .end annotation

    .line 425
    .local p2, "availableFeatures":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

    .line 259
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 267
    new-instance v0, Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/DevicePermissionState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    .line 286
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 287
    const-string/jumbo v0, "platform_compat"

    .line 288
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 287
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 291
    new-instance v0, Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-direct {v0}, Lcom/android/server/pm/permission/PermissionRegistry;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 312
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    .line 326
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 429
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 430
    invoke-static {}, Landroid/permission/PermissionManager;->disablePackageNamePermissionCache()V

    .line 432
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 433
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 434
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    .line 435
    const-string v0, "android.software.leanback"

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mIsLeanback:Z

    .line 436
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 438
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 441
    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    const-string/jumbo v0, "ro.android.car.carservice.package"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "carServicePackage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 446
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 450
    .end local v0    # "carServicePackage":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PermissionManager"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 452
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 453
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 454
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 456
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 457
    .local v1, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemPermissions:Landroid/util/SparseArray;

    .line 458
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mGlobalGids:[I

    .line 459
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    .line 463
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v2

    .line 464
    .local v2, "permConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$PermissionEntry;>;"
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 465
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 466
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 467
    .local v6, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v8, v6, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v7

    .line 468
    .local v7, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v7, :cond_1

    .line 469
    new-instance v8, Lcom/android/server/pm/permission/Permission;

    iget-object v9, v6, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    const-string v10, "android"

    invoke-direct {v8, v9, v10, v3}, Lcom/android/server/pm/permission/Permission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v7, v8

    .line 470
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    goto :goto_1

    .line 476
    .end local v5    # "i":I
    .end local v6    # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    .end local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 472
    .restart local v5    # "i":I
    .restart local v6    # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    .restart local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_1
    :goto_1
    iget-object v8, v6, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v8, :cond_2

    .line 473
    iget-object v8, v6, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    iget-boolean v9, v6, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    invoke-virtual {v7, v8, v9}, Lcom/android/server/pm/permission/Permission;->setGids([IZ)V

    .line 465
    .end local v6    # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    .end local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 476
    .end local v5    # "i":I
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 477
    return-void

    .line 476
    :goto_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v3
.end method

.method private addAllPermissionGroupsInternal(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 11
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2368
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 2369
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 2370
    .local v1, "N":I
    const/4 v2, 0x0

    .line 2371
    .local v2, "r":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 2372
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 2373
    .local v4, "pg":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v5

    .line 2374
    .local v5, "cur":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    if-nez v5, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2375
    .local v6, "curPackageName":Ljava/lang/String;
    :goto_1
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 2376
    .local v7, "isPackageUpdate":Z
    if-eqz v5, :cond_1

    if-eqz v7, :cond_2

    :cond_1
    goto :goto_2

    .line 2390
    :cond_2
    const-string v8, "PermissionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permission group "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " from package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2391
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ignored: original from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2392
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2390
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2407
    .end local v1    # "N":I
    .end local v2    # "r":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v4    # "pg":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    .end local v5    # "cur":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    .end local v6    # "curPackageName":Ljava/lang/String;
    .end local v7    # "isPackageUpdate":Z
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 2377
    .restart local v1    # "N":I
    .restart local v2    # "r":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v4    # "pg":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    .restart local v5    # "cur":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    .restart local v6    # "curPackageName":Ljava/lang/String;
    .restart local v7    # "isPackageUpdate":Z
    :goto_2
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v8, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)V

    .line 2371
    .end local v4    # "pg":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    .end local v5    # "cur":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    .end local v6    # "curPackageName":Ljava/lang/String;
    .end local v7    # "isPackageUpdate":Z
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 2404
    .end local v3    # "i":I
    nop

    .line 2407
    .end local v1    # "N":I
    .end local v2    # "r":Ljava/lang/StringBuilder;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2408
    return-void

    .line 2407
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method private addAllPermissionsInternal(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;
    .locals 10
    .param p1, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p2, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/PackageState;",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2317
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 2318
    .local v0, "N":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2319
    .local v1, "definitionChangedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 2320
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 2324
    .local v3, "p":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 2329
    :try_start_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v5

    const/16 v6, 0x16

    if-le v5, v6, :cond_0

    .line 2330
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 2331
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v5

    .line 2330
    invoke-static {v3, v5}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setParsedPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermission;Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)V

    goto :goto_1

    .line 2344
    :catchall_0
    move-exception v5

    goto :goto_5

    .line 2340
    :cond_0
    :goto_1
    const-wide/16 v5, 0x80

    invoke-static {v3, v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 2342
    .local v5, "permissionInfo":Landroid/content/pm/PermissionInfo;
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTree(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    goto :goto_2

    .line 2343
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    :goto_2
    nop

    .line 2344
    .local v6, "oldPermission":Lcom/android/server/pm/permission/Permission;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2347
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v6, v5, v4}, Lcom/android/server/pm/permission/Permission;->isOverridingSystemPermission(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v7

    .line 2349
    .local v7, "isOverridingSystemPermission":Z
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v8

    .line 2350
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 2351
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v4

    .line 2350
    invoke-static {v6, v5, p1, v4, v7}, Lcom/android/server/pm/permission/Permission;->createOrUpdate(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/pkg/PackageState;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    .line 2353
    .local v4, "permission":Lcom/android/server/pm/permission/Permission;
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2354
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v9, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermissionTree(Lcom/android/server/pm/permission/Permission;)V

    goto :goto_3

    .line 2362
    .end local v4    # "permission":Lcom/android/server/pm/permission/Permission;
    :catchall_1
    move-exception v4

    goto :goto_4

    .line 2356
    .restart local v4    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_2
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v9, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    .line 2358
    :goto_3
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isDefinitionChanged()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2359
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2360
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/android/server/pm/permission/Permission;->setDefinitionChanged(Z)V

    .line 2362
    .end local v4    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2319
    .end local v3    # "p":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    .end local v5    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v6    # "oldPermission":Lcom/android/server/pm/permission/Permission;
    .end local v7    # "isOverridingSystemPermission":Z
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2362
    .restart local v3    # "p":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    .restart local v5    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .restart local v6    # "oldPermission":Lcom/android/server/pm/permission/Permission;
    .restart local v7    # "isOverridingSystemPermission":Z
    :goto_4
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v4

    .line 2344
    .end local v5    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v6    # "oldPermission":Lcom/android/server/pm/permission/Permission;
    .end local v7    # "isOverridingSystemPermission":Z
    :goto_5
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v5

    .line 2319
    .end local v3    # "p":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    :cond_4
    nop

    .line 2364
    .end local v2    # "i":I
    return-object v1
.end method

.method private addAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;II)V
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 5022
    .local p2, "allowlistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/List;

    move-result-object v0

    .line 5023
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 5024
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 5025
    .local v1, "permissionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 5026
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5027
    .end local v0    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "permissionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 5028
    .end local v2    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move-object v2, p2

    .line 5030
    .end local v0    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;II)V

    .line 5031
    return-void
.end method

.method private static buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "callingUid"    # I
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "requireFullPermission"    # Z

    .line 4343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4344
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 4345
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4346
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4348
    :cond_0
    const-string v1, "UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4349
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4350
    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4351
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4352
    if-nez p3, :cond_1

    .line 4353
    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4354
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4356
    :cond_1
    const-string v1, " to access user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4357
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4358
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/Permission;)I
    .locals 4
    .param p1, "permissionTree"    # Lcom/android/server/pm/permission/Permission;

    .line 4364
    const/4 v0, 0x0

    .line 4365
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/Permission;

    .line 4366
    .local v2, "permission":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/Permission;->calculateFootprint(Lcom/android/server/pm/permission/Permission;)I

    move-result v3

    add-int/2addr v0, v3

    .line 4367
    .end local v2    # "permission":Lcom/android/server/pm/permission/Permission;
    goto :goto_0

    .line 4368
    :cond_0
    return v0
.end method

.method private canAdoptPermissionsInternal(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 7
    .param p1, "oldPackageName"    # Ljava/lang/String;
    .param p2, "newPkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4730
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4731
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 4732
    .local v0, "oldPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4733
    return v1

    .line 4735
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v2

    const-string v3, " to "

    const-string v4, "Unable to update from "

    const-string v5, "PermissionManager"

    if-nez v2, :cond_1

    .line 4736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4737
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": old package not in system partition"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4736
    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4739
    return v1

    .line 4741
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4743
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": old package still exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4742
    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4745
    return v1

    .line 4747
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private static canGrantOemPermission(Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Z
    .locals 5
    .param p0, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p1, "permission"    # Ljava/lang/String;

    .line 3561
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isOem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3562
    return v1

    .line 3564
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3566
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;

    move-result-object v2

    .line 3567
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/server/pm/permission/PermissionAllowlist;->getOemAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 3568
    .local v2, "granted":Ljava/lang/Boolean;
    if-eqz v2, :cond_2

    .line 3573
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v3, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 3569
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OEM permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " requested by package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " must be explicitly declared granted or not"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkCallingOrSelfPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 4336
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkCrossUserPermission(IIIZ)Z
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "userId"    # I
    .param p4, "requireFullPermission"    # Z

    .line 4321
    const/4 v0, 0x1

    if-ne p3, p2, :cond_0

    .line 4322
    return v0

    .line 4324
    :cond_0
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_1

    if-nez p1, :cond_2

    :cond_1
    goto :goto_2

    .line 4327
    :cond_2
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p4, :cond_3

    .line 4328
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 4331
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result v1

    nop

    if-nez v1, :cond_5

    .line 4332
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    nop

    .line 4331
    :goto_1
    return v0

    .line 4325
    :goto_2
    return v0
.end method

.method private checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z
    .locals 7
    .param p1, "permName"    # Ljava/lang/String;

    .line 1206
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 1207
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    .line 1208
    .local v1, "bp":Lcom/android/server/pm/permission/Permission;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1209
    const-string v3, "PermissionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such permissions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v2

    .line 1215
    .end local v1    # "bp":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1212
    .restart local v1    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1213
    .local v3, "permissionPackageName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isHardOrSoftRestricted()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 1214
    invoke-virtual {v1}, Lcom/android/server/pm/permission/Permission;->isImmutablyRestricted()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    nop

    .line 1215
    .end local v1    # "bp":Lcom/android/server/pm/permission/Permission;
    .local v4, "isImmutablyRestrictedPermission":Z
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1217
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1218
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1219
    .local v1, "callingUserId":I
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v3, v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1221
    const-string v5, "186404356"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6, p1}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x534e4554

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1222
    return v2

    .line 1225
    :cond_2
    if-eqz v4, :cond_3

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v2, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    goto :goto_1

    .line 1228
    :cond_4
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot modify allowlisting of an immutably restricted permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1232
    :goto_1
    return v5

    .line 1215
    .end local v0    # "callingUid":I
    .end local v1    # "callingUserId":I
    .end local v3    # "permissionPackageName":Ljava/lang/String;
    .end local v4    # "isImmutablyRestrictedPermission":Z
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method private checkIfLegacyStorageOpsNeedToBeUpdated(Lcom/android/server/pm/pkg/AndroidPackage;Z[I[I)[I
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "replace"    # Z
    .param p3, "userIds"    # [I
    .param p4, "updatedUserIds"    # [I

    .line 3133
    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3134
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3135
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3136
    :cond_0
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0

    .line 3139
    :cond_1
    return-object p4
.end method

.method private checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 931
    const-string v0, "default:0"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private checkPermissionInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;I)I
    .locals 9
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "isPackageExplicit"    # Z
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 950
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 951
    .local v0, "callingUid":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez p2, :cond_0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    goto :goto_0

    .line 957
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 958
    return v2

    .line 952
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0, p4, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 954
    return v2

    .line 962
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v3

    invoke-static {p4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 963
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v1

    .line 965
    .local v4, "isInstantApp":Z
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    .line 966
    :try_start_0
    invoke-direct {p0, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v6

    .line 967
    .local v6, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v6, :cond_4

    .line 968
    const-string v1, "PermissionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing permissions state for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " and user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v2

    .line 982
    .end local v6    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 973
    .restart local v6    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_4
    :try_start_1
    invoke-direct {p0, v6, p3, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkSinglePermissionInternalLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 974
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    .line 977
    :cond_5
    :try_start_2
    sget-object v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v7, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 978
    .local v7, "fullerPermissionName":Ljava/lang/String;
    if-eqz v7, :cond_6

    invoke-direct {p0, v6, v7, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkSinglePermissionInternalLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 980
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    .line 982
    .end local v6    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v7    # "fullerPermissionName":Ljava/lang/String;
    :cond_6
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 984
    return v2

    .line 982
    :goto_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method private checkPrivilegedPermissionAllowlist(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;)Z
    .locals 10
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "packageSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "permission"    # Lcom/android/server/pm/permission/Permission;

    .line 3270
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3271
    return v1

    .line 3273
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3274
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "android"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3275
    return v1

    .line 3277
    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    goto/16 :goto_3

    .line 3280
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivilegedPermissionAllowlistSourcePackageNames:Landroid/util/ArraySet;

    .line 3281
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3282
    return v1

    .line 3284
    :cond_4
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3285
    .local v2, "permissionName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 3286
    invoke-virtual {v3, v0}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3287
    .local v3, "containingApexPackageName":Ljava/lang/String;
    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPrivilegedPermissionAllowlistState(Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 3289
    .local v4, "allowlistState":Ljava/lang/Boolean;
    if-eqz v4, :cond_5

    .line 3290
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 3293
    :cond_5
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3302
    return v1

    .line 3305
    :cond_6
    iget-boolean v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemReady:Z

    if-nez v5, :cond_8

    .line 3306
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isApkInUpdatedApex()Z

    move-result v5

    .line 3308
    .local v5, "isInUpdatedApex":Z
    if-nez v5, :cond_8

    .line 3309
    const-string v6, "PermissionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Privileged permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3310
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") not in privapp-permissions allowlist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3309
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    sget-boolean v6, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v6, :cond_8

    .line 3313
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6

    .line 3314
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v7, :cond_7

    .line 3315
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iput-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    goto :goto_0

    .line 3319
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3317
    :cond_7
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3319
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1

    .line 3323
    .end local v5    # "isInUpdatedApex":Z
    :cond_8
    :goto_2
    sget-boolean v5, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    xor-int/2addr v1, v5

    return v1

    .line 3278
    .end local v2    # "permissionName":Ljava/lang/String;
    .end local v3    # "containingApexPackageName":Ljava/lang/String;
    .end local v4    # "allowlistState":Ljava/lang/Boolean;
    :goto_3
    return v1
.end method

.method private checkSinglePermissionInternalLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "uidState"    # Lcom/android/server/pm/permission/UidPermissionState;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "isInstantApp"    # Z

    .line 990
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 991
    return v1

    .line 994
    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 995
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    .line 996
    .local v2, "permission":Lcom/android/server/pm/permission/Permission;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    :cond_1
    return v1

    .line 999
    .end local v2    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_2
    return v0
.end method

.method private checkSingleUidPermissionInternalLocked(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "permissionName"    # Ljava/lang/String;

    .line 1062
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1063
    .local v0, "permissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private checkUidPermission(ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "permName"    # Ljava/lang/String;

    .line 1003
    const-string v0, "default:0"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private checkUidPermissionInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/lang/String;)I
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "uid"    # I
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 1039
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1040
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1041
    .local v1, "userId":I
    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermissionInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result v0

    return v0

    .line 1044
    .end local v1    # "userId":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 1045
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkSingleUidPermissionInternalLocked(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1046
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v0

    .line 1054
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1049
    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1050
    .local v2, "fullerPermissionName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1051
    invoke-direct {p0, p2, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkSingleUidPermissionInternalLocked(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1052
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v0

    .line 1054
    .end local v2    # "fullerPermissionName":Ljava/lang/String;
    :cond_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1056
    const/4 v0, -0x1

    return v0

    .line 1054
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method private enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 4287
    if-ltz p2, :cond_2

    .line 4290
    if-eqz p4, :cond_0

    .line 4291
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceShellRestriction(Ljava/lang/String;II)V

    .line 4293
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4294
    .local v0, "callingUserId":I
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkCrossUserPermission(IIIZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4295
    return-void

    .line 4297
    :cond_1
    invoke-static {p1, p2, p5, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 4299
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v2, "PermissionManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4300
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4288
    .end local v0    # "callingUserId":I
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .line 4265
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    nop

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 4267
    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    nop

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 4269
    const-string v3, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4271
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4276
    :cond_1
    :goto_0
    return-void
.end method

.method private enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .line 4254
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    nop

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 4256
    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4258
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4262
    :cond_1
    :goto_0
    return-void
.end method

.method private enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "tree"    # Lcom/android/server/pm/permission/Permission;

    .line 4375
    invoke-virtual {p2}, Lcom/android/server/pm/permission/Permission;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 4376
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/Permission;)I

    move-result v0

    .line 4377
    .local v0, "curTreeSize":I
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v1

    add-int/2addr v1, v0

    const v2, 0x8000

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 4378
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Permission tree size cap exceeded"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4381
    .end local v0    # "curTreeSize":I
    :cond_1
    :goto_0
    return-void
.end method

.method private enforceShellRestriction(Ljava/lang/String;II)V
    .locals 3
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 4308
    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_2

    .line 4309
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 4310
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell does not have permission to access user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4312
    :goto_0
    if-gez p3, :cond_2

    .line 4313
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to check shell permission for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4314
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4313
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4317
    :cond_2
    return-void
.end method

.method private getAllUserIds()[I
    .locals 1

    .line 2998
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v0

    return-object v0
.end method

.method private getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/List;
    .locals 8
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1142
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 1143
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v1

    .line 1144
    .local v1, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v1, :cond_0

    .line 1145
    const-string v2, "PermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing permissions state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 v0, 0x0

    return-object v0

    .line 1175
    .end local v1    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1150
    .restart local v1    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_0
    const/4 v2, 0x0

    .line 1151
    .local v2, "queryFlags":I
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_1

    .line 1152
    or-int/lit16 v2, v2, 0x1000

    .line 1154
    :cond_1
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_2

    .line 1155
    or-int/lit16 v2, v2, 0x2000

    .line 1157
    :cond_2
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_3

    .line 1158
    or-int/lit16 v2, v2, 0x800

    .line 1161
    :cond_3
    const/4 v3, 0x0

    .line 1163
    .local v3, "allowlistedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1164
    .local v5, "permissionName":Ljava/lang/String;
    nop

    .line 1165
    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    .line 1166
    .local v6, "currentFlags":I
    and-int v7, v6, v2

    if-eqz v7, :cond_5

    .line 1167
    if-nez v3, :cond_4

    .line 1168
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    .line 1170
    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    .end local v5    # "permissionName":Ljava/lang/String;
    .end local v6    # "currentFlags":I
    :cond_5
    goto :goto_0

    .line 1174
    :cond_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v3

    .line 1175
    .end local v1    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v2    # "queryFlags":I
    .end local v3    # "allowlistedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method private getAppOpPermissionPackagesInternal(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getAppOpPermissionPackages(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 510
    .local v1, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 511
    sget-object v2, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v2

    .line 514
    .end local v1    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 513
    .restart local v1    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v2

    .line 514
    .end local v1    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method private getGrantedPermissionsInternal(Ljava/lang/String;I)Ljava/util/Set;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2465
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 2466
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_0

    .line 2467
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 2470
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 2471
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/PackageStateInternal;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v2

    .line 2472
    .local v2, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v2, :cond_1

    .line 2473
    const-string v3, "PermissionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing permissions state for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v3

    .line 2498
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 2476
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_1
    :try_start_1
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2477
    invoke-virtual {v2}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v3

    .line 2482
    :cond_2
    :try_start_2
    new-instance v3, Landroid/util/ArraySet;

    .line 2483
    invoke-virtual {v2}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2484
    .local v3, "instantPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILcom/android/server/pm/pkg/PackageStateInternal;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2496
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v3

    .line 2498
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v3    # "instantPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v2
.end method

.method private getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 710
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 711
    return v1

    .line 714
    :cond_0
    const-string v0, "getPermissionFlags"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 715
    const/4 v6, 0x0

    const-string v7, "getPermissionFlags"

    const/4 v5, 0x1

    move-object v2, p0

    move v3, p3

    move v4, p4

    .end local p3    # "callingUid":I
    .end local p4    # "userId":I
    .local v3, "callingUid":I
    .local v4, "userId":I
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 720
    iget-object p3, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p3

    .line 721
    .local p3, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez p3, :cond_1

    .line 722
    return v1

    .line 724
    :cond_1
    iget-object p4, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p4, p1, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 726
    return v1

    .line 729
    :cond_2
    iget-object p4, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p4

    .line 730
    :try_start_0
    iget-object v0, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    if-nez v0, :cond_3

    .line 731
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    .line 741
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 734
    :cond_3
    :try_start_1
    invoke-direct {p0, p3, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v0

    .line 735
    .local v0, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v0, :cond_4

    .line 736
    const-string v5, "PermissionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing permissions state for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    .line 740
    :cond_4
    :try_start_2
    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v1

    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    .line 741
    .end local v0    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :goto_0
    :try_start_3
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method private getPermissionGidsInternal(Ljava/lang/String;I)[I
    .locals 3
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2503
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 2504
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    .line 2505
    .local v1, "permission":Lcom/android/server/pm/permission/Permission;
    if-nez v1, :cond_0

    .line 2506
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v2

    .line 2509
    .end local v1    # "permission":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2508
    .restart local v1    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_0
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/Permission;->computeGids(I)[I

    move-result-object v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v2

    .line 2509
    .end local v1    # "permission":Lcom/android/server/pm/permission/Permission;
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method private getPermissionInfoCallingTargetSdkVersion(Lcom/android/server/pm/pkg/AndroidPackage;I)I
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "uid"    # I

    .line 598
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 599
    .local v0, "appId":I
    const/16 v1, 0x2710

    if-eqz v0, :cond_0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_1

    :cond_0
    goto :goto_0

    .line 604
    :cond_1
    if-nez p1, :cond_2

    .line 605
    return v1

    .line 607
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    return v1

    .line 602
    :goto_0
    return v1
.end method

.method private getPrivilegedPermissionAllowlistState(Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "containingApexPackageName"    # Ljava/lang/String;

    .line 3330
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getPermissionAllowlist()Lcom/android/server/pm/permission/PermissionAllowlist;

    move-result-object v0

    .line 3331
    .local v0, "permissionAllowlist":Lcom/android/server/pm/permission/PermissionAllowlist;
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3332
    .local v1, "packageName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    goto :goto_0

    .line 3335
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3336
    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/permission/PermissionAllowlist;->getProductPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 3338
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3339
    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/permission/PermissionAllowlist;->getSystemExtPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 3341
    :cond_3
    if-eqz p3, :cond_6

    .line 3342
    nop

    .line 3343
    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 3344
    .local v2, "nonApexAllowlistState":Ljava/lang/Boolean;
    if-eqz v2, :cond_4

    .line 3347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is an APK in APEX, but has permission allowlist on the system image. Please bundle the allowlist in the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " APEX instead."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PermissionManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v3, p3}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3353
    .local v3, "moduleName":Ljava/lang/String;
    nop

    .line 3354
    invoke-virtual {v0, v3, v1, p2}, Lcom/android/server/pm/permission/PermissionAllowlist;->getApexPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 3356
    .local v4, "apexAllowlistState":Ljava/lang/Boolean;
    if-eqz v4, :cond_5

    .line 3357
    return-object v4

    .line 3359
    :cond_5
    return-object v2

    .line 3361
    .end local v2    # "nonApexAllowlistState":Ljava/lang/Boolean;
    .end local v3    # "moduleName":Ljava/lang/String;
    .end local v4    # "apexAllowlistState":Ljava/lang/Boolean;
    :cond_6
    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 3333
    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/permission/PermissionAllowlist;->getVendorPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method private getSourcePackageSetting(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .locals 2
    .param p1, "bp"    # Lcom/android/server/pm/permission/Permission;

    .line 3555
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3556
    .local v0, "sourcePackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    return-object v1
.end method

.method private getSourcePackageSigningDetails(Lcom/android/server/pm/permission/Permission;)Landroid/content/pm/SigningDetails;
    .locals 2
    .param p1, "bp"    # Lcom/android/server/pm/permission/Permission;

    .line 3546
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSourcePackageSetting(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 3547
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_0

    .line 3548
    sget-object v1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    return-object v1

    .line 3550
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    return-object v1
.end method

.method private getSplitPermissionInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation

    .line 3250
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSplitPermissions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;
    .locals 2
    .param p1, "appId"    # I
    .param p2, "userId"    # I

    .line 4470
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v0

    .line 4471
    .local v0, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    if-nez v0, :cond_0

    .line 4472
    const/4 v1, 0x0

    return-object v1

    .line 4474
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v1

    return-object v1
.end method

.method private getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 4464
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v0

    return-object v0
.end method

.method private getUidStateLocked(Lcom/android/server/pm/pkg/PackageStateInternal;I)Lcom/android/server/pm/permission/UidPermissionState;
    .locals 1
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "userId"    # I

    .line 4457
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v0

    return-object v0
.end method

.method private static getVolumeUuidForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4411
    if-nez p0, :cond_0

    .line 4412
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    .line 4414
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4415
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4416
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 4418
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4421
    :cond_2
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private grantRequestedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArrayMap;I)V
    .locals 20
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 3612
    .local p2, "permissionStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move/from16 v6, p3

    const/16 v10, 0x14

    .line 3615
    .local v10, "immutableFlags":I
    const/16 v11, 0x48

    .line 3618
    .local v11, "compatFlags":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v2, 0x17

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-lt v0, v2, :cond_0

    move v0, v13

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    move v14, v0

    .line 3621
    .local v14, "supportsRuntimePermissions":Z
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v15

    .line 3623
    .local v15, "instantApp":Z
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 3625
    .local v5, "myUid":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 3626
    .local v3, "permission":Ljava/lang/String;
    move-object/from16 v8, p2

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/Integer;

    .line 3628
    .local v16, "permissionState":Ljava/lang/Integer;
    nop

    nop

    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 3629
    goto :goto_1

    .line 3634
    :cond_2
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 3635
    :try_start_0
    iget-object v4, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    .line 3636
    .local v4, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v4, :cond_3

    .line 3637
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_1

    .line 3644
    .end local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 3639
    .restart local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_4
    if-eqz v15, :cond_5

    .line 3640
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    if-nez v14, :cond_6

    .line 3641
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRuntimeOnly()Z

    move-result v7

    if-nez v7, :cond_7

    .line 3642
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v13, :cond_7

    move v7, v13

    goto :goto_2

    :cond_7
    move v7, v12

    :goto_2
    move/from16 v17, v7

    .line 3643
    .local v17, "shouldGrantRuntimePermission":Z
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isAppOp()Z

    move-result v7

    move/from16 v18, v7

    .line 3644
    .end local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    .local v18, "isAppOpPermission":Z
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3646
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v19

    .line 3648
    .local v19, "flags":I
    if-eqz v17, :cond_b

    .line 3649
    if-eqz v14, :cond_9

    .line 3651
    and-int/lit8 v2, v19, 0x14

    if-nez v2, :cond_8

    .line 3652
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v7, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    move/from16 v6, p3

    goto :goto_4

    .line 3651
    :cond_8
    move/from16 v6, p3

    goto :goto_4

    .line 3658
    :cond_9
    and-int/lit8 v2, v19, 0x48

    if-eqz v2, :cond_a

    .line 3659
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    iget-object v9, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    const/16 v4, 0x48

    move v6, v5

    .end local v5    # "myUid":I
    .local v6, "myUid":I
    const/4 v5, 0x0

    move/from16 v7, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    move v5, v6

    move v6, v7

    .end local v6    # "myUid":I
    .restart local v5    # "myUid":I
    goto :goto_4

    .line 3658
    :cond_a
    move/from16 v6, p3

    goto :goto_4

    .line 3663
    :cond_b
    nop

    nop

    if-eqz v18, :cond_e

    sget-object v2, Lcom/android/server/pm/PackageInstallerService;->INSTALLER_CHANGEABLE_APP_OP_PERMISSIONS:Ljava/util/Set;

    .line 3665
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3666
    and-int/lit8 v2, v19, 0x1

    if-eqz v2, :cond_c

    .line 3667
    goto/16 :goto_1

    .line 3670
    :cond_c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v13, :cond_d

    move v2, v12

    goto :goto_3

    :cond_d
    const/4 v2, 0x2

    .line 3671
    .local v2, "mode":I
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v4

    invoke-static {v6, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 3672
    .local v4, "uid":I
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3673
    .local v7, "appOp":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {v9, v1, v7, v4, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Ljava/lang/String;II)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3678
    .end local v2    # "mode":I
    .end local v3    # "permission":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v7    # "appOp":Ljava/lang/String;
    .end local v16    # "permissionState":Ljava/lang/Integer;
    .end local v17    # "shouldGrantRuntimePermission":Z
    .end local v18    # "isAppOpPermission":Z
    .end local v19    # "flags":I
    :cond_e
    :goto_4
    goto/16 :goto_1

    .line 3644
    .restart local v3    # "permission":Ljava/lang/String;
    .restart local v16    # "permissionState":Ljava/lang/Integer;
    :goto_5
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 3679
    .end local v3    # "permission":Ljava/lang/String;
    .end local v16    # "permissionState":Ljava/lang/Integer;
    :cond_f
    return-void
.end method

.method private grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 1359
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v3, p5

    move-object/from16 v9, p6

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1360
    const-string v0, "PermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    return-void

    .line 1364
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string/jumbo v4, "grantRuntimePermission"

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    const/4 v5, 0x1

    const-string/jumbo v6, "grantRuntimePermission"

    const/4 v4, 0x1

    move/from16 v2, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1373
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    .line 1374
    .local v4, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 1375
    .local v5, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v4, :cond_1c

    if-nez v5, :cond_1

    move-object/from16 v18, v4

    goto/16 :goto_9

    .line 1379
    :cond_1
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x0

    invoke-virtual {v0, v7, v2, v3, v6}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1386
    iget-object v10, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v10

    .line 1387
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 1388
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_1a

    .line 1391
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v11

    .line 1392
    .local v11, "isRolePermission":Z
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isSoftRestricted()Z

    move-result v12

    .line 1393
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .local v12, "isSoftRestrictedPermission":Z
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1394
    const/4 v0, 0x1

    if-eqz v11, :cond_2

    .line 1395
    invoke-direct {v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mayManageRolePermission(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v0

    goto :goto_0

    :cond_2
    move v10, v6

    :goto_0
    move v13, v10

    .line 1396
    .local v13, "mayGrantRolePermission":Z
    nop

    nop

    if-eqz v12, :cond_3

    iget-object v10, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1398
    invoke-static {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    .line 1399
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    .line 1397
    invoke-static {v10, v14, v4, v15, v8}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v10

    .line 1400
    invoke-virtual {v10}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayGrantPermission()Z

    move-result v10

    if-eqz v10, :cond_3

    move v6, v0

    goto :goto_1

    :cond_3
    nop

    :goto_1
    nop

    .line 1404
    .local v6, "mayGrantSoftRestrictedPermission":Z
    iget-object v14, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v14

    .line 1405
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 1406
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_19

    .line 1410
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v10

    .line 1411
    .local v10, "isRuntimePermission":Z
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->hasGids()Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 1412
    .local v15, "permissionHasGids":Z
    if-nez v10, :cond_7

    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v16

    if-eqz v16, :cond_4

    move/from16 v16, v6

    move/from16 v17, v10

    goto/16 :goto_2

    .line 1414
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1415
    if-eqz v13, :cond_5

    move/from16 v16, v6

    move/from16 v17, v10

    goto :goto_2

    .line 1416
    :cond_5
    new-instance v2, Ljava/lang/SecurityException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v16, v6

    .end local v6    # "mayGrantSoftRestrictedPermission":Z
    .local v16, "mayGrantSoftRestrictedPermission":Z
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v10

    .end local v10    # "isRuntimePermission":Z
    .local v17, "isRuntimePermission":Z
    const-string v10, "Permission "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is managed by role"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v11    # "isRolePermission":Z
    .end local v12    # "isSoftRestrictedPermission":Z
    .end local v13    # "mayGrantRolePermission":Z
    .end local v16    # "mayGrantSoftRestrictedPermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v2

    .line 1492
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v15    # "permissionHasGids":Z
    .end local v17    # "isRuntimePermission":Z
    .restart local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v11    # "isRolePermission":Z
    .restart local v12    # "isSoftRestrictedPermission":Z
    .restart local v13    # "mayGrantRolePermission":Z
    .restart local v16    # "mayGrantSoftRestrictedPermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v19, v11

    goto/16 :goto_7

    .end local v16    # "mayGrantSoftRestrictedPermission":Z
    .restart local v6    # "mayGrantSoftRestrictedPermission":Z
    :catchall_1
    move-exception v0

    move/from16 v16, v6

    move-object/from16 v18, v4

    move/from16 v19, v11

    .end local v6    # "mayGrantSoftRestrictedPermission":Z
    .restart local v16    # "mayGrantSoftRestrictedPermission":Z
    goto/16 :goto_7

    .line 1419
    .end local v16    # "mayGrantSoftRestrictedPermission":Z
    .restart local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v6    # "mayGrantSoftRestrictedPermission":Z
    .restart local v10    # "isRuntimePermission":Z
    .restart local v15    # "permissionHasGids":Z
    :cond_6
    move/from16 v16, v6

    move/from16 v17, v10

    .end local v6    # "mayGrantSoftRestrictedPermission":Z
    .end local v10    # "isRuntimePermission":Z
    .restart local v16    # "mayGrantSoftRestrictedPermission":Z
    .restart local v17    # "isRuntimePermission":Z
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permission "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " requested by "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1420
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not a changeable permission type"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v11    # "isRolePermission":Z
    .end local v12    # "isSoftRestrictedPermission":Z
    .end local v13    # "mayGrantRolePermission":Z
    .end local v16    # "mayGrantSoftRestrictedPermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1412
    .end local v17    # "isRuntimePermission":Z
    .restart local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v6    # "mayGrantSoftRestrictedPermission":Z
    .restart local v10    # "isRuntimePermission":Z
    .restart local v11    # "isRolePermission":Z
    .restart local v12    # "isSoftRestrictedPermission":Z
    .restart local v13    # "mayGrantRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :cond_7
    move/from16 v16, v6

    move/from16 v17, v10

    .line 1423
    .end local v6    # "mayGrantSoftRestrictedPermission":Z
    .end local v10    # "isRuntimePermission":Z
    .restart local v16    # "mayGrantSoftRestrictedPermission":Z
    .restart local v17    # "isRuntimePermission":Z
    :goto_2
    :try_start_4
    invoke-direct {v1, v4, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 1424
    .local v2, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v2, :cond_8

    .line 1425
    :try_start_5
    const-string v6, "PermissionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v18, v4

    .end local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v18, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :try_start_6
    const-string v4, "Missing permissions state for "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and user "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1492
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v15    # "permissionHasGids":Z
    .end local v17    # "isRuntimePermission":Z
    :catchall_2
    move-exception v0

    move/from16 v19, v11

    goto/16 :goto_7

    .end local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :catchall_3
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v19, v11

    .end local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    goto/16 :goto_7

    .line 1430
    .end local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v15    # "permissionHasGids":Z
    .restart local v17    # "isRuntimePermission":Z
    :cond_8
    move-object/from16 v18, v4

    .end local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :try_start_7
    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-nez v4, :cond_a

    .line 1431
    :try_start_8
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_3

    .line 1432
    :cond_9
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " has not requested permission "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v11    # "isRolePermission":Z
    .end local v12    # "isSoftRestrictedPermission":Z
    .end local v13    # "mayGrantRolePermission":Z
    .end local v16    # "mayGrantSoftRestrictedPermission":Z
    .end local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1440
    .restart local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v11    # "isRolePermission":Z
    .restart local v12    # "isSoftRestrictedPermission":Z
    .restart local v13    # "mayGrantRolePermission":Z
    .restart local v16    # "mayGrantSoftRestrictedPermission":Z
    .restart local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :cond_a
    :goto_3
    :try_start_9
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    const/16 v6, 0x17

    if-ge v4, v6, :cond_b

    :try_start_a
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1441
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1444
    :cond_b
    :try_start_b
    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v4

    .line 1445
    .local v4, "flags":I
    and-int/lit8 v10, v4, 0x10

    if-eqz v10, :cond_c

    .line 1446
    const-string v6, "PermissionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move/from16 v19, v11

    .end local v11    # "isRolePermission":Z
    .local v19, "isRolePermission":Z
    :try_start_c
    const-string v11, "Cannot grant system fixed permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    monitor-exit v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1492
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v4    # "flags":I
    .end local v15    # "permissionHasGids":Z
    .end local v17    # "isRuntimePermission":Z
    :catchall_4
    move-exception v0

    goto/16 :goto_7

    .end local v19    # "isRolePermission":Z
    .restart local v11    # "isRolePermission":Z
    :catchall_5
    move-exception v0

    move/from16 v19, v11

    .end local v11    # "isRolePermission":Z
    .restart local v19    # "isRolePermission":Z
    goto/16 :goto_7

    .line 1450
    .end local v19    # "isRolePermission":Z
    .restart local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v4    # "flags":I
    .restart local v11    # "isRolePermission":Z
    .restart local v15    # "permissionHasGids":Z
    .restart local v17    # "isRuntimePermission":Z
    :cond_c
    move/from16 v19, v11

    .end local v11    # "isRolePermission":Z
    .restart local v19    # "isRolePermission":Z
    if-nez p3, :cond_d

    and-int/lit8 v10, v4, 0x4

    if-eqz v10, :cond_d

    .line 1451
    :try_start_d
    const-string v6, "PermissionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot grant policy fixed permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    monitor-exit v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1456
    :cond_d
    :try_start_e
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isHardRestricted()Z

    move-result v10

    if-eqz v10, :cond_e

    and-int/lit16 v10, v4, 0x3800

    if-nez v10, :cond_e

    .line 1458
    const-string v6, "PermissionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot grant hard restricted non-exempt permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1463
    :cond_e
    :try_start_f
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isSoftRestricted()Z

    move-result v10

    if-eqz v10, :cond_f

    if-nez v16, :cond_f

    .line 1464
    const-string v6, "PermissionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot grant soft restricted permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    monitor-exit v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1469
    :cond_f
    :try_start_10
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v10

    if-nez v10, :cond_10

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v10

    if-eqz v10, :cond_11

    :cond_10
    goto :goto_5

    .line 1478
    :cond_11
    invoke-interface {v5, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v10

    if-eqz v10, :cond_13

    :cond_12
    goto :goto_4

    .line 1479
    :cond_13
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot grant non-ephemeral permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "isSoftRestrictedPermission":Z
    .end local v13    # "mayGrantRolePermission":Z
    .end local v16    # "mayGrantSoftRestrictedPermission":Z
    .end local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v19    # "isRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v6

    .line 1483
    .restart local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v12    # "isSoftRestrictedPermission":Z
    .restart local v13    # "mayGrantRolePermission":Z
    .restart local v16    # "mayGrantSoftRestrictedPermission":Z
    .restart local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v19    # "isRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :goto_4
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v10

    if-ge v10, v6, :cond_14

    .line 1484
    const-string v6, "PermissionManager"

    const-string v10, "Cannot grant runtime permission to a legacy app"

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    monitor-exit v14
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1488
    :cond_14
    :try_start_11
    invoke-virtual {v2, v0}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 1489
    monitor-exit v14
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1474
    :goto_5
    :try_start_12
    invoke-virtual {v2, v0}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 1475
    monitor-exit v14
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1492
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v4    # "flags":I
    :cond_15
    :try_start_13
    monitor-exit v14
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1494
    if-eqz v17, :cond_16

    .line 1495
    const/16 v0, 0x4db

    invoke-direct {v1, v0, v8, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1499
    :cond_16
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v3, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1500
    .local v0, "uid":I
    if-eqz v9, :cond_18

    .line 1501
    if-eqz v17, :cond_17

    .line 1502
    invoke-virtual {v9, v0, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionGranted(II)V

    goto :goto_6

    .line 1504
    :cond_17
    invoke-virtual {v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionGranted()V

    .line 1506
    :goto_6
    if-eqz v15, :cond_18

    .line 1507
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v9, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onGidsChanged(II)V

    .line 1510
    :cond_18
    return-void

    .line 1492
    .end local v0    # "uid":I
    .end local v15    # "permissionHasGids":Z
    .end local v17    # "isRuntimePermission":Z
    .end local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v19    # "isRolePermission":Z
    .local v4, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v11    # "isRolePermission":Z
    :catchall_6
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v19, v11

    .end local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v11    # "isRolePermission":Z
    .restart local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v19    # "isRolePermission":Z
    goto :goto_7

    .end local v16    # "mayGrantSoftRestrictedPermission":Z
    .end local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v19    # "isRolePermission":Z
    .restart local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v6    # "mayGrantSoftRestrictedPermission":Z
    .restart local v11    # "isRolePermission":Z
    :catchall_7
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v16, v6

    move/from16 v19, v11

    .end local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v6    # "mayGrantSoftRestrictedPermission":Z
    .end local v11    # "isRolePermission":Z
    .restart local v16    # "mayGrantSoftRestrictedPermission":Z
    .restart local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v19    # "isRolePermission":Z
    goto :goto_7

    .line 1407
    .end local v16    # "mayGrantSoftRestrictedPermission":Z
    .end local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v19    # "isRolePermission":Z
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v6    # "mayGrantSoftRestrictedPermission":Z
    .restart local v11    # "isRolePermission":Z
    :cond_19
    move-object/from16 v18, v4

    move/from16 v16, v6

    move/from16 v19, v11

    .end local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v6    # "mayGrantSoftRestrictedPermission":Z
    .end local v11    # "isRolePermission":Z
    .restart local v16    # "mayGrantSoftRestrictedPermission":Z
    .restart local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v19    # "isRolePermission":Z
    :try_start_14
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "isSoftRestrictedPermission":Z
    .end local v13    # "mayGrantRolePermission":Z
    .end local v16    # "mayGrantSoftRestrictedPermission":Z
    .end local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v19    # "isRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v2

    .line 1492
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v12    # "isSoftRestrictedPermission":Z
    .restart local v13    # "mayGrantRolePermission":Z
    .restart local v16    # "mayGrantSoftRestrictedPermission":Z
    .restart local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v19    # "isRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :goto_7
    monitor-exit v14
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 1393
    .end local v12    # "isSoftRestrictedPermission":Z
    .end local v13    # "mayGrantRolePermission":Z
    .end local v16    # "mayGrantSoftRestrictedPermission":Z
    .end local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v19    # "isRolePermission":Z
    .restart local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :catchall_8
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    goto :goto_8

    .line 1389
    .end local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    .restart local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_1a
    move-object/from16 v18, v4

    .end local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :try_start_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "callingUid":I
    .end local p5    # "userId":I
    .end local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v2

    .line 1393
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .restart local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "callingUid":I
    .restart local p5    # "userId":I
    .restart local p6    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :catchall_9
    move-exception v0

    :goto_8
    monitor-exit v10
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 1381
    .end local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_1b
    move-object/from16 v18, v4

    .end local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1375
    .end local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_1c
    move-object/from16 v18, v4

    .line 1376
    .end local v4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v18    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :goto_9
    const-string v0, "PermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    return-void
.end method

.method private handleAppIdMigration(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .locals 20
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "previousAppId"    # I

    .line 4913
    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4914
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 4916
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 4923
    iget-object v5, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    .line 4924
    :try_start_0
    invoke-direct {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v0

    array-length v6, v0

    :goto_0
    if-ge v4, v6, :cond_4

    aget v7, v0, v4

    .line 4925
    .local v7, "userId":I
    iget-object v8, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v8

    .line 4928
    .local v8, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    invoke-virtual {v8, v2}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v9

    .line 4929
    .local v9, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v9, :cond_0

    .line 4930
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v6

    goto/16 :goto_4

    .line 4934
    :cond_0
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4935
    .local v10, "sharedUidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v10, :cond_1

    .line 4937
    :try_start_1
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v11

    invoke-virtual {v8, v11, v9}, Lcom/android/server/pm/permission/UserPermissionState;->createUidStateWithExisting(ILcom/android/server/pm/permission/UidPermissionState;)Lcom/android/server/pm/permission/UidPermissionState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v6

    goto/16 :goto_3

    .line 4962
    .end local v7    # "userId":I
    .end local v8    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v9    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v10    # "sharedUidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_5

    .line 4939
    .restart local v7    # "userId":I
    .restart local v8    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v9    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v10    # "sharedUidState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_1
    :try_start_2
    invoke-virtual {v9}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v11

    .line 4940
    .local v11, "states":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 4941
    .local v12, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v12, :cond_3

    .line 4942
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/permission/PermissionState;

    .line 4943
    .local v14, "srcState":Lcom/android/server/pm/permission/PermissionState;
    nop

    .line 4944
    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v15

    .line 4945
    .local v15, "destState":Lcom/android/server/pm/permission/PermissionState;
    if-eqz v15, :cond_2

    .line 4947
    nop

    .line 4948
    move-object/from16 v16, v0

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-direct {v1, v0, v14, v15}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mergePermissionState(ILcom/android/server/pm/permission/PermissionState;Lcom/android/server/pm/permission/PermissionState;)Landroid/util/Pair;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4949
    .local v0, "newState":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    move-object/from16 v17, v3

    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v17, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :try_start_3
    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    move/from16 v18, v4

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    .line 4950
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v19, v6

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 4949
    invoke-virtual {v10, v3, v4, v6}, Lcom/android/server/pm/permission/UidPermissionState;->putPermissionState(Lcom/android/server/pm/permission/Permission;ZI)V

    .line 4951
    .end local v0    # "newState":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    goto :goto_2

    .line 4962
    .end local v7    # "userId":I
    .end local v8    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v9    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v10    # "sharedUidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v11    # "states":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    .end local v12    # "count":I
    .end local v13    # "i":I
    .end local v14    # "srcState":Lcom/android/server/pm/permission/PermissionState;
    .end local v15    # "destState":Lcom/android/server/pm/permission/PermissionState;
    :catchall_1
    move-exception v0

    goto :goto_5

    .end local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v3

    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_5

    .line 4953
    .end local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v7    # "userId":I
    .restart local v8    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v9    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v10    # "sharedUidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v11    # "states":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    .restart local v12    # "count":I
    .restart local v13    # "i":I
    .restart local v14    # "srcState":Lcom/android/server/pm/permission/PermissionState;
    .restart local v15    # "destState":Lcom/android/server/pm/permission/PermissionState;
    :cond_2
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v6

    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 4954
    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v3

    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v4

    .line 4953
    invoke-virtual {v10, v0, v3, v4}, Lcom/android/server/pm/permission/UidPermissionState;->putPermissionState(Lcom/android/server/pm/permission/Permission;ZI)V

    .line 4941
    .end local v14    # "srcState":Lcom/android/server/pm/permission/PermissionState;
    .end local v15    # "destState":Lcom/android/server/pm/permission/PermissionState;
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move/from16 v6, v19

    goto :goto_1

    .end local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_3
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v6

    .line 4960
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v11    # "states":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    .end local v12    # "count":I
    .end local v13    # "i":I
    .restart local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_3
    invoke-virtual {v8, v2}, Lcom/android/server/pm/permission/UserPermissionState;->removeUidState(I)V

    .line 4924
    .end local v7    # "userId":I
    .end local v8    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v9    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v10    # "sharedUidState":Lcom/android/server/pm/permission/UidPermissionState;
    :goto_4
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move/from16 v6, v19

    goto/16 :goto_0

    .line 4962
    .end local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_4
    move-object/from16 v17, v3

    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    move-object/from16 v10, p1

    goto :goto_8

    :goto_5
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 4972
    .end local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_5
    move-object/from16 v17, v3

    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4973
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getPackagesForAppId(I)Ljava/util/List;

    move-result-object v3

    .line 4975
    .local v3, "origSharedUserPackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    iget-object v5, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    .line 4976
    :try_start_5
    invoke-direct {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v0

    array-length v6, v0

    :goto_6
    if-ge v4, v6, :cond_9

    aget v7, v0, v4

    .line 4978
    .restart local v7    # "userId":I
    iget-object v8, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v8

    .line 4979
    .restart local v8    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    if-nez v8, :cond_6

    .line 4980
    move-object/from16 v10, p1

    goto :goto_7

    .line 4982
    :cond_6
    invoke-virtual {v8, v2}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v9

    .line 4983
    .local v9, "prevUidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v9, :cond_7

    .line 4984
    move-object/from16 v10, p1

    goto :goto_7

    .line 4988
    :cond_7
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v10

    invoke-virtual {v8, v10, v9}, Lcom/android/server/pm/permission/UserPermissionState;->createUidStateWithExisting(ILcom/android/server/pm/permission/UidPermissionState;)Lcom/android/server/pm/permission/UidPermissionState;

    .line 4992
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 4993
    nop

    .line 4994
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 4993
    invoke-direct {v1, v2, v10, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removeUidStateAndResetPackageInstallPermissionsFixed(ILjava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v10, p1

    goto :goto_7

    .line 5000
    .end local v7    # "userId":I
    .end local v8    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v9    # "prevUidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_3
    move-exception v0

    move-object/from16 v10, p1

    goto :goto_9

    .line 4996
    .restart local v7    # "userId":I
    .restart local v8    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v9    # "prevUidState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_8
    move-object/from16 v10, p1

    :try_start_6
    invoke-direct {v1, v10, v2, v3, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeSharedUserPermissionsForLeavingPackageInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;I)V

    .line 4976
    .end local v7    # "userId":I
    .end local v8    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v9    # "prevUidState":Lcom/android/server/pm/permission/UidPermissionState;
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 5000
    :catchall_4
    move-exception v0

    goto :goto_9

    :cond_9
    move-object/from16 v10, p1

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 5002
    .end local v3    # "origSharedUserPackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    :goto_8
    return-void

    .line 5000
    .restart local v3    # "origSharedUserPackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    :goto_9
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method private static hasPermission(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 4
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "permName"    # Ljava/lang/String;

    .line 4426
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4427
    return v1

    .line 4430
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4431
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4432
    return v2

    .line 4430
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 4435
    .end local v0    # "i":I
    return v1
.end method

.method private inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 7
    .param p2, "newPerm"    # Ljava/lang/String;
    .param p3, "ps"    # Lcom/android/server/pm/permission/UidPermissionState;
    .param p4, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ")V"
        }
    .end annotation

    .line 3085
    .local p1, "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3086
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3087
    .local v1, "isGranted":Z
    const/4 v2, 0x0

    .line 3089
    .local v2, "flags":I
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 3090
    .local v3, "numSourcePerm":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 3091
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3092
    .local v5, "sourcePerm":Ljava/lang/String;
    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3093
    if-nez v1, :cond_0

    .line 3094
    const/4 v2, 0x0

    .line 3097
    :cond_0
    const/4 v1, 0x1

    .line 3098
    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v2, v6

    goto :goto_1

    .line 3100
    :cond_1
    if-nez v1, :cond_2

    .line 3101
    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v2, v6

    .line 3090
    .end local v5    # "sourcePerm":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 3106
    .end local v4    # "i":I
    if-eqz v1, :cond_4

    .line 3112
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 3116
    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    invoke-virtual {p3, v4, v2, v2}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 3117
    return-void
.end method

.method private static isCompatPlatformPermissionForPackage(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 6
    .param p0, "perm"    # Ljava/lang/String;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3254
    const/4 v0, 0x0

    .line 3255
    .local v0, "allowed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v2, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    array-length v2, v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3256
    sget-object v3, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    aget-object v3, v3, v1

    .line 3257
    .local v3, "info":Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;
    invoke-virtual {v3}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3258
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 3259
    const/4 v0, 0x1

    .line 3260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auto-granting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to old pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3261
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3260
    const-string v5, "PermissionManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    goto :goto_1

    .line 3255
    .end local v3    # "info":Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3265
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    :goto_1
    return v0
.end method

.method private isEffectivelyGranted(Lcom/android/server/pm/permission/PermissionState;)Z
    .locals 5
    .param p1, "state"    # Lcom/android/server/pm/permission/PermissionState;

    .line 4751
    invoke-virtual {p1}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v0

    .line 4752
    .local v0, "flags":I
    const v1, 0x10048

    .line 4756
    .local v1, "denyMask":I
    and-int/lit8 v2, v0, 0x10

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 4757
    return v3

    .line 4758
    :cond_0
    and-int/lit8 v2, v0, 0x4

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 4759
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    return v3

    .line 4760
    :cond_2
    const v2, 0x10048

    and-int/2addr v2, v0

    if-eqz v2, :cond_3

    .line 4761
    return v4

    .line 4763
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v2

    return v2
.end method

.method private isPermissionDeclaredByDisabledSystemPkg(Lcom/android/server/pm/permission/Permission;)Z
    .locals 7
    .param p1, "permission"    # Lcom/android/server/pm/permission/Permission;

    .line 4156
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4157
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4156
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 4158
    .local v0, "disabledSourcePs":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4159
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4160
    .local v1, "permissionName":Ljava/lang/String;
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPermissions()Ljava/util/List;

    move-result-object v2

    .line 4161
    .local v2, "sourcePerms":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedPermission;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 4162
    .local v4, "sourcePerm":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4163
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getProtectionLevel()I

    move-result v5

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 4164
    const/4 v3, 0x1

    return v3

    .line 4166
    .end local v4    # "sourcePerm":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    :cond_0
    goto :goto_0

    .line 4168
    .end local v1    # "permissionName":Ljava/lang/String;
    .end local v2    # "sourcePerms":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedPermission;>;"
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "targetSdk"    # I

    .line 1885
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object v0

    .line 1886
    .local v0, "splitPerms":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1887
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    .line 1888
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 1889
    .local v4, "splitPerm":Landroid/permission/PermissionManager$SplitPermissionInfo;
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v5

    if-ge p2, v5, :cond_1

    .line 1890
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1891
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    .line 1892
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 1893
    invoke-virtual {v4}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    .line 1894
    .local v6, "perm":Lcom/android/server/pm/permission/Permission;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    .line 1895
    .end local v6    # "perm":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 1894
    .restart local v6    # "perm":Lcom/android/server/pm/permission/Permission;
    :cond_0
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v3

    .line 1895
    .end local v6    # "perm":Lcom/android/server/pm/permission/Permission;
    :goto_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v3

    .line 1887
    .end local v4    # "splitPerm":Landroid/permission/PermissionManager$SplitPermissionInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1898
    .end local v2    # "i":I
    return v3
.end method

.method private isPermissionsReviewRequiredInternal(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3588
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 3589
    .local v0, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3590
    return v1

    .line 3594
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 3595
    return v1

    .line 3599
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 3600
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v3

    .line 3601
    .local v3, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v3, :cond_2

    .line 3602
    const-string v4, "PermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing permissions state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3604
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    .line 3607
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 3606
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionsReviewRequired()Z

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v1

    .line 3607
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method private static isProfileOwner(I)Z
    .locals 3
    .param p0, "uid"    # I

    .line 3577
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3578
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3580
    .local v0, "dpmInternal":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3581
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 3583
    :cond_2
    return v1
.end method

.method private static killUid(IILjava/lang/String;)V
    .locals 4
    .param p0, "appId"    # I
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 490
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 492
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    .local v2, "am":Landroid/app/IActivityManager;
    if-eqz v2, :cond_0

    .line 495
    :try_start_1
    invoke-interface {v2, p0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    goto :goto_0

    .line 501
    .end local v2    # "am":Landroid/app/IActivityManager;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 496
    .restart local v2    # "am":Landroid/app/IActivityManager;
    :catch_0
    move-exception v3

    .line 501
    .end local v2    # "am":Landroid/app/IActivityManager;
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 502
    nop

    .line 503
    return-void

    .line 501
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 502
    throw v2
.end method

.method private synthetic lambda$getAllPermissionGroups$0(IILandroid/content/pm/PermissionGroupInfo;)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "it"    # Landroid/content/pm/PermissionGroupInfo;

    .line 534
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$getGrantedPermissionsInternal$8(ILcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 2485
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 2486
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2487
    return v1

    .line 2489
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isInstant()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2490
    nop

    .line 2491
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    .line 2490
    invoke-static {p1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "140256621"

    filled-new-array {v3, v2, p3}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x534e4554

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2492
    return v1

    .line 2494
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private synthetic lambda$grantRequestedPermissionsInternal$9(Ljava/lang/String;II)V
    .locals 2
    .param p1, "appOp"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .line 3674
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 3675
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 3676
    return-void
.end method

.method private synthetic lambda$onPackageAddedInternal$17(ZLcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/util/List;)V
    .locals 0
    .param p1, "hasOldPkg"    # Z
    .param p2, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p3, "oldPkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p4, "hasPermissionDefinitionChanges"    # Z
    .param p5, "permissionsWithChangedDefinition"    # Ljava/util/List;

    .line 4715
    if-eqz p1, :cond_0

    .line 4716
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionsIfGroupChangedInternal(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 4717
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeStoragePermissionsIfScopeExpandedInternal(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 4718
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeSystemAlertWindowIfUpgradedPast23(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 4720
    :cond_0
    if-eqz p4, :cond_1

    .line 4721
    invoke-direct {p0, p5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionsIfPermissionDefinitionChangedInternal(Ljava/util/List;)V

    .line 4724
    :cond_1
    return-void
.end method

.method private synthetic lambda$onSystemReady$14(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 4394
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$queryPermissionsByGroup$1(IILandroid/content/pm/PermissionInfo;)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "it"    # Landroid/content/pm/PermissionInfo;

    .line 639
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$readLegacyPermissionStateTEMP$15([ILcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 9
    .param p1, "userIds"    # [I
    .param p2, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4493
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    .line 4495
    .local v0, "appId":I
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4496
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result v1

    .line 4497
    .local v1, "sharedUserId":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getSharedUserApi(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v2

    .line 4498
    .local v2, "sharedUserApi":Lcom/android/server/pm/pkg/SharedUserApi;
    if-nez v2, :cond_0

    .line 4499
    const-string v3, "PermissionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing shared user Api for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4500
    return-void

    .line 4502
    :cond_0
    invoke-interface {v2}, Lcom/android/server/pm/pkg/SharedUserApi;->getSharedUserLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v1

    .line 4503
    .end local v2    # "sharedUserApi":Lcom/android/server/pm/pkg/SharedUserApi;
    .local v1, "legacyState":Lcom/android/server/pm/permission/LegacyPermissionState;
    goto :goto_0

    .line 4504
    .end local v1    # "legacyState":Lcom/android/server/pm/permission/LegacyPermissionState;
    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v1

    .line 4506
    .restart local v1    # "legacyState":Lcom/android/server/pm/permission/LegacyPermissionState;
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 4507
    :try_start_0
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget v5, p1, v4

    .line 4508
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v6

    .line 4510
    .local v6, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 4511
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isInstallPermissionsFixed()Z

    move-result v8

    .line 4510
    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 4512
    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v7

    .line 4513
    .local v7, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    invoke-virtual {v7}, Lcom/android/server/pm/permission/UidPermissionState;->reset()V

    .line 4514
    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/LegacyPermissionState;->isMissing(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/UidPermissionState;->setMissing(Z)V

    .line 4515
    nop

    .line 4516
    invoke-virtual {v1, v5}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v8

    .line 4515
    invoke-direct {p0, v7, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->readLegacyPermissionStatesLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;)V

    .line 4507
    .end local v5    # "userId":I
    .end local v6    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v7    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4518
    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4519
    return-void

    .line 4518
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v3
.end method

.method private synthetic lambda$resetRuntimePermissionsInternal$3(IZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "restorePregrantedPermissions"    # Z
    .param p3, "delayingPermCallback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    .param p4, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1750
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;IZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method private static synthetic lambda$resetRuntimePermissionsInternal$4(II)V
    .locals 2
    .param p0, "revocationUID"    # I
    .param p1, "revocationUserId"    # I

    .line 1770
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const-string/jumbo v1, "permissions revoked"

    invoke-static {v0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$restoreDelayedRuntimePermissions$5(ILjava/lang/Boolean;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "hasMoreBackup"    # Ljava/lang/Boolean;

    .line 2068
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2069
    return-void

    .line 2071
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 2072
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2073
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2074
    return-void

    .line 2073
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method private synthetic lambda$revokeRuntimePermissionsIfGroupChangedInternal$6([ILjava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 15
    .param p1, "userIds"    # [I
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "newPackage"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p4, "oldPermissionGroupName"    # Ljava/lang/String;
    .param p5, "newPermissionGroupName"    # Ljava/lang/String;
    .param p6, "callingUid"    # I
    .param p7, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2219
    move-object/from16 v1, p1

    move-object/from16 v4, p2

    invoke-interface/range {p7 .. p7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2220
    .local v3, "packageName":Ljava/lang/String;
    array-length v10, v1

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-ge v11, v10, :cond_1

    aget v7, v1, v11

    .line 2221
    .local v7, "userId":I
    nop

    .line 2222
    invoke-direct {p0, v3, v4, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    .line 2223
    .local v12, "permissionState":I
    if-nez v12, :cond_0

    .line 2224
    nop

    .line 2225
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Revoking permission "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " as the group changed from "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p4

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p5

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "72710897"

    filled-new-array {v5, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 2224
    const v2, 0x534e4554

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2232
    :try_start_0
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move/from16 v6, p6

    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2238
    goto :goto_1

    .line 2235
    :catch_0
    move-exception v0

    .line 2236
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not revoke "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "PermissionManager"

    invoke-static {v5, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2223
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 2220
    .end local v7    # "userId":I
    .end local v12    # "permissionState":I
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2241
    :cond_1
    move-object/from16 v13, p4

    move-object/from16 v14, p5

    return-void
.end method

.method private synthetic lambda$revokeRuntimePermissionsIfPermissionDefinitionChangedInternal$7([ILjava/lang/String;ZILcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 18
    .param p1, "userIds"    # [I
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "isInternalPermission"    # Z
    .param p4, "callingUid"    # I
    .param p5, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2270
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v3, p2

    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2271
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v10

    .line 2272
    .local v10, "appId":I
    const/16 v0, 0x2710

    if-ge v10, v0, :cond_0

    .line 2274
    return-void

    .line 2276
    :cond_0
    array-length v11, v9

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v11, :cond_3

    aget v6, v9, v12

    .line 2277
    .local v6, "userId":I
    invoke-direct {v1, v2, v3, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    .line 2279
    .local v13, "permissionState":I
    const-string v0, "default:0"

    invoke-virtual {v1, v2, v3, v0, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    .line 2281
    .local v14, "flags":I
    const v15, 0x8034

    .line 2285
    .local v15, "flagMask":I
    if-nez v13, :cond_2

    const v0, 0x8034

    and-int/2addr v0, v14

    if-nez v0, :cond_2

    .line 2287
    invoke-static {v6, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v16

    .line 2288
    .local v16, "uid":I
    const-string v4, " due to definition change"

    const-string v5, " from package "

    const-string v7, "Revoking permission "

    if-eqz p3, :cond_1

    .line 2289
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v17, v6

    .end local v6    # "userId":I
    .local v17, "userId":I
    const-string v6, "195338390"

    filled-new-array {v6, v8, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v6, 0x534e4554

    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_1

    .line 2293
    .end local v17    # "userId":I
    .restart local v6    # "userId":I
    :cond_1
    move/from16 v17, v6

    .end local v6    # "userId":I
    .restart local v17    # "userId":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "154505240"

    filled-new-array {v8, v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const v6, 0x534e4554

    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2296
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "168319670"

    filled-new-array {v8, v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const v6, 0x534e4554

    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2300
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "PermissionManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    :try_start_0
    iget-object v8, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v4

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v9, v5

    move/from16 v6, v17

    move/from16 v5, p4

    .end local v17    # "userId":I
    .restart local v6    # "userId":I
    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2308
    .end local v6    # "userId":I
    .restart local v17    # "userId":I
    goto :goto_3

    .line 2305
    .end local v17    # "userId":I
    .restart local v6    # "userId":I
    :catch_0
    move-exception v0

    move/from16 v17, v6

    .end local v6    # "userId":I
    .restart local v17    # "userId":I
    goto :goto_2

    :catch_1
    move-exception v0

    move-object v9, v4

    .line 2306
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not revoke "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2285
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "uid":I
    .end local v17    # "userId":I
    .restart local v6    # "userId":I
    :cond_2
    move/from16 v17, v6

    .line 2276
    .end local v6    # "userId":I
    .end local v13    # "permissionState":I
    .end local v14    # "flags":I
    .end local v15    # "flagMask":I
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    goto/16 :goto_0

    .line 2311
    :cond_3
    return-void
.end method

.method private static synthetic lambda$revokeSharedUserPermissionsForLeavingPackageInternal$10(I)V
    .locals 2
    .param p0, "appId"    # I

    .line 3886
    const/4 v0, -0x1

    const-string/jumbo v1, "permission grant or revoke changed gids"

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    .line 3887
    return-void
.end method

.method private synthetic lambda$updatePermissionFlagsForAllApps$2(I[ZIILcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "changed"    # [Z
    .param p3, "effectiveFlagMask"    # I
    .param p4, "effectiveFlagValues"    # I
    .param p5, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 911
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 912
    :try_start_0
    invoke-direct {p0, p5, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v1

    .line 913
    .local v1, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v1, :cond_0

    .line 914
    const-string v2, "PermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing permissions state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    invoke-interface {p5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 914
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 921
    .end local v1    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 919
    .restart local v1    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    aget-boolean v3, p2, v2

    invoke-virtual {v1, p3, p4}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlagsForAllPermissions(II)Z

    move-result v4

    or-int/2addr v3, v4

    aput-boolean v3, p2, v2

    .line 921
    .end local v1    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 922
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-interface {p5}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 923
    return-void

    .line 921
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method private synthetic lambda$updatePermissionSourcePackage$12(Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 6
    .param p1, "bp"    # Lcom/android/server/pm/permission/Permission;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    .param p4, "p"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4112
    invoke-interface {p4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4113
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4112
    const/4 v3, 0x1

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    .end local p2    # "userId":I
    .end local p3    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    .local v4, "userId":I
    .local v5, "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    return-void
.end method

.method private synthetic lambda$updatePermissionSourcePackage$13(Lcom/android/server/pm/permission/Permission;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 9
    .param p1, "bp"    # Lcom/android/server/pm/permission/Permission;
    .param p2, "p"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4117
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 4118
    .local v0, "userIds":[I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 4119
    :try_start_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 4120
    .local v4, "userId":I
    invoke-direct {p0, p2, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v5

    .line 4122
    .local v5, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v5, :cond_0

    .line 4123
    const-string v6, "PermissionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing permissions state for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4124
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " and user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4123
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4125
    goto :goto_1

    .line 4129
    .end local v4    # "userId":I
    .end local v5    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 4127
    .restart local v4    # "userId":I
    .restart local v5    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    .line 4119
    .end local v4    # "userId":I
    .end local v5    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4129
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4130
    return-void

    .line 4129
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v2
.end method

.method private synthetic lambda$updatePermissions$11(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 8
    .param p1, "changingPkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "replaceAll"    # Z
    .param p3, "replaceVolumeUuid"    # Ljava/lang/String;
    .param p4, "changingPkgName"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    .param p6, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4038
    if-ne p6, p1, :cond_0

    .line 4039
    return-void

    .line 4042
    :cond_0
    invoke-static {p6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getVolumeUuidForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    .line 4043
    .local v0, "volumeUuid":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v4, v1

    .line 4044
    .local v4, "replace":Z
    const/4 v7, -0x1

    move-object v2, p0

    move-object v5, p4

    move-object v6, p5

    move-object v3, p6

    .end local p4    # "changingPkgName":Ljava/lang/String;
    .end local p5    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    .end local p6    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v3, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v5, "changingPkgName":Ljava/lang/String;
    .local v6, "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->restorePermissionState(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V

    .line 4046
    return-void
.end method

.method private synthetic lambda$writeLegacyPermissionStateTEMP$16([ILcom/android/server/pm/PackageSetting;)V
    .locals 18
    .param p1, "userIds"    # [I
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 4544
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)Lcom/android/server/pm/PackageSetting;

    .line 4546
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4547
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getSharedUserAppId()I

    move-result v4

    .line 4548
    .local v4, "sharedUserId":I
    iget-object v5, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManagerInternal;->getSharedUserApi(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v5

    .line 4549
    .local v5, "sharedUserApi":Lcom/android/server/pm/pkg/SharedUserApi;
    if-nez v5, :cond_0

    .line 4550
    const-string v0, "PermissionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing shared user Api for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4551
    return-void

    .line 4553
    :cond_0
    invoke-interface {v5}, Lcom/android/server/pm/pkg/SharedUserApi;->getSharedUserLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v4

    .line 4554
    .end local v5    # "sharedUserApi":Lcom/android/server/pm/pkg/SharedUserApi;
    .local v4, "legacyState":Lcom/android/server/pm/permission/LegacyPermissionState;
    goto :goto_0

    .line 4555
    .end local v4    # "legacyState":Lcom/android/server/pm/permission/LegacyPermissionState;
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v4

    .line 4557
    .restart local v4    # "legacyState":Lcom/android/server/pm/permission/LegacyPermissionState;
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/pm/permission/LegacyPermissionState;->reset()V

    .line 4558
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v5

    .line 4560
    .local v5, "appId":I
    iget-object v6, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6

    .line 4561
    :try_start_0
    array-length v7, v2

    :goto_1
    if-ge v0, v7, :cond_6

    aget v8, v2, v0

    .line 4562
    .local v8, "userId":I
    iget-object v9, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v9

    .line 4563
    .local v9, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    if-nez v9, :cond_2

    .line 4564
    const-string v10, "PermissionManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing user state for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4565
    move/from16 v16, v0

    goto/16 :goto_3

    .line 4592
    .end local v8    # "userId":I
    .end local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 4568
    .restart local v8    # "userId":I
    .restart local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/pm/permission/UserPermissionState;->areInstallPermissionsFixed(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4569
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)Lcom/android/server/pm/PackageSetting;

    .line 4572
    :cond_3
    invoke-virtual {v9, v5}, Lcom/android/server/pm/permission/UserPermissionState;->getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v10

    .line 4573
    .local v10, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v10, :cond_4

    .line 4574
    const-string v11, "PermissionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Missing permission state for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " and user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4576
    move/from16 v16, v0

    goto :goto_3

    .line 4579
    :cond_4
    invoke-virtual {v10}, Lcom/android/server/pm/permission/UidPermissionState;->isMissing()Z

    move-result v11

    invoke-virtual {v4, v11, v8}, Lcom/android/server/pm/permission/LegacyPermissionState;->setMissing(ZI)V

    .line 4580
    invoke-virtual {v10}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v11

    .line 4581
    .local v11, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 4582
    .local v12, "permissionStatesSize":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v12, :cond_5

    .line 4583
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/permission/PermissionState;

    .line 4585
    .local v14, "permissionState":Lcom/android/server/pm/permission/PermissionState;
    new-instance v15, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 4586
    move/from16 v16, v0

    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4587
    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v1

    .line 4588
    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v2

    invoke-virtual {v14}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v3

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    .line 4589
    .local v15, "legacyPermissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    invoke-virtual {v4, v15, v8}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    .line 4582
    .end local v14    # "permissionState":Lcom/android/server/pm/permission/PermissionState;
    .end local v15    # "legacyPermissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v0, v16

    goto :goto_2

    :cond_5
    move/from16 v16, v0

    .line 4561
    .end local v8    # "userId":I
    .end local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v10    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v11    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    .end local v12    # "permissionStatesSize":I
    .end local v13    # "i":I
    :goto_3
    add-int/lit8 v0, v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    goto/16 :goto_1

    .line 4592
    :cond_6
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4593
    return-void

    .line 4592
    :goto_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method private logPermission(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 4446
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 4447
    .local v0, "log":Landroid/metrics/LogMaker;
    invoke-virtual {v0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 4448
    const/16 v1, 0x4d9

    invoke-virtual {v0, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 4450
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 4451
    return-void
.end method

.method private mayManageRolePermission(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 1668
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1669
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1670
    .local v1, "packageNames":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1671
    const/4 v2, 0x0

    return v2

    .line 1673
    :cond_0
    nop

    .line 1674
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1675
    .local v2, "permissionControllerPackageName":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private mergePermissionState(ILcom/android/server/pm/permission/PermissionState;Lcom/android/server/pm/permission/PermissionState;)Landroid/util/Pair;
    .locals 17
    .param p1, "appId"    # I
    .param p2, "srcState"    # Lcom/android/server/pm/permission/PermissionState;
    .param p3, "destState"    # Lcom/android/server/pm/permission/PermissionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/pm/permission/PermissionState;",
            "Lcom/android/server/pm/permission/PermissionState;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4777
    move-object/from16 v0, p0

    const v1, 0x80003

    .line 4781
    .local v1, "userSettableMask":I
    const v2, 0x8020

    .line 4784
    .local v2, "defaultGrantMask":I
    const/16 v3, 0x14

    .line 4787
    .local v3, "priorityFixedMask":I
    const v4, 0x8034

    .line 4789
    .local v4, "priorityMask":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v5

    .line 4790
    .local v5, "destFlags":I
    move-object/from16 v6, p3

    invoke-direct {v0, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isEffectivelyGranted(Lcom/android/server/pm/permission/PermissionState;)Z

    move-result v7

    .line 4792
    .local v7, "destIsGranted":Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v8

    .line 4793
    .local v8, "srcFlags":I
    move-object/from16 v9, p2

    invoke-direct {v0, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isEffectivelyGranted(Lcom/android/server/pm/permission/PermissionState;)Z

    move-result v10

    .line 4795
    .local v10, "srcIsGranted":Z
    or-int v11, v5, v8

    .line 4799
    .local v11, "combinedFlags":I
    const/4 v12, 0x0

    .line 4803
    .local v12, "newFlags":I
    const v13, 0x80003

    and-int/2addr v13, v5

    or-int/2addr v12, v13

    .line 4806
    and-int/lit16 v13, v11, 0x3800

    or-int/2addr v12, v13

    .line 4808
    and-int/lit16 v13, v12, 0x3800

    if-nez v13, :cond_0

    .line 4809
    or-int/lit16 v12, v12, 0x4000

    .line 4813
    :cond_0
    const v13, 0x8034

    and-int v14, v11, v13

    or-int/2addr v12, v14

    .line 4816
    and-int v14, v11, v13

    if-nez v14, :cond_1

    .line 4817
    and-int/lit16 v14, v11, 0x80

    or-int/2addr v12, v14

    .line 4821
    :cond_1
    and-int/lit8 v14, v12, 0x14

    if-nez v14, :cond_3

    .line 4822
    const v14, 0x88023

    and-int/2addr v14, v12

    nop

    if-nez v14, :cond_2

    sget-object v14, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    .line 4823
    invoke-virtual {v9}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 4826
    and-int/lit8 v13, v11, 0x40

    or-int/2addr v12, v13

    goto :goto_0

    .line 4827
    :cond_2
    and-int/2addr v13, v12

    if-nez v13, :cond_3

    .line 4829
    and-int/lit8 v13, v5, 0x40

    or-int/2addr v12, v13

    .line 4836
    :cond_3
    :goto_0
    and-int/lit8 v13, v12, 0x10

    if-eqz v13, :cond_4

    .line 4837
    const/4 v13, 0x1

    .local v13, "effectivelyGranted":Z
    goto :goto_4

    .line 4838
    .end local v13    # "effectivelyGranted":Z
    :cond_4
    and-int/lit8 v13, v5, 0x4

    if-eqz v13, :cond_5

    .line 4840
    move v13, v7

    .restart local v13    # "effectivelyGranted":Z
    goto :goto_4

    .line 4841
    .end local v13    # "effectivelyGranted":Z
    :cond_5
    and-int/lit8 v13, v8, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v13, :cond_8

    .line 4842
    if-nez v7, :cond_6

    if-eqz v10, :cond_7

    :cond_6
    goto :goto_1

    :cond_7
    move v14, v15

    :goto_1
    move v13, v14

    .line 4845
    .restart local v13    # "effectivelyGranted":Z
    if-eq v7, v10, :cond_11

    .line 4846
    and-int/lit8 v12, v12, -0x5

    goto :goto_4

    .line 4848
    .end local v13    # "effectivelyGranted":Z
    :cond_8
    const v13, 0x8020

    and-int v16, v5, v13

    if-eqz v16, :cond_9

    .line 4854
    move v13, v7

    .restart local v13    # "effectivelyGranted":Z
    goto :goto_4

    .line 4855
    .end local v13    # "effectivelyGranted":Z
    :cond_9
    and-int/2addr v13, v8

    if-eqz v13, :cond_c

    .line 4856
    if-nez v7, :cond_a

    if-eqz v10, :cond_b

    :cond_a
    goto :goto_2

    :cond_b
    move v14, v15

    :goto_2
    move v13, v14

    .restart local v13    # "effectivelyGranted":Z
    goto :goto_4

    .line 4857
    .end local v13    # "effectivelyGranted":Z
    :cond_c
    and-int/lit16 v13, v5, 0x80

    if-eqz v13, :cond_d

    .line 4860
    move v13, v7

    .restart local v13    # "effectivelyGranted":Z
    goto :goto_4

    .line 4861
    .end local v13    # "effectivelyGranted":Z
    :cond_d
    and-int/lit16 v13, v8, 0x80

    if-eqz v13, :cond_10

    .line 4862
    if-nez v7, :cond_e

    if-eqz v10, :cond_f

    :cond_e
    goto :goto_3

    :cond_f
    move v14, v15

    :goto_3
    move v13, v14

    .line 4865
    .restart local v13    # "effectivelyGranted":Z
    if-eqz v7, :cond_11

    .line 4866
    and-int/lit16 v12, v12, -0x81

    goto :goto_4

    .line 4870
    .end local v13    # "effectivelyGranted":Z
    :cond_10
    move v13, v7

    .line 4875
    .restart local v13    # "effectivelyGranted":Z
    :cond_11
    :goto_4
    if-nez v13, :cond_12

    .line 4877
    const/high16 v14, 0x20000

    and-int/2addr v14, v11

    or-int/2addr v12, v14

    .line 4880
    and-int/lit16 v12, v12, -0x81

    goto :goto_5

    .line 4883
    :cond_12
    and-int/lit8 v12, v12, -0x41

    .line 4886
    :goto_5
    if-eq v13, v7, :cond_13

    .line 4888
    const v14, -0x80004

    and-int/2addr v12, v14

    .line 4893
    :cond_13
    if-nez v13, :cond_14

    .line 4894
    invoke-virtual {v9}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4895
    move/from16 v16, v1

    move/from16 v1, p1

    .end local v1    # "userSettableMask":I
    .local v16, "userSettableMask":I
    invoke-virtual {v15, v1}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v15

    .line 4893
    invoke-direct {v0, v14, v15}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 4898
    or-int/lit8 v12, v12, 0x8

    .line 4899
    const/4 v14, 0x1

    .local v14, "newGrantState":Z
    goto :goto_6

    .line 4893
    .end local v14    # "newGrantState":Z
    .end local v16    # "userSettableMask":I
    .restart local v1    # "userSettableMask":I
    :cond_14
    move/from16 v16, v1

    move/from16 v1, p1

    .line 4903
    .end local v1    # "userSettableMask":I
    .restart local v16    # "userSettableMask":I
    :cond_15
    move v14, v13

    .line 4906
    .restart local v14    # "newGrantState":Z
    :goto_6
    new-instance v15, Landroid/util/Pair;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v15, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v15
.end method

.method private onPackageAddedInternal(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;ZLcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 9
    .param p1, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p2, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p3, "isInstantApp"    # Z
    .param p4, "oldPkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4672
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4675
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 4676
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 4677
    .local v3, "origName":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->canAdoptPermissionsInternal(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4678
    const-string v0, "PermissionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adopting permissions from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4679
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4678
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4680
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 4681
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->transferPermissions(Ljava/lang/String;Ljava/lang/String;)V

    .line 4682
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 4675
    .end local v3    # "origName":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4688
    .end local v2    # "i":I
    :cond_1
    if-eqz p3, :cond_2

    .line 4689
    const-string v0, "PermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission groups from package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ignored: instant apps cannot define new permission groups."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4692
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addAllPermissionGroupsInternal(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 4699
    :goto_2
    if-eqz p3, :cond_3

    .line 4700
    const/4 v0, 0x0

    .line 4701
    .local v0, "permissionsWithChangedDefinition":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "PermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permissions from package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ignored: instant apps cannot define new permissions."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v0

    goto :goto_3

    .line 4704
    .end local v0    # "permissionsWithChangedDefinition":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addAllPermissionsInternal(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    .line 4707
    .local v8, "permissionsWithChangedDefinition":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    if-eqz p4, :cond_4

    move v4, v1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    move v4, v0

    .line 4708
    .local v4, "hasOldPkg":Z
    :goto_4
    nop

    .line 4709
    invoke-static {v8}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    .line 4710
    .local v7, "hasPermissionDefinitionChanges":Z
    if-nez v4, :cond_5

    if-eqz v7, :cond_6

    :cond_5
    goto :goto_5

    :cond_6
    move-object v5, p2

    move-object v6, p4

    goto :goto_6

    .line 4714
    :goto_5
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;

    move-object v3, p0

    move-object v5, p2

    move-object v6, p4

    .end local p2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p4    # "oldPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v5, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v6, "oldPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ZLcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/util/List;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 4726
    :goto_6
    return-void
.end method

.method private onPackageInstalledInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;[I)V
    .locals 5
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "previousAppId"    # I
    .param p3, "params"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;
    .param p4, "userIds"    # [I

    .line 5007
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 5008
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->handleAppIdMigration(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 5010
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 5011
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p4, v1

    .line 5012
    .local v2, "userId":I
    nop

    .line 5013
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getAllowlistedRestrictedPermissions()Ljava/util/List;

    move-result-object v3

    .line 5012
    const/4 v4, 0x2

    invoke-direct {p0, p1, v3, v4, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;II)V

    .line 5015
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getPermissionStates()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRequestedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArrayMap;I)V

    .line 5011
    .end local v2    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5017
    :cond_1
    return-void
.end method

.method private onPackageRemovedInternal(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5034
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removeAllPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 5035
    return-void
.end method

.method private onPackageUninstalledInternal(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;[I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p4, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p6, "userIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/pm/pkg/PackageState;",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ">;[I)V"
        }
    .end annotation

    .line 5044
    .local p5, "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5048
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5052
    array-length v0, p6

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p6, v1

    .line 5053
    .local v2, "userId":I
    const/4 v3, 0x1

    invoke-direct {p0, p4, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;IZ)V

    .line 5052
    .end local v2    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5055
    :cond_0
    return-void

    .line 5057
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 5058
    array-length v0, p6

    :goto_1
    if-ge v1, v0, :cond_3

    aget v2, p6, v1

    .line 5059
    .restart local v2    # "userId":I
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5060
    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removeUidStateAndResetPackageInstallPermissionsFixed(ILjava/lang/String;I)V

    goto :goto_2

    .line 5067
    :cond_2
    invoke-direct {p0, p4, p2, p5, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeSharedUserPermissionsForLeavingPackageInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;I)V

    .line 5058
    .end local v2    # "userId":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5071
    :cond_3
    return-void
.end method

.method private readLegacyPermissionStatesLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/util/Collection;)V
    .locals 6
    .param p1, "uidState"    # Lcom/android/server/pm/permission/UidPermissionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .line 4525
    .local p2, "permissionStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 4526
    .local v1, "permissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    invoke-virtual {v1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4527
    .local v2, "permissionName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    .line 4528
    .local v3, "permission":Lcom/android/server/pm/permission/Permission;
    if-nez v3, :cond_0

    .line 4529
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PermissionManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4530
    goto :goto_0

    .line 4532
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v4

    .line 4533
    invoke-virtual {v1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getFlags()I

    move-result v5

    .line 4532
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/pm/permission/UidPermissionState;->putPermissionState(Lcom/android/server/pm/permission/Permission;ZI)V

    .line 4534
    .end local v1    # "permissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    .end local v2    # "permissionName":Ljava/lang/String;
    .end local v3    # "permission":Lcom/android/server/pm/permission/Permission;
    goto :goto_0

    .line 4535
    :cond_1
    return-void
.end method

.method private removeAllPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 9
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2411
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 2412
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 2413
    .local v1, "n":I
    const/4 v2, 0x0

    .line 2414
    .local v2, "r":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 2415
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 2416
    .local v4, "p":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    .line 2417
    .local v5, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v5, :cond_0

    .line 2418
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTree(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v6

    move-object v5, v6

    goto :goto_1

    .line 2451
    .end local v1    # "n":I
    .end local v2    # "r":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v4    # "p":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    .end local v5    # "bp":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 2420
    .restart local v1    # "n":I
    .restart local v2    # "r":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v4    # "p":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    .restart local v5    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/Permission;->isPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2421
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/Permission;->setPermissionInfo(Landroid/content/pm/PermissionInfo;)V

    .line 2431
    :cond_1
    invoke-static {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->isAppOp(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2433
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->removeAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    .end local v4    # "p":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    .end local v5    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 2436
    .end local v3    # "i":I
    nop

    .line 2440
    const/4 v2, 0x0

    .line 2441
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2442
    .local v4, "permissionName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    .line 2443
    .local v5, "permission":Lcom/android/server/pm/permission/Permission;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isAppOp()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2444
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 2445
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2444
    invoke-virtual {v6, v4, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->removeAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    .end local v4    # "permissionName":Ljava/lang/String;
    .end local v5    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_4
    goto :goto_2

    .line 2448
    :cond_5
    nop

    .line 2451
    .end local v1    # "n":I
    .end local v2    # "r":Ljava/lang/StringBuilder;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2452
    return-void

    .line 2451
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method private removeUidStateAndResetPackageInstallPermissionsFixed(ILjava/lang/String;I)V
    .locals 3
    .param p1, "appId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 4479
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 4480
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v1, p3}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v1

    .line 4481
    .local v1, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    if-nez v1, :cond_0

    .line 4482
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 4486
    .end local v1    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 4484
    .restart local v1    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/UserPermissionState;->removeUidState(I)V

    .line 4485
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 4486
    .end local v1    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4487
    return-void

    .line 4486
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method private resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;IZ)V
    .locals 16
    .param p1, "filterPkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .param p3, "restorePregrantedPermissions"    # Z

    .line 1688
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    const/4 v9, 0x1

    new-array v5, v9, [Z

    .line 1689
    .local v5, "permissionRemoved":[Z
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1690
    .local v2, "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1691
    .local v3, "syncUpdatedUsers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 1693
    .local v4, "asyncUpdatedUsers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;[Z)V

    .line 1745
    .local v0, "delayingPermCallback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    if-eqz v6, :cond_0

    .line 1746
    invoke-direct {v1, v6, v7, v8, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;IZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    goto :goto_0

    .line 1749
    :cond_0
    iget-object v10, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v11, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {v11, v1, v7, v8, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 1755
    :goto_0
    const/4 v10, 0x0

    aget-boolean v11, v5, v10

    if-eqz v11, :cond_1

    .line 1756
    iget-object v11, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    invoke-virtual {v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRemoved()V

    .line 1761
    :cond_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 1762
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v11

    .line 1763
    .local v11, "numRevokedPermissions":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v11, :cond_2

    .line 1764
    invoke-virtual {v2, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v13

    .line 1765
    .local v13, "revocationUID":I
    invoke-virtual {v2, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v14

    .line 1767
    .local v14, "revocationUserId":I
    iget-object v15, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-virtual {v15, v13}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 1770
    iget-object v15, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda11;

    invoke-direct {v9, v13, v14}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda11;-><init>(II)V

    invoke-virtual {v15, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1763
    .end local v13    # "revocationUID":I
    .end local v14    # "revocationUserId":I
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x1

    goto :goto_1

    .line 1775
    .end local v11    # "numRevokedPermissions":I
    .end local v12    # "i":I
    :cond_2
    iget-object v9, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Landroid/util/ArraySet;)[I

    move-result-object v11

    invoke-virtual {v9, v11, v10}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 1777
    iget-object v9, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Landroid/util/ArraySet;)[I

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 1779
    return-void
.end method

.method private resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;IZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 17
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .param p3, "restorePregrantedPermissions"    # Z
    .param p4, "delayingPermCallback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 1785
    move-object/from16 v1, p0

    move/from16 v6, p2

    const v10, 0x9004b

    .line 1792
    .local v10, "userSettableMask":I
    const/16 v11, 0x14

    .line 1795
    .local v11, "policyOrSystemFlags":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1796
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1797
    .local v3, "permName":Ljava/lang/String;
    iget-boolean v4, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mIsLeanback:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1799
    goto :goto_0

    .line 1802
    :cond_0
    iget-object v4, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 1803
    :try_start_0
    iget-object v5, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    .line 1804
    .local v5, "permission":Lcom/android/server/pm/permission/Permission;
    if-nez v5, :cond_1

    .line 1805
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_0

    .line 1812
    .end local v5    # "permission":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 1808
    .restart local v5    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isRemoved()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1809
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_0

    .line 1811
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v7

    move v12, v7

    .line 1812
    .end local v5    # "permission":Lcom/android/server/pm/permission/Permission;
    .local v12, "isRuntimePermission":Z
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1815
    iget-object v4, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1816
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1815
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 1817
    .local v13, "pkgNames":[Ljava/lang/String;
    array-length v4, v13

    const/4 v5, 0x0

    if-lez v4, :cond_5

    .line 1818
    const/4 v4, 0x0

    .line 1819
    .local v4, "used":Z
    array-length v7, v13

    move v8, v5

    :goto_1
    nop

    if-ge v8, v7, :cond_4

    aget-object v9, v13, v8

    .line 1820
    .local v9, "sharedPkgName":Ljava/lang/String;
    iget-object v14, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1821
    invoke-virtual {v14, v9}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v14

    .line 1822
    .local v14, "sharedPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v14, :cond_3

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1823
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1824
    const/4 v4, 0x1

    .line 1825
    goto :goto_2

    .line 1819
    .end local v9    # "sharedPkgName":Ljava/lang/String;
    .end local v14    # "sharedPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1828
    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    .line 1829
    goto :goto_0

    .line 1833
    .end local v4    # "used":Z
    :cond_5
    nop

    .line 1834
    const/16 v4, 0x3e8

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v14

    .line 1839
    .local v14, "oldFlags":I
    iget-object v4, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v2, v7, v8, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v15

    .line 1840
    .local v15, "uid":I
    iget-object v4, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, v15}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v4

    .line 1841
    .local v4, "targetSdk":I
    const/16 v7, 0x17

    if-ge v4, v7, :cond_6

    if-eqz v12, :cond_6

    .line 1842
    const/16 v5, 0x48

    goto :goto_3

    .line 1843
    :cond_6
    nop

    :goto_3
    nop

    .line 1845
    .local v5, "flags":I
    const/16 v6, 0x3e8

    const/4 v8, 0x0

    move v7, v4

    .end local v4    # "targetSdk":I
    .local v7, "targetSdk":I
    const v4, 0x9004b

    move-object/from16 v9, p4

    move-object/from16 v16, v0

    move v0, v7

    move/from16 v7, p2

    .end local v7    # "targetSdk":I
    .local v0, "targetSdk":I
    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 1850
    move v9, v5

    .end local v5    # "flags":I
    .local v9, "flags":I
    if-nez v12, :cond_7

    .line 1851
    move/from16 v6, p2

    move-object/from16 v0, v16

    goto/16 :goto_0

    .line 1855
    :cond_7
    and-int/lit8 v4, v14, 0x14

    if-eqz v4, :cond_8

    .line 1856
    move/from16 v6, p2

    move-object/from16 v0, v16

    goto/16 :goto_0

    .line 1860
    :cond_8
    and-int/lit8 v4, v14, 0x20

    if-nez v4, :cond_9

    const v4, 0x8000

    and-int/2addr v4, v14

    if-eqz v4, :cond_a

    :cond_9
    goto :goto_4

    .line 1871
    :cond_a
    and-int/lit8 v4, v9, 0x40

    if-nez v4, :cond_b

    .line 1872
    invoke-direct {v1, v3, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1874
    const/16 v5, 0x3e8

    const/4 v7, 0x0

    const/4 v4, 0x0

    move/from16 v6, p2

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    goto :goto_5

    .line 1862
    :goto_4
    if-eqz p3, :cond_b

    .line 1864
    const/4 v4, 0x0

    const/16 v5, 0x3e8

    move-object/from16 v1, p0

    move/from16 v6, p2

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 1877
    .end local v0    # "targetSdk":I
    .end local v3    # "permName":Ljava/lang/String;
    .end local v9    # "flags":I
    .end local v12    # "isRuntimePermission":Z
    .end local v13    # "pkgNames":[Ljava/lang/String;
    .end local v14    # "oldFlags":I
    .end local v15    # "uid":I
    :cond_b
    :goto_5
    move-object/from16 v1, p0

    move/from16 v6, p2

    move-object/from16 v0, v16

    goto/16 :goto_0

    .line 1812
    .restart local v3    # "permName":Ljava/lang/String;
    :goto_6
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 1878
    .end local v3    # "permName":Ljava/lang/String;
    :cond_c
    return-void
.end method

.method private restorePermissionState(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V
    .locals 43
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "replace"    # Z
    .param p3, "changingPackageName"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    .param p5, "filterUserId"    # I

    .line 2542
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p3

    move/from16 v12, p5

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2543
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    .line 2544
    .local v13, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v13, :cond_0

    .line 2545
    return-void

    .line 2548
    :cond_0
    const/4 v0, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-ne v12, v0, :cond_1

    invoke-direct {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v0

    goto :goto_0

    .line 2549
    :cond_1
    new-array v0, v14, [I

    aput v12, v0, v15

    :goto_0
    move-object v2, v0

    .line 2551
    .local v2, "userIds":[I
    const/4 v3, 0x0

    .line 2552
    .local v3, "installPermissionsChanged":Z
    const/4 v4, 0x0

    .line 2553
    .local v4, "runtimePermissionsRevoked":Z
    sget-object v5, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    .line 2555
    .local v5, "updatedUserIds":[I
    const/4 v0, 0x0

    .line 2556
    .local v0, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 2557
    .local v6, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 2558
    .local v7, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v17, v16

    .line 2559
    .local v17, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v16

    .line 2560
    .local v16, "requestedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object v15, v7

    move-object v7, v6

    move-object v6, v0

    .end local v0    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v6, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v7, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v15, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v14, v19

    check-cast v14, Ljava/lang/String;

    .line 2562
    .local v14, "permissionName":Ljava/lang/String;
    move/from16 v19, v3

    .end local v3    # "installPermissionsChanged":Z
    .local v19, "installPermissionsChanged":Z
    iget-object v3, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 2563
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v14}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 2564
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2565
    if-nez v0, :cond_2

    .line 2566
    move/from16 v3, v19

    const/4 v14, 0x1

    goto :goto_1

    .line 2568
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2569
    invoke-direct {v1, v8, v13, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPrivilegedPermissionAllowlist(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2570
    if-nez v6, :cond_3

    .line 2571
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v6, v3

    .line 2573
    :cond_3
    invoke-virtual {v6, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2575
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {v1, v8, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionBySignature(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2576
    move-object/from16 v3, v17

    .end local v17    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v1, v8, v13, v0, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result v17

    if-eqz v17, :cond_8

    goto :goto_2

    .line 2575
    .end local v3    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v17    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v3, v17

    .line 2578
    .end local v17    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_2
    if-nez v7, :cond_6

    .line 2579
    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v7, v17

    .line 2581
    :cond_6
    invoke-virtual {v7, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2575
    .end local v3    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v17    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v3, v17

    .line 2583
    .end local v17    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_8
    :goto_3
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 2584
    invoke-direct {v1, v8, v13, v0, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 2586
    if-nez v15, :cond_9

    .line 2587
    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v15, v17

    .line 2589
    :cond_9
    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2591
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .end local v14    # "permissionName":Ljava/lang/String;
    :cond_a
    move-object/from16 v17, v3

    move/from16 v3, v19

    const/4 v14, 0x1

    goto/16 :goto_1

    .line 2564
    .end local v3    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v14    # "permissionName":Ljava/lang/String;
    .restart local v17    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v12, v17

    .end local v17    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v12, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 2593
    .end local v12    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v14    # "permissionName":Ljava/lang/String;
    .end local v19    # "installPermissionsChanged":Z
    .local v3, "installPermissionsChanged":Z
    .restart local v17    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_b
    move/from16 v19, v3

    move-object/from16 v12, v17

    .end local v3    # "installPermissionsChanged":Z
    .end local v17    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v12    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v19    # "installPermissionsChanged":Z
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v14, v0

    .line 2594
    .local v14, "isPermissionPolicyInitialized":Landroid/util/SparseBooleanArray;
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    if-eqz v0, :cond_d

    .line 2595
    array-length v0, v2

    const/4 v3, 0x0

    :goto_5
    nop

    if-ge v3, v0, :cond_d

    move/from16 v17, v0

    aget v0, v2, v3

    .line 2596
    .local v0, "userId":I
    move/from16 v18, v3

    iget-object v3, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-virtual {v3, v0}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2597
    const/4 v3, 0x1

    invoke-virtual {v14, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2595
    .end local v0    # "userId":I
    :cond_c
    add-int/lit8 v3, v18, 0x1

    move/from16 v0, v17

    goto :goto_5

    .line 2605
    :cond_d
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2606
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    .line 2607
    .local v0, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v3

    .line 2608
    .local v3, "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v17

    move/from16 v18, v4

    move-object/from16 v22, v5

    move-object/from16 v24, v13

    move/from16 v5, v17

    move-object v11, v0

    move-object v4, v3

    .local v17, "uidTargetSdkVersion":I
    goto :goto_8

    .line 2610
    .end local v0    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v3    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v17    # "uidTargetSdkVersion":I
    :cond_e
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2611
    .restart local v0    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2612
    .restart local v3    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v17, 0x2710

    .line 2613
    .restart local v17    # "uidTargetSdkVersion":I
    move/from16 v18, v4

    .end local v4    # "runtimePermissionsRevoked":Z
    .local v18, "runtimePermissionsRevoked":Z
    iget-object v4, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2614
    move-object/from16 v22, v5

    .end local v5    # "updatedUserIds":[I
    .local v22, "updatedUserIds":[I
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackages(I)Landroid/util/ArraySet;

    move-result-object v4

    .line 2615
    .local v4, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 2616
    .local v5, "packagesSize":I
    const/16 v23, 0x0

    move-object/from16 v24, v13

    move/from16 v13, v17

    move/from16 v11, v23

    .end local v17    # "uidTargetSdkVersion":I
    .local v11, "i":I
    .local v13, "uidTargetSdkVersion":I
    .local v24, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_6
    if-ge v11, v5, :cond_10

    .line 2617
    nop

    .line 2618
    invoke-virtual {v4, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v17

    .line 2619
    .local v17, "sharedUserPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v17, :cond_f

    .line 2620
    move-object/from16 v23, v4

    goto :goto_7

    .line 2622
    :cond_f
    nop

    .line 2623
    move-object/from16 v23, v4

    .end local v4    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local v23, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    .line 2622
    invoke-interface {v0, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 2624
    nop

    .line 2625
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v4

    .line 2624
    invoke-interface {v3, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 2626
    nop

    .line 2627
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    .line 2626
    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 2616
    .end local v17    # "sharedUserPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v23

    goto :goto_6

    .end local v23    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v4    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_10
    move-object/from16 v23, v4

    .end local v4    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v23    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    move v5, v13

    move-object v11, v0

    move-object v4, v3

    .line 2631
    .end local v0    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v3    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v13    # "uidTargetSdkVersion":I
    .end local v23    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local v4, "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v5, "uidTargetSdkVersion":I
    .local v11, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_8
    iget-object v13, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v13

    .line 2632
    :try_start_2
    array-length v3, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1a

    move-object/from16 v17, v2

    move-object/from16 v2, v22

    const/4 v0, 0x0

    .end local v22    # "updatedUserIds":[I
    .local v2, "updatedUserIds":[I
    .local v17, "userIds":[I
    :goto_9
    if-ge v0, v3, :cond_58

    :try_start_3
    aget v22, v17, v0

    move/from16 v23, v22

    .line 2633
    .local v23, "userId":I
    move/from16 v22, v0

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    move/from16 v25, v3

    move/from16 v3, v23

    .end local v23    # "userId":I
    .local v3, "userId":I
    invoke-virtual {v0, v3}, Lcom/android/server/pm/permission/DevicePermissionState;->getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_18

    .line 2634
    .local v0, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    move-object/from16 v23, v4

    .end local v4    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v23, "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :try_start_4
    invoke-interface/range {v24 .. v24}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/pm/permission/UserPermissionState;->getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v4

    .line 2636
    .local v4, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/UidPermissionState;->isMissing()Z

    move-result v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_17

    move-object/from16 v27, v0

    .end local v0    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .local v27, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    if-eqz v26, :cond_16

    .line 2637
    :try_start_5
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_a
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_15

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v29, v28

    .line 2638
    .local v29, "permissionName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    move-object/from16 v9, v29

    .end local v29    # "permissionName":Ljava/lang/String;
    .local v9, "permissionName":Ljava/lang/String;
    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 2639
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    if-nez v0, :cond_11

    .line 2640
    goto :goto_a

    .line 2642
    :cond_11
    move-object/from16 v29, v9

    .end local v9    # "permissionName":Ljava/lang/String;
    .restart local v29    # "permissionName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v30, v15

    .end local v15    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v30, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_6
    const-string v15, "android"

    invoke-static {v9, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 2643
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRemoved()Z

    move-result v9

    if-nez v9, :cond_14

    .line 2644
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isHardOrSoftRestricted()Z

    move-result v9

    if-nez v9, :cond_12

    .line 2645
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isImmutablyRestricted()Z

    move-result v9

    if-eqz v9, :cond_13

    goto :goto_b

    .line 2972
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .end local v3    # "userId":I
    .end local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v27    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v29    # "permissionName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move/from16 v9, p2

    move-object/from16 v3, p4

    move/from16 v29, v5

    move-object/from16 v20, v7

    move-object v4, v8

    move-object/from16 v33, v11

    move-object v8, v12

    move-object/from16 v12, v17

    move-object/from16 v11, v30

    move-object v5, v2

    move-object/from16 v17, v6

    goto/16 :goto_2b

    .line 2646
    .restart local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .restart local v3    # "userId":I
    .restart local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v27    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v29    # "permissionName":Ljava/lang/String;
    :cond_12
    :goto_b
    const/16 v9, 0x2000

    invoke-virtual {v4, v0, v9, v9}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 2650
    :cond_13
    const/16 v9, 0x17

    if-ge v5, v9, :cond_14

    .line 2651
    const/16 v9, 0x48

    invoke-virtual {v4, v0, v9, v9}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 2656
    invoke-virtual {v4, v0}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 2659
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .end local v29    # "permissionName":Ljava/lang/String;
    :cond_14
    move-object/from16 v15, v30

    goto :goto_a

    .line 2972
    .end local v3    # "userId":I
    .end local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v27    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v15    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_3
    move-exception v0

    move-object/from16 v30, v15

    move/from16 v9, p2

    move-object/from16 v3, p4

    move/from16 v29, v5

    move-object/from16 v20, v7

    move-object v4, v8

    move-object/from16 v33, v11

    move-object v8, v12

    move-object/from16 v12, v17

    move-object/from16 v11, v30

    move-object v5, v2

    move-object/from16 v17, v6

    .end local v15    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_2b

    .line 2661
    .end local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3    # "userId":I
    .restart local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v15    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v27    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :cond_15
    move-object/from16 v30, v15

    .end local v15    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/android/server/pm/permission/UidPermissionState;->setMissing(Z)V

    move-object/from16 v9, v27

    .line 2662
    .end local v27    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .local v9, "userState":Lcom/android/server/pm/permission/UserPermissionState;
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v2    # "updatedUserIds":[I
    .local v15, "updatedUserIds":[I
    goto :goto_c

    .line 2636
    .end local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "updatedUserIds":[I
    .local v15, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v27    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    :cond_16
    move-object/from16 v30, v15

    move-object/from16 v9, v27

    .end local v15    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v27    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object v15, v2

    .line 2665
    .end local v2    # "updatedUserIds":[I
    .local v15, "updatedUserIds":[I
    :goto_c
    move-object v2, v4

    .line 2667
    .local v2, "origState":Lcom/android/server/pm/permission/UidPermissionState;
    const/16 v21, 0x0

    .line 2669
    .local v21, "installPermissionsChangedForUser":Z
    if-eqz p2, :cond_18

    .line 2670
    :try_start_7
    invoke-interface/range {v24 .. v24}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v27, v2

    const/4 v2, 0x0

    .end local v2    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v27, "origState":Lcom/android/server/pm/permission/UidPermissionState;
    invoke-virtual {v9, v0, v2}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V

    .line 2671
    invoke-interface/range {v24 .. v24}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v0

    if-nez v0, :cond_17

    .line 2672
    new-instance v0, Lcom/android/server/pm/permission/UidPermissionState;

    invoke-direct {v0, v4}, Lcom/android/server/pm/permission/UidPermissionState;-><init>(Lcom/android/server/pm/permission/UidPermissionState;)V

    .line 2673
    .end local v27    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v0, "origState":Lcom/android/server/pm/permission/UidPermissionState;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/UidPermissionState;->reset()V

    goto :goto_d

    .line 2972
    .end local v0    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v3    # "userId":I
    .end local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v21    # "installPermissionsChangedForUser":Z
    :catchall_4
    move-exception v0

    move/from16 v9, p2

    move-object/from16 v3, p4

    move/from16 v29, v5

    move-object/from16 v20, v7

    move-object v4, v8

    move-object/from16 v33, v11

    move-object v8, v12

    move-object v5, v15

    move-object/from16 v12, v17

    move-object/from16 v11, v30

    move-object/from16 v17, v6

    goto/16 :goto_2b

    .line 2680
    .restart local v3    # "userId":I
    .restart local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v21    # "installPermissionsChangedForUser":Z
    .restart local v27    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_17
    invoke-direct {v1, v11, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeUnusedSharedUserPermissionsLocked(Ljava/util/Collection;Lcom/android/server/pm/permission/UidPermissionState;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2682
    invoke-static {v15, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2683
    .end local v15    # "updatedUserIds":[I
    .local v0, "updatedUserIds":[I
    const/4 v15, 0x1

    move/from16 v18, v15

    move-object v15, v0

    move-object/from16 v0, v27

    .end local v18    # "runtimePermissionsRevoked":Z
    .local v15, "runtimePermissionsRevoked":Z
    goto :goto_d

    .line 2669
    .end local v0    # "updatedUserIds":[I
    .end local v27    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v2    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v15, "updatedUserIds":[I
    .restart local v18    # "runtimePermissionsRevoked":Z
    :cond_18
    move-object/from16 v27, v2

    const/4 v2, 0x0

    .line 2688
    .end local v2    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v27    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_19
    move-object/from16 v0, v27

    .end local v27    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v0, "origState":Lcom/android/server/pm/permission/UidPermissionState;
    :goto_d
    :try_start_8
    new-instance v26, Landroid/util/ArraySet;

    invoke-direct/range {v26 .. v26}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v27, v26

    .line 2689
    .local v27, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_16

    move/from16 v29, v5

    .end local v5    # "uidTargetSdkVersion":I
    .local v29, "uidTargetSdkVersion":I
    :try_start_9
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v31, v2

    .line 2691
    .local v31, "friendlyName":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_15

    move-object v5, v15

    .end local v15    # "updatedUserIds":[I
    .local v5, "updatedUserIds":[I
    :goto_e
    :try_start_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_14

    if-eqz v15, :cond_51

    :try_start_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2692
    .local v15, "permName":Ljava/lang/String;
    move-object/from16 v32, v2

    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, v15}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    .line 2693
    .local v2, "bp":Lcom/android/server/pm/permission/Permission;
    nop

    .line 2694
    move-object/from16 v33, v11

    .end local v11    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v33, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :try_start_c
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    move-object/from16 v34, v12

    const/16 v12, 0x17

    .end local v12    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v34, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-lt v11, v12, :cond_1a

    const/4 v11, 0x1

    goto :goto_f

    :cond_1a
    const/4 v11, 0x0

    .line 2704
    .local v11, "appSupportsRuntimePermissions":Z
    :goto_f
    if-nez v2, :cond_1c

    .line 2705
    if-eqz v10, :cond_1b

    .line 2706
    :try_start_d
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 2705
    invoke-virtual {v10, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :cond_1b
    move-object/from16 v12, v27

    goto :goto_11

    .line 2972
    .end local v0    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v3    # "userId":I
    .end local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v15    # "permName":Ljava/lang/String;
    .end local v21    # "installPermissionsChangedForUser":Z
    .end local v27    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v31    # "friendlyName":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move/from16 v9, p2

    move-object/from16 v3, p4

    move-object/from16 v20, v7

    move-object v4, v8

    move-object/from16 v12, v17

    move-object/from16 v11, v30

    move-object/from16 v8, v34

    move-object/from16 v17, v6

    goto/16 :goto_2b

    .line 2717
    .restart local v0    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v3    # "userId":I
    .restart local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .restart local v15    # "permName":Ljava/lang/String;
    .restart local v21    # "installPermissionsChangedForUser":Z
    .restart local v27    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "friendlyName":Ljava/lang/String;
    :cond_1c
    :try_start_e
    invoke-virtual {v0, v15}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    if-nez v12, :cond_1e

    .line 2718
    :try_start_f
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 2720
    move-object/from16 v12, v27

    .end local v27    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v12, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_10

    .line 2718
    .end local v12    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v27    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1d
    move-object/from16 v12, v27

    .end local v27    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v12    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_10

    .line 2717
    .end local v12    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v27    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1e
    move-object/from16 v12, v27

    .line 2738
    .end local v27    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v12    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_10
    :try_start_10
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntimeOnly()Z

    move-result v27

    if-eqz v27, :cond_1f

    if-nez v11, :cond_1f

    .line 2743
    nop

    .line 2691
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "permName":Ljava/lang/String;
    .restart local v27    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_11
    move-object/from16 v27, v12

    move-object/from16 v2, v32

    move-object/from16 v11, v33

    move-object/from16 v12, v34

    .end local v27    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v12    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_e

    .line 2746
    .restart local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .restart local v15    # "permName":Ljava/lang/String;
    :cond_1f
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v35, v27

    .line 2749
    .local v35, "perm":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isAppOp()Z

    move-result v27
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    if-eqz v27, :cond_20

    .line 2750
    :try_start_11
    iget-object v10, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    move/from16 v27, v11

    .end local v11    # "appSupportsRuntimePermissions":Z
    .local v27, "appSupportsRuntimePermissions":Z
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v36, v12

    move-object/from16 v12, v35

    .end local v35    # "perm":Ljava/lang/String;
    .local v12, "perm":Ljava/lang/String;
    .local v36, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v10, v12, v11}, Lcom/android/server/pm/permission/PermissionRegistry;->addAppOpPermissionPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_12

    .line 2749
    .end local v27    # "appSupportsRuntimePermissions":Z
    .end local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .local v12, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v35    # "perm":Ljava/lang/String;
    :cond_20
    move/from16 v27, v11

    move-object/from16 v36, v12

    move-object/from16 v12, v35

    .line 2753
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v35    # "perm":Ljava/lang/String;
    .local v12, "perm":Ljava/lang/String;
    .restart local v27    # "appSupportsRuntimePermissions":Z
    .restart local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_12
    const/4 v10, 0x1

    .line 2754
    .local v10, "shouldGrantNormalPermission":Z
    :try_start_12
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isNormal()Z

    move-result v11
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    if-eqz v11, :cond_21

    :try_start_13
    invoke-virtual {v0, v12}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_21

    .line 2758
    invoke-interface/range {v24 .. v24}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v11

    if-nez v11, :cond_21

    .line 2759
    invoke-interface/range {v24 .. v24}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 2758
    invoke-virtual {v9, v11}, Lcom/android/server/pm/permission/UserPermissionState;->areInstallPermissionsFixed(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_21

    .line 2763
    invoke-static {v12, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isCompatPlatformPermissionForPackage(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v11
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-nez v11, :cond_21

    .line 2764
    const/4 v10, 0x0

    .line 2774
    :cond_21
    :try_start_14
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isNormal()Z

    move-result v11
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    if-nez v11, :cond_22

    :try_start_15
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v11

    if-nez v11, :cond_22

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v11

    if-eqz v11, :cond_23

    :cond_22
    goto/16 :goto_1b

    .line 2823
    :cond_23
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v11

    if-eqz v11, :cond_3d

    .line 2824
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isHardRestricted()Z

    move-result v11

    .line 2825
    .local v11, "hardRestricted":Z
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isSoftRestricted()Z

    move-result v35

    .line 2830
    .local v35, "softRestricted":Z
    nop

    .line 2831
    invoke-virtual {v14, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v37

    .line 2833
    .local v37, "permissionPolicyInitialized":Z
    invoke-virtual {v0, v12}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v38
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 2834
    .local v38, "origPermState":Lcom/android/server/pm/permission/PermissionState;
    if-eqz v38, :cond_24

    :try_start_16
    invoke-virtual/range {v38 .. v38}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v39
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    goto :goto_13

    .line 2972
    .end local v0    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v3    # "userId":I
    .end local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v10    # "shouldGrantNormalPermission":Z
    .end local v11    # "hardRestricted":Z
    .end local v12    # "perm":Ljava/lang/String;
    .end local v15    # "permName":Ljava/lang/String;
    .end local v21    # "installPermissionsChangedForUser":Z
    .end local v27    # "appSupportsRuntimePermissions":Z
    .end local v31    # "friendlyName":Ljava/lang/String;
    .end local v35    # "softRestricted":Z
    .end local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v37    # "permissionPolicyInitialized":Z
    .end local v38    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    :catchall_6
    move-exception v0

    move-object/from16 v4, p1

    move/from16 v9, p2

    move-object/from16 v3, p4

    move-object/from16 v20, v7

    move-object/from16 v12, v17

    move-object/from16 v11, v30

    move-object/from16 v8, v34

    move-object/from16 v17, v6

    goto/16 :goto_2b

    .line 2834
    .restart local v0    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v3    # "userId":I
    .restart local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v10    # "shouldGrantNormalPermission":Z
    .restart local v11    # "hardRestricted":Z
    .restart local v12    # "perm":Ljava/lang/String;
    .restart local v15    # "permName":Ljava/lang/String;
    .restart local v21    # "installPermissionsChangedForUser":Z
    .restart local v27    # "appSupportsRuntimePermissions":Z
    .restart local v31    # "friendlyName":Ljava/lang/String;
    .restart local v35    # "softRestricted":Z
    .restart local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v37    # "permissionPolicyInitialized":Z
    .restart local v38    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    :cond_24
    const/16 v39, 0x0

    :goto_13
    move/from16 v40, v39

    .line 2836
    .local v40, "flags":I
    const/16 v39, 0x0

    .line 2838
    .local v39, "wasChanged":Z
    nop

    .line 2839
    :try_start_17
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v8

    and-int/lit16 v8, v8, 0x3800

    if-eqz v8, :cond_25

    const/4 v8, 0x1

    goto :goto_14

    :cond_25
    const/4 v8, 0x0

    .line 2841
    .local v8, "restrictionExempt":Z
    :goto_14
    nop

    .line 2842
    move/from16 v41, v8

    .end local v8    # "restrictionExempt":Z
    .local v41, "restrictionExempt":Z
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2841
    invoke-virtual {v0, v8}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_26

    const/4 v8, 0x1

    goto :goto_15

    :cond_26
    const/4 v8, 0x0

    .line 2844
    .local v8, "restrictionApplied":Z
    :goto_15
    if-eqz v27, :cond_32

    .line 2846
    if-eqz v37, :cond_2a

    if-eqz v11, :cond_2a

    .line 2847
    if-nez v41, :cond_29

    .line 2848
    if-eqz v38, :cond_27

    :try_start_18
    invoke-virtual/range {v38 .. v38}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v42

    if-eqz v42, :cond_27

    .line 2849
    invoke-virtual {v4, v2}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v42

    if-eqz v42, :cond_27

    .line 2850
    const/16 v39, 0x1

    .line 2852
    :cond_27
    if-nez v8, :cond_28

    .line 2853
    move/from16 v42, v8

    move/from16 v8, v40

    .end local v40    # "flags":I
    .local v8, "flags":I
    .local v42, "restrictionApplied":Z
    or-int/lit16 v8, v8, 0x4000

    .line 2854
    const/16 v39, 0x1

    move/from16 v40, v8

    goto :goto_17

    .line 2852
    .end local v42    # "restrictionApplied":Z
    .local v8, "restrictionApplied":Z
    .restart local v40    # "flags":I
    :cond_28
    move/from16 v42, v8

    move/from16 v8, v40

    .end local v40    # "flags":I
    .local v8, "flags":I
    .restart local v42    # "restrictionApplied":Z
    goto :goto_17

    .line 2847
    .end local v42    # "restrictionApplied":Z
    .local v8, "restrictionApplied":Z
    .restart local v40    # "flags":I
    :cond_29
    move/from16 v42, v8

    move/from16 v8, v40

    .end local v40    # "flags":I
    .local v8, "flags":I
    .restart local v42    # "restrictionApplied":Z
    goto :goto_16

    .line 2846
    .end local v42    # "restrictionApplied":Z
    .local v8, "restrictionApplied":Z
    .restart local v40    # "flags":I
    :cond_2a
    move/from16 v42, v8

    move/from16 v8, v40

    .line 2858
    .end local v40    # "flags":I
    .local v8, "flags":I
    .restart local v42    # "restrictionApplied":Z
    if-eqz v37, :cond_2b

    if-eqz v35, :cond_2b

    .line 2861
    if-nez v41, :cond_2b

    if-nez v42, :cond_2b

    .line 2862
    or-int/lit16 v8, v8, 0x4000

    .line 2863
    const/16 v39, 0x1

    move/from16 v40, v8

    goto :goto_17

    .line 2868
    :cond_2b
    :goto_16
    move/from16 v40, v8

    .end local v8    # "flags":I
    .restart local v40    # "flags":I
    :goto_17
    sget-object v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2c

    .line 2869
    and-int/lit8 v8, v40, 0x40

    if-eqz v8, :cond_2c

    .line 2870
    and-int/lit8 v40, v40, -0x41

    .line 2871
    const/16 v39, 0x1

    .line 2875
    :cond_2c
    and-int/lit8 v8, v40, 0x8

    if-eqz v8, :cond_2d

    .line 2877
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v8

    .line 2876
    invoke-direct {v1, v15, v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionSplitFromNonRuntime(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_2d

    .line 2878
    and-int/lit8 v40, v40, -0x9

    .line 2879
    const/16 v39, 0x1

    goto :goto_18

    .line 2881
    :cond_2d
    if-eqz v37, :cond_2e

    if-eqz v11, :cond_2e

    if-eqz v41, :cond_2f

    .line 2883
    :cond_2e
    if-eqz v38, :cond_2f

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 2884
    invoke-virtual {v4, v2}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v8

    if-nez v8, :cond_2f

    .line 2885
    const/16 v39, 0x1

    .line 2889
    :cond_2f
    :goto_18
    iget-boolean v8, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mIsLeanback:Z

    if-eqz v8, :cond_31

    sget-object v8, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NOTIFICATION_PERMISSIONS:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 2890
    invoke-virtual {v4, v2}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 2891
    if-eqz v38, :cond_30

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v8

    if-nez v8, :cond_31

    .line 2892
    :cond_30
    invoke-virtual {v4, v2}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v8
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    if-eqz v8, :cond_31

    .line 2893
    const/16 v39, 0x1

    move/from16 v1, v40

    goto/16 :goto_1a

    .line 2926
    :cond_31
    move/from16 v1, v40

    goto :goto_1a

    .line 2898
    .end local v42    # "restrictionApplied":Z
    .local v8, "restrictionApplied":Z
    :cond_32
    move/from16 v42, v8

    move/from16 v8, v40

    .end local v40    # "flags":I
    .local v8, "flags":I
    .restart local v42    # "restrictionApplied":Z
    if-nez v38, :cond_33

    .line 2900
    :try_start_19
    const-string v1, "android"

    .line 2901
    move/from16 v40, v8

    .end local v8    # "flags":I
    .restart local v40    # "flags":I
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 2900
    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2902
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_34

    .line 2903
    or-int/lit8 v40, v40, 0x48

    .line 2905
    const/16 v39, 0x1

    move/from16 v1, v40

    goto :goto_19

    .line 2972
    .end local v0    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v3    # "userId":I
    .end local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v10    # "shouldGrantNormalPermission":Z
    .end local v11    # "hardRestricted":Z
    .end local v12    # "perm":Ljava/lang/String;
    .end local v15    # "permName":Ljava/lang/String;
    .end local v21    # "installPermissionsChangedForUser":Z
    .end local v27    # "appSupportsRuntimePermissions":Z
    .end local v31    # "friendlyName":Ljava/lang/String;
    .end local v35    # "softRestricted":Z
    .end local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v37    # "permissionPolicyInitialized":Z
    .end local v38    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .end local v39    # "wasChanged":Z
    .end local v40    # "flags":I
    .end local v41    # "restrictionExempt":Z
    .end local v42    # "restrictionApplied":Z
    :catchall_7
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v9, p2

    move-object/from16 v3, p4

    move-object/from16 v20, v7

    move-object/from16 v12, v17

    move-object/from16 v11, v30

    move-object/from16 v8, v34

    move-object/from16 v17, v6

    goto/16 :goto_2b

    .line 2898
    .restart local v0    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v3    # "userId":I
    .restart local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v8    # "flags":I
    .restart local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v10    # "shouldGrantNormalPermission":Z
    .restart local v11    # "hardRestricted":Z
    .restart local v12    # "perm":Ljava/lang/String;
    .restart local v15    # "permName":Ljava/lang/String;
    .restart local v21    # "installPermissionsChangedForUser":Z
    .restart local v27    # "appSupportsRuntimePermissions":Z
    .restart local v31    # "friendlyName":Ljava/lang/String;
    .restart local v35    # "softRestricted":Z
    .restart local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v37    # "permissionPolicyInitialized":Z
    .restart local v38    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .restart local v39    # "wasChanged":Z
    .restart local v41    # "restrictionExempt":Z
    .restart local v42    # "restrictionApplied":Z
    :cond_33
    move/from16 v40, v8

    .line 2910
    .end local v8    # "flags":I
    .restart local v40    # "flags":I
    :cond_34
    move/from16 v1, v40

    .end local v40    # "flags":I
    .local v1, "flags":I
    :goto_19
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_35

    .line 2911
    invoke-virtual {v4, v2}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 2912
    const/4 v8, 0x1

    move/from16 v39, v8

    .line 2917
    :cond_35
    if-eqz v37, :cond_37

    if-nez v11, :cond_36

    if-eqz v35, :cond_37

    :cond_36
    if-nez v41, :cond_37

    if-nez v42, :cond_37

    .line 2920
    or-int/lit16 v1, v1, 0x4000

    .line 2921
    const/16 v39, 0x1

    .line 2926
    :cond_37
    :goto_1a
    if-eqz v37, :cond_3b

    .line 2927
    if-nez v11, :cond_38

    if-eqz v35, :cond_39

    :cond_38
    if-eqz v41, :cond_3b

    .line 2928
    :cond_39
    if-eqz v42, :cond_3b

    .line 2929
    and-int/lit16 v1, v1, -0x4001

    .line 2931
    if-nez v27, :cond_3a

    .line 2932
    or-int/lit8 v1, v1, 0x40

    .line 2934
    :cond_3a
    const/16 v39, 0x1

    .line 2939
    :cond_3b
    if-eqz v39, :cond_3c

    .line 2940
    invoke-static {v5, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    move-object v5, v8

    .line 2943
    :cond_3c
    const v8, 0x3fbff

    invoke-virtual {v4, v2, v8, v1}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 2945
    move-object/from16 v11, v30

    move-object/from16 v8, v34

    move-object/from16 v30, v0

    .end local v1    # "flags":I
    .end local v11    # "hardRestricted":Z
    .end local v35    # "softRestricted":Z
    .end local v37    # "permissionPolicyInitialized":Z
    .end local v38    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    .end local v39    # "wasChanged":Z
    .end local v41    # "restrictionExempt":Z
    .end local v42    # "restrictionApplied":Z
    goto/16 :goto_26

    .line 2946
    :cond_3d
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown permission protection "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getProtection()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " for permission "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2947
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2946
    invoke-static {v1, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    move-object/from16 v11, v30

    move-object/from16 v8, v34

    move-object/from16 v30, v0

    goto/16 :goto_26

    .line 2775
    :goto_1b
    :try_start_1a
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_3e

    if-nez v10, :cond_3f

    :cond_3e
    goto :goto_1c

    :cond_3f
    move-object/from16 v11, v30

    move-object/from16 v8, v34

    goto/16 :goto_22

    .line 2776
    :goto_1c
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    if-eqz v1, :cond_46

    .line 2777
    :try_start_1b
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    if-eqz v1, :cond_40

    :try_start_1c
    invoke-static {v6, v15}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    if-eqz v1, :cond_41

    :cond_40
    goto :goto_1d

    :cond_41
    move-object/from16 v8, v34

    goto/16 :goto_1f

    .line 2779
    :goto_1d
    :try_start_1d
    invoke-static {v7, v15}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 2781
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    if-eqz v1, :cond_42

    move-object/from16 v8, v34

    .end local v34    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v8, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_1e
    invoke-static {v8, v15}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_1e

    .line 2972
    .end local v0    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v3    # "userId":I
    .end local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v10    # "shouldGrantNormalPermission":Z
    .end local v12    # "perm":Ljava/lang/String;
    .end local v15    # "permName":Ljava/lang/String;
    .end local v21    # "installPermissionsChangedForUser":Z
    .end local v27    # "appSupportsRuntimePermissions":Z
    .end local v31    # "friendlyName":Ljava/lang/String;
    .end local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_8
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v9, p2

    move-object/from16 v3, p4

    move-object/from16 v20, v7

    move-object/from16 v12, v17

    move-object/from16 v11, v30

    move-object/from16 v17, v6

    goto/16 :goto_2b

    .line 2781
    .end local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v0    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v3    # "userId":I
    .restart local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v10    # "shouldGrantNormalPermission":Z
    .restart local v12    # "perm":Ljava/lang/String;
    .restart local v15    # "permName":Ljava/lang/String;
    .restart local v21    # "installPermissionsChangedForUser":Z
    .restart local v27    # "appSupportsRuntimePermissions":Z
    .restart local v31    # "friendlyName":Ljava/lang/String;
    .restart local v34    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_42
    move-object/from16 v8, v34

    .line 2783
    .end local v34    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_1e
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v1

    if-nez v1, :cond_43

    .line 2784
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 2785
    :cond_43
    invoke-virtual {v0, v15}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    if-nez v1, :cond_44

    goto :goto_1f

    :cond_44
    move-object/from16 v11, v30

    goto/16 :goto_22

    .line 2972
    .end local v0    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v3    # "userId":I
    .end local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v10    # "shouldGrantNormalPermission":Z
    .end local v12    # "perm":Ljava/lang/String;
    .end local v15    # "permName":Ljava/lang/String;
    .end local v21    # "installPermissionsChangedForUser":Z
    .end local v27    # "appSupportsRuntimePermissions":Z
    .end local v31    # "friendlyName":Ljava/lang/String;
    .end local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v34    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_9
    move-exception v0

    move-object/from16 v8, v34

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v9, p2

    move-object/from16 v3, p4

    move-object/from16 v20, v7

    move-object/from16 v12, v17

    move-object/from16 v11, v30

    move-object/from16 v17, v6

    .end local v34    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_2b

    .line 2779
    .end local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v0    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v3    # "userId":I
    .restart local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v10    # "shouldGrantNormalPermission":Z
    .restart local v12    # "perm":Ljava/lang/String;
    .restart local v15    # "permName":Ljava/lang/String;
    .restart local v21    # "installPermissionsChangedForUser":Z
    .restart local v27    # "appSupportsRuntimePermissions":Z
    .restart local v31    # "friendlyName":Ljava/lang/String;
    .restart local v34    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_45
    move-object/from16 v8, v34

    .end local v34    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v11, v30

    goto :goto_22

    .line 2776
    .end local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v34    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_46
    move-object/from16 v8, v34

    .line 2787
    .end local v34    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_47
    :goto_1f
    :try_start_1f
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 2788
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    if-eqz v1, :cond_48

    :try_start_20
    invoke-static {v6, v15}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    if-eqz v1, :cond_49

    :cond_48
    goto :goto_20

    :cond_49
    move-object/from16 v11, v30

    goto :goto_23

    .line 2790
    :goto_20
    move-object/from16 v11, v30

    .end local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_21
    invoke-static {v11, v15}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 2792
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-static {v8, v15}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    :cond_4a
    goto :goto_21

    .line 2972
    .end local v0    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v3    # "userId":I
    .end local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v10    # "shouldGrantNormalPermission":Z
    .end local v12    # "perm":Ljava/lang/String;
    .end local v15    # "permName":Ljava/lang/String;
    .end local v21    # "installPermissionsChangedForUser":Z
    .end local v27    # "appSupportsRuntimePermissions":Z
    .end local v31    # "friendlyName":Ljava/lang/String;
    .end local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_a
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v9, p2

    move-object/from16 v3, p4

    move-object/from16 v20, v7

    move-object/from16 v12, v17

    move-object/from16 v17, v6

    goto/16 :goto_2b

    .line 2794
    .restart local v0    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v3    # "userId":I
    .restart local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v10    # "shouldGrantNormalPermission":Z
    .restart local v12    # "perm":Ljava/lang/String;
    .restart local v15    # "permName":Ljava/lang/String;
    .restart local v21    # "installPermissionsChangedForUser":Z
    .restart local v27    # "appSupportsRuntimePermissions":Z
    .restart local v31    # "friendlyName":Ljava/lang/String;
    .restart local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_21
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 2795
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 2796
    :cond_4b
    invoke-virtual {v0, v15}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 2799
    :cond_4c
    :goto_22
    invoke-virtual {v4, v2}, Lcom/android/server/pm/permission/UidPermissionState;->grantPermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 2800
    const/16 v21, 0x1

    goto :goto_24

    .line 2972
    .end local v0    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v3    # "userId":I
    .end local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v10    # "shouldGrantNormalPermission":Z
    .end local v11    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "perm":Ljava/lang/String;
    .end local v15    # "permName":Ljava/lang/String;
    .end local v21    # "installPermissionsChangedForUser":Z
    .end local v27    # "appSupportsRuntimePermissions":Z
    .end local v31    # "friendlyName":Ljava/lang/String;
    .end local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_b
    move-exception v0

    move-object/from16 v11, v30

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v9, p2

    move-object/from16 v3, p4

    move-object/from16 v20, v7

    move-object/from16 v12, v17

    move-object/from16 v17, v6

    .end local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_2b

    .line 2787
    .end local v11    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v0    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v3    # "userId":I
    .restart local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v10    # "shouldGrantNormalPermission":Z
    .restart local v12    # "perm":Ljava/lang/String;
    .restart local v15    # "permName":Ljava/lang/String;
    .restart local v21    # "installPermissionsChangedForUser":Z
    .restart local v27    # "appSupportsRuntimePermissions":Z
    .restart local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "friendlyName":Ljava/lang/String;
    .restart local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4d
    move-object/from16 v11, v30

    .line 2816
    .end local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4e
    :goto_23
    invoke-virtual {v4, v2}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 2817
    const/16 v21, 0x1

    .line 2820
    :cond_4f
    :goto_24
    invoke-virtual {v0, v12}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v1

    .line 2821
    .local v1, "origPermState":Lcom/android/server/pm/permission/PermissionState;
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v30

    goto :goto_25

    :cond_50
    const/16 v30, 0x0

    :goto_25
    move/from16 v34, v30

    .line 2822
    .local v34, "flags":I
    move-object/from16 v34, v1

    move/from16 v1, v30

    move-object/from16 v30, v0

    const v0, 0x3fbff

    .end local v0    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v1, "flags":I
    .local v30, "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v34, "origPermState":Lcom/android/server/pm/permission/PermissionState;
    invoke-virtual {v4, v2, v0, v1}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    .line 2823
    nop

    .line 2949
    .end local v1    # "flags":I
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v10    # "shouldGrantNormalPermission":Z
    .end local v12    # "perm":Ljava/lang/String;
    .end local v15    # "permName":Ljava/lang/String;
    .end local v27    # "appSupportsRuntimePermissions":Z
    .end local v34    # "origPermState":Lcom/android/server/pm/permission/PermissionState;
    :goto_26
    move-object/from16 v1, p0

    move-object/from16 v10, p3

    move-object v12, v8

    move-object/from16 v0, v30

    move-object/from16 v2, v32

    move-object/from16 v27, v36

    move-object/from16 v8, p1

    move-object/from16 v30, v11

    move-object/from16 v11, v33

    goto/16 :goto_e

    .line 2972
    .end local v3    # "userId":I
    .end local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v11    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v21    # "installPermissionsChangedForUser":Z
    .end local v31    # "friendlyName":Ljava/lang/String;
    .end local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v30, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v34, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_c
    move-exception v0

    move-object/from16 v11, v30

    move-object/from16 v8, v34

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v9, p2

    move-object/from16 v3, p4

    move-object/from16 v20, v7

    move-object/from16 v12, v17

    move-object/from16 v17, v6

    .end local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v34    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_2b

    .end local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v12, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_d
    move-exception v0

    move-object v8, v12

    move-object/from16 v11, v30

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v9, p2

    move-object/from16 v3, p4

    move-object/from16 v20, v7

    move-object/from16 v12, v17

    move-object/from16 v17, v6

    .end local v12    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_2b

    .end local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v33    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v11, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v12    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_e
    move-exception v0

    move-object/from16 v33, v11

    move-object v8, v12

    move-object/from16 v11, v30

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v9, p2

    move-object/from16 v3, p4

    move-object/from16 v20, v7

    move-object/from16 v12, v17

    move-object/from16 v17, v6

    .end local v12    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v33    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto/16 :goto_2b

    .line 2951
    .end local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v33    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v0    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v3    # "userId":I
    .restart local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .local v11, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v12    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21    # "installPermissionsChangedForUser":Z
    .local v27, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v31    # "friendlyName":Ljava/lang/String;
    :cond_51
    move-object/from16 v33, v11

    move-object v8, v12

    move-object/from16 v36, v27

    move-object/from16 v11, v30

    move-object/from16 v30, v0

    .end local v0    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v12    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v27    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v30, "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v33    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v21, :cond_52

    if-eqz p2, :cond_53

    .line 2952
    :cond_52
    :try_start_22
    invoke-interface/range {v24 .. v24}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/UserPermissionState;->areInstallPermissionsFixed(Ljava/lang/String;)Z

    move-result v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_13

    if-nez v0, :cond_53

    .line 2953
    :try_start_23
    invoke-interface/range {v24 .. v24}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    if-eqz v0, :cond_54

    :cond_53
    :try_start_24
    invoke-interface/range {v24 .. v24}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_13

    if-eqz v0, :cond_55

    .line 2957
    :cond_54
    :try_start_25
    invoke-interface/range {v24 .. v24}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    invoke-virtual {v9, v0, v10}, Lcom/android/server/pm/permission/UserPermissionState;->setInstallPermissionsFixed(Ljava/lang/String;Z)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    goto :goto_27

    .line 2953
    :cond_55
    const/4 v10, 0x1

    .line 2960
    :goto_27
    if-eqz v21, :cond_57

    .line 2961
    const/4 v1, 0x1

    .line 2962
    .end local v19    # "installPermissionsChanged":Z
    .local v1, "installPermissionsChanged":Z
    if-eqz p3, :cond_56

    if-eqz p2, :cond_56

    .line 2963
    :try_start_26
    invoke-static {v5, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    move-object v5, v0

    move/from16 v19, v1

    goto :goto_28

    .line 2972
    .end local v3    # "userId":I
    .end local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v21    # "installPermissionsChangedForUser":Z
    .end local v30    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v31    # "friendlyName":Ljava/lang/String;
    .end local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_f
    move-exception v0

    move-object/from16 v4, p1

    move/from16 v9, p2

    move-object/from16 v3, p4

    move/from16 v19, v1

    move-object/from16 v20, v7

    move-object/from16 v12, v17

    move-object/from16 v1, p0

    move-object/from16 v17, v6

    goto/16 :goto_2b

    .line 2966
    .restart local v3    # "userId":I
    .restart local v4    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .restart local v21    # "installPermissionsChangedForUser":Z
    .restart local v30    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v31    # "friendlyName":Ljava/lang/String;
    .restart local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_56
    move/from16 v19, v1

    .end local v1    # "installPermissionsChanged":Z
    .restart local v19    # "installPermissionsChanged":Z
    :cond_57
    :goto_28
    nop

    .line 2967
    move-object v1, v6

    move v6, v3

    .end local v3    # "userId":I
    .local v1, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v6, "userId":I
    :try_start_27
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_12

    .line 2966
    const/4 v0, 0x0

    move-object v2, v4

    move-object/from16 v20, v7

    move-object/from16 v12, v17

    move-object/from16 v4, v23

    move-object/from16 v17, v1

    move-object v7, v5

    move/from16 v5, v29

    move-object/from16 v1, p0

    .end local v1    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v29    # "uidTargetSdkVersion":I
    .local v2, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v4, "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v5, "uidTargetSdkVersion":I
    .local v7, "updatedUserIds":[I
    .local v12, "userIds":[I
    .local v17, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v20, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_28
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Ljava/util/Collection;II[I)[I

    move-result-object v3
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_11

    move-object/from16 v27, v2

    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v4    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v5    # "uidTargetSdkVersion":I
    .restart local v23    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v27, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v29    # "uidTargetSdkVersion":I
    move-object v7, v3

    .line 2969
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v3, v27

    move-object/from16 v2, v30

    move-object/from16 v5, v36

    .end local v27    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v30    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v2, "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v3, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v5, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_29
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArraySet;I[I)[I

    move-result-object v15
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    .end local v2    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v5    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v27    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v30    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .restart local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object v2, v15

    .line 2632
    .end local v6    # "userId":I
    .end local v7    # "updatedUserIds":[I
    .end local v9    # "userState":Lcom/android/server/pm/permission/UserPermissionState;
    .end local v21    # "installPermissionsChangedForUser":Z
    .end local v27    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v30    # "origState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v31    # "friendlyName":Ljava/lang/String;
    .end local v36    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v2, "updatedUserIds":[I
    add-int/lit8 v3, v22, 0x1

    move-object/from16 v10, p3

    move v0, v3

    move-object v15, v11

    move-object/from16 v6, v17

    move-object/from16 v7, v20

    move/from16 v3, v25

    move/from16 v5, v29

    move-object/from16 v11, v33

    move-object/from16 v17, v12

    move-object v12, v8

    move-object v8, v4

    move-object/from16 v4, v23

    goto/16 :goto_9

    .line 2972
    .end local v2    # "updatedUserIds":[I
    .restart local v7    # "updatedUserIds":[I
    :catchall_10
    move-exception v0

    move/from16 v9, p2

    move-object/from16 v3, p4

    move-object v5, v7

    goto/16 :goto_2b

    .end local v23    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v29    # "uidTargetSdkVersion":I
    .restart local v4    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v5, "uidTargetSdkVersion":I
    :catchall_11
    move-exception v0

    move-object/from16 v23, v4

    move/from16 v29, v5

    move-object/from16 v4, p1

    move/from16 v9, p2

    move-object/from16 v3, p4

    move-object v5, v7

    .end local v4    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v5    # "uidTargetSdkVersion":I
    .restart local v23    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v29    # "uidTargetSdkVersion":I
    goto/16 :goto_2b

    .end local v12    # "userIds":[I
    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v5, "updatedUserIds":[I
    .local v7, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v17, "userIds":[I
    :catchall_12
    move-exception v0

    move-object/from16 v4, p1

    move-object/from16 v20, v7

    move-object/from16 v12, v17

    move-object/from16 v17, v1

    move-object v7, v5

    move-object/from16 v1, p0

    move/from16 v9, p2

    move-object/from16 v3, p4

    .end local v1    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "updatedUserIds":[I
    .local v7, "updatedUserIds":[I
    .restart local v12    # "userIds":[I
    .local v17, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_2b

    .end local v12    # "userIds":[I
    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "updatedUserIds":[I
    .local v6, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v7, "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v17, "userIds":[I
    :catchall_13
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v20, v7

    move-object/from16 v12, v17

    move-object/from16 v17, v6

    move/from16 v9, p2

    move-object/from16 v3, p4

    .end local v6    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v12    # "userIds":[I
    .local v17, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto/16 :goto_2b

    .end local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v33    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v6    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v7    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v12, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v17, "userIds":[I
    .local v30, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_14
    move-exception v0

    move-object/from16 v20, v7

    move-object v4, v8

    move-object/from16 v33, v11

    move-object v8, v12

    move-object/from16 v12, v17

    move-object/from16 v11, v30

    move-object/from16 v17, v6

    move/from16 v9, p2

    move-object/from16 v3, p4

    .end local v6    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v12, "userIds":[I
    .local v17, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v33    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto/16 :goto_2b

    .end local v5    # "updatedUserIds":[I
    .end local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v33    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v6    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v7    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v12, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v15, "updatedUserIds":[I
    .local v17, "userIds":[I
    .restart local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_15
    move-exception v0

    move-object/from16 v20, v7

    move-object v4, v8

    move-object/from16 v33, v11

    move-object v8, v12

    move-object/from16 v12, v17

    move-object/from16 v11, v30

    move-object/from16 v17, v6

    move/from16 v9, p2

    move-object/from16 v3, p4

    move-object v5, v15

    .end local v6    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v12, "userIds":[I
    .local v17, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v33    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto/16 :goto_2b

    .end local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v29    # "uidTargetSdkVersion":I
    .end local v33    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v5, "uidTargetSdkVersion":I
    .restart local v6    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v7    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v12, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v17, "userIds":[I
    .restart local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_16
    move-exception v0

    move/from16 v29, v5

    move-object/from16 v20, v7

    move-object v4, v8

    move-object/from16 v33, v11

    move-object v8, v12

    move-object/from16 v12, v17

    move-object/from16 v11, v30

    move-object/from16 v17, v6

    move/from16 v9, p2

    move-object/from16 v3, p4

    move-object v5, v15

    .end local v5    # "uidTargetSdkVersion":I
    .end local v6    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v30    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v12, "userIds":[I
    .local v17, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v29    # "uidTargetSdkVersion":I
    .restart local v33    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto/16 :goto_2b

    .end local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v29    # "uidTargetSdkVersion":I
    .end local v33    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v2    # "updatedUserIds":[I
    .restart local v5    # "uidTargetSdkVersion":I
    .restart local v6    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v7    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v12, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v15, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v17, "userIds":[I
    :catchall_17
    move-exception v0

    move/from16 v29, v5

    move-object/from16 v20, v7

    move-object v4, v8

    move-object/from16 v33, v11

    move-object v8, v12

    move-object v11, v15

    move-object/from16 v12, v17

    move-object/from16 v17, v6

    move/from16 v9, p2

    move-object/from16 v3, p4

    move-object v5, v2

    .end local v5    # "uidTargetSdkVersion":I
    .end local v6    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v12, "userIds":[I
    .local v17, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v29    # "uidTargetSdkVersion":I
    .restart local v33    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto/16 :goto_2b

    .end local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v29    # "uidTargetSdkVersion":I
    .end local v33    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v4    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v5    # "uidTargetSdkVersion":I
    .restart local v6    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v7    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v12, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v15    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v17, "userIds":[I
    :catchall_18
    move-exception v0

    move-object/from16 v23, v4

    move/from16 v29, v5

    move-object/from16 v20, v7

    move-object v4, v8

    move-object/from16 v33, v11

    move-object v8, v12

    move-object v11, v15

    move-object/from16 v12, v17

    move-object/from16 v17, v6

    move/from16 v9, p2

    move-object/from16 v3, p4

    move-object v5, v2

    .end local v4    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v5    # "uidTargetSdkVersion":I
    .end local v6    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v12, "userIds":[I
    .local v17, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v29    # "uidTargetSdkVersion":I
    .restart local v33    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto/16 :goto_2b

    .end local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v29    # "uidTargetSdkVersion":I
    .end local v33    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v4    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v5    # "uidTargetSdkVersion":I
    .restart local v6    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v7    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v12, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v15    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v17, "userIds":[I
    :cond_58
    move-object/from16 v23, v4

    move/from16 v29, v5

    move-object/from16 v20, v7

    move-object v4, v8

    move-object/from16 v33, v11

    move-object v8, v12

    move-object v11, v15

    move-object/from16 v12, v17

    const/4 v0, 0x0

    const/4 v10, 0x1

    move-object/from16 v17, v6

    .end local v4    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v5    # "uidTargetSdkVersion":I
    .end local v6    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v12, "userIds":[I
    .local v17, "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v29    # "uidTargetSdkVersion":I
    .restart local v33    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :try_start_2a
    monitor-exit v13
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_19

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2974
    move/from16 v9, p2

    invoke-direct {v1, v4, v9, v12, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkIfLegacyStorageOpsNeedToBeUpdated(Lcom/android/server/pm/pkg/AndroidPackage;Z[I[I)[I

    move-result-object v2

    .line 2985
    if-eqz p4, :cond_5c

    .line 2986
    if-eqz p3, :cond_59

    if-eqz v9, :cond_59

    if-nez v19, :cond_5b

    :cond_59
    if-eqz v18, :cond_5a

    goto :goto_29

    :cond_5a
    move v10, v0

    .line 2988
    :cond_5b
    :goto_29
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    .line 2986
    move-object/from16 v3, p4

    invoke-virtual {v3, v2, v10, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionUpdated([IZI)V

    goto :goto_2a

    .line 2985
    :cond_5c
    move-object/from16 v3, p4

    .line 2990
    :goto_2a
    return-void

    .line 2972
    :catchall_19
    move-exception v0

    move/from16 v9, p2

    move-object/from16 v3, p4

    move-object v5, v2

    goto :goto_2b

    .end local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v29    # "uidTargetSdkVersion":I
    .end local v33    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v2, "userIds":[I
    .restart local v4    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v5    # "uidTargetSdkVersion":I
    .restart local v6    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v7    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v12, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v15    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v22    # "updatedUserIds":[I
    :catchall_1a
    move-exception v0

    move/from16 v9, p2

    move-object/from16 v3, p4

    move-object/from16 v23, v4

    move/from16 v29, v5

    move-object/from16 v17, v6

    move-object/from16 v20, v7

    move-object v4, v8

    move-object/from16 v33, v11

    move-object v8, v12

    move-object v11, v15

    move-object v12, v2

    move-object/from16 v5, v22

    .end local v2    # "userIds":[I
    .end local v4    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v6    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v22    # "updatedUserIds":[I
    .local v5, "updatedUserIds":[I
    .restart local v8    # "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "shouldGrantInternalPermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v12, "userIds":[I
    .restart local v17    # "isPrivilegedPermissionAllowlisted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v20    # "shouldGrantSignaturePermission":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v29    # "uidTargetSdkVersion":I
    .restart local v33    # "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_2b
    :try_start_2b
    monitor-exit v13
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1b

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :catchall_1b
    move-exception v0

    goto :goto_2b
.end method

.method private revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 9
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 4177
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4178
    const-wide/16 v2, 0x0

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    move-object v1, p1

    .end local p1    # "pName":Ljava/lang/String;
    .local v1, "pName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 4180
    .local p1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 4182
    return-void

    .line 4185
    :cond_0
    invoke-direct {p0, v1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 4188
    const/16 v5, 0x3e8

    const/4 v7, 0x0

    move-object v3, p2

    move v4, p3

    move v6, p4

    move-object v8, p5

    move-object v2, v1

    move-object v1, p0

    .end local v1    # "pName":Ljava/lang/String;
    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "userId":I
    .end local p5    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    .local v2, "pName":Ljava/lang/String;
    .local v3, "permissionName":Ljava/lang/String;
    .local v4, "overridePolicy":Z
    .local v6, "userId":I
    .local v8, "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :try_start_0
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 4201
    .end local v2    # "pName":Ljava/lang/String;
    .restart local v1    # "pName":Ljava/lang/String;
    goto :goto_0

    .line 4194
    .end local v1    # "pName":Ljava/lang/String;
    .restart local v2    # "pName":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object p2, v0

    .line 4195
    .end local v2    # "pName":Ljava/lang/String;
    .restart local v1    # "pName":Ljava/lang/String;
    .local p2, "e":Ljava/lang/IllegalArgumentException;
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to revoke "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "PermissionManager"

    invoke-static {p4, p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4185
    .end local v3    # "permissionName":Ljava/lang/String;
    .end local v4    # "overridePolicy":Z
    .end local v6    # "userId":I
    .end local v8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    .local p2, "permissionName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "userId":I
    .restart local p5    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :cond_1
    move-object v3, p2

    move v4, p3

    move v6, p4

    move-object v8, p5

    .line 4203
    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "userId":I
    .end local p5    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    .restart local v3    # "permissionName":Ljava/lang/String;
    .restart local v4    # "overridePolicy":Z
    .restart local v6    # "userId":I
    .restart local v8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :goto_0
    return-void
.end method

.method private revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/UidPermissionState;Ljava/lang/String;Ljava/util/Collection;II[I)[I
    .locals 13
    .param p1, "ps"    # Lcom/android/server/pm/permission/UidPermissionState;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "uidTargetSdkVersion"    # I
    .param p5, "userId"    # I
    .param p6, "updatedUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;II[I)[I"
        }
    .end annotation

    .line 3020
    .local p3, "uidImplicitPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v0, 0x17

    const/4 v1, 0x0

    move/from16 v2, p4

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3022
    .local v0, "supportsRuntimePermissions":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/pm/permission/UidPermissionState;->getGrantedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object/from16 v4, p6

    .end local p6    # "updatedUserIds":[I
    .local v4, "updatedUserIds":[I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3023
    .local v5, "permission":Ljava/lang/String;
    move-object/from16 v6, p3

    invoke-interface {v6, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 3024
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7, v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v7

    .line 3025
    .local v7, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3026
    invoke-virtual {p1, v5}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v8

    .line 3027
    .local v8, "flags":I
    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_3

    .line 3028
    const/16 v9, 0x80

    .line 3033
    .local v9, "flagsToRemove":I
    const/4 v10, 0x0

    .line 3034
    .local v10, "preserveGrant":Z
    sget-object v11, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->NEARBY_DEVICES_PERMISSIONS:Ljava/util/List;

    invoke-static {v11, v5}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v11

    nop

    if-eqz v11, :cond_1

    .line 3035
    const-string v11, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {p1, v11}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v12

    nop

    if-eqz v12, :cond_1

    .line 3037
    invoke-virtual {p1, v11}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v11

    and-int/lit16 v11, v11, 0x88

    if-nez v11, :cond_1

    .line 3041
    const/4 v10, 0x1

    .line 3044
    :cond_1
    and-int/lit8 v11, v8, 0x34

    if-nez v11, :cond_2

    if-eqz v0, :cond_2

    if-nez v10, :cond_2

    .line 3047
    invoke-virtual {p1, v7}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    .line 3055
    or-int/lit8 v9, v9, 0x3

    .line 3058
    :cond_2
    invoke-virtual {p1, v7, v9, v1}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 3059
    move/from16 v11, p5

    invoke-static {v4, v11}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    goto :goto_2

    .line 3027
    .end local v9    # "flagsToRemove":I
    .end local v10    # "preserveGrant":Z
    :cond_3
    move/from16 v11, p5

    goto :goto_2

    .line 3025
    .end local v8    # "flags":I
    :cond_4
    move/from16 v11, p5

    goto :goto_2

    .line 3023
    .end local v7    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_5
    move/from16 v11, p5

    .line 3063
    .end local v5    # "permission":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 3065
    :cond_6
    move-object/from16 v6, p3

    move/from16 v11, p5

    return-object v4
.end method

.method private revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 1541
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 1543
    return-void
.end method

.method private revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "overrideKill"    # Z
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "reason"    # Ljava/lang/String;
    .param p8, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 1555
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v3, p6

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1556
    const-string v0, "PermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    return-void

    .line 1560
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v4, "revokeRuntimePermission"

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const/4 v5, 0x1

    const-string/jumbo v6, "revokeRuntimePermission"

    const/4 v4, 0x1

    move/from16 v2, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1569
    move-object v9, v1

    move v10, v2

    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v11

    .line 1570
    .local v11, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v11, :cond_1

    .line 1571
    const-string v0, "PermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    return-void

    .line 1574
    :cond_1
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v10, v3, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1580
    iget-object v2, v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 1581
    :try_start_0
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 1582
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_15

    .line 1585
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v4

    move v12, v4

    .line 1586
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .local v12, "isRolePermission":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1587
    if-eqz v12, :cond_3

    .line 1589
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq v10, v0, :cond_2

    invoke-direct {v9, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mayManageRolePermission(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    nop

    :goto_0
    move v13, v1

    .line 1592
    .local v13, "mayRevokeRolePermission":Z
    iget-object v1, v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 1593
    :try_start_1
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 1594
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_14

    .line 1598
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v2

    move v14, v2

    .line 1599
    .local v14, "isRuntimePermission":Z
    if-nez v14, :cond_4

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isDevelopment()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    goto :goto_1

    .line 1601
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRole()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1602
    if-eqz v13, :cond_6

    goto :goto_1

    .line 1603
    :cond_6
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is managed by role"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v11    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v12    # "isRolePermission":Z
    .end local v13    # "mayRevokeRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "overrideKill":Z
    .end local p5    # "callingUid":I
    .end local p6    # "userId":I
    .end local p7    # "reason":Ljava/lang/String;
    .end local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v2

    .line 1650
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v14    # "isRuntimePermission":Z
    .restart local v11    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v12    # "isRolePermission":Z
    .restart local v13    # "mayRevokeRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "overrideKill":Z
    .restart local p5    # "callingUid":I
    .restart local p6    # "userId":I
    .restart local p7    # "reason":Ljava/lang/String;
    .restart local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 1606
    .restart local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v14    # "isRuntimePermission":Z
    :cond_7
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requested by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not a changeable permission type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v11    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v12    # "isRolePermission":Z
    .end local v13    # "mayRevokeRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "overrideKill":Z
    .end local p5    # "callingUid":I
    .end local p6    # "userId":I
    .end local p7    # "reason":Ljava/lang/String;
    .end local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v2

    .line 1610
    .restart local v11    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v12    # "isRolePermission":Z
    .restart local v13    # "mayRevokeRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "overrideKill":Z
    .restart local p5    # "callingUid":I
    .restart local p6    # "userId":I
    .restart local p7    # "reason":Ljava/lang/String;
    .restart local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :goto_1
    invoke-direct {v9, v11, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v2

    .line 1611
    .local v2, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v2, :cond_8

    .line 1612
    const-string v4, "PermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing permissions state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1617
    :cond_8
    :try_start_2
    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1618
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_2

    .line 1619
    :cond_9
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has not requested permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v11    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v12    # "isRolePermission":Z
    .end local v13    # "mayRevokeRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "overrideKill":Z
    .end local p5    # "callingUid":I
    .end local p6    # "userId":I
    .end local p7    # "reason":Ljava/lang/String;
    .end local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v4

    .line 1627
    .restart local v11    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v12    # "isRolePermission":Z
    .restart local v13    # "mayRevokeRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "overrideKill":Z
    .restart local p5    # "callingUid":I
    .restart local p6    # "userId":I
    .restart local p7    # "reason":Ljava/lang/String;
    .restart local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :cond_a
    :goto_2
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    const/16 v5, 0x17

    if-ge v4, v5, :cond_b

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1628
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1631
    :cond_b
    :try_start_3
    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionFlags(Ljava/lang/String;)I

    move-result v4

    .line 1633
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_d

    .line 1634
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_c

    goto :goto_3

    .line 1635
    :cond_c
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Non-System UID cannot revoke system fixed permission "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v11    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v12    # "isRolePermission":Z
    .end local v13    # "mayRevokeRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "overrideKill":Z
    .end local p5    # "callingUid":I
    .end local p6    # "userId":I
    .end local p7    # "reason":Ljava/lang/String;
    .end local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v5

    .line 1638
    .restart local v11    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v12    # "isRolePermission":Z
    .restart local v13    # "mayRevokeRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "overrideKill":Z
    .restart local p5    # "callingUid":I
    .restart local p6    # "userId":I
    .restart local p7    # "reason":Ljava/lang/String;
    .restart local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :cond_d
    :goto_3
    if-nez p3, :cond_e

    and-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_f

    :cond_e
    goto :goto_4

    .line 1639
    :cond_f
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot revoke policy fixed permission "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v11    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v12    # "isRolePermission":Z
    .end local v13    # "mayRevokeRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "overrideKill":Z
    .end local p5    # "callingUid":I
    .end local p6    # "userId":I
    .end local p7    # "reason":Ljava/lang/String;
    .end local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v5

    .line 1647
    .restart local v11    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v12    # "isRolePermission":Z
    .restart local v13    # "mayRevokeRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "overrideKill":Z
    .restart local p5    # "callingUid":I
    .restart local p6    # "userId":I
    .restart local p7    # "reason":Ljava/lang/String;
    .restart local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :goto_4
    invoke-virtual {v2, v0}, Lcom/android/server/pm/permission/UidPermissionState;->revokePermission(Lcom/android/server/pm/permission/Permission;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1648
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 1647
    :cond_10
    nop

    .line 1650
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v2    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v4    # "flags":I
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1652
    if-eqz v14, :cond_11

    .line 1653
    const/16 v0, 0x4dd

    invoke-direct {v9, v0, v8, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1657
    :cond_11
    if-eqz p8, :cond_13

    .line 1658
    if-eqz v14, :cond_12

    .line 1659
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v3, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    move/from16 v5, p4

    move-object/from16 v4, p7

    move-object/from16 v1, p8

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V

    goto :goto_5

    .line 1662
    :cond_12
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionRevoked()V

    .line 1665
    :cond_13
    :goto_5
    return-void

    .line 1595
    .end local v14    # "isRuntimePermission":Z
    .restart local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_14
    :try_start_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v11    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v12    # "isRolePermission":Z
    .end local v13    # "mayRevokeRolePermission":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "overrideKill":Z
    .end local p5    # "callingUid":I
    .end local p6    # "userId":I
    .end local p7    # "reason":Ljava/lang/String;
    .end local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v2

    .line 1650
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v11    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v12    # "isRolePermission":Z
    .restart local v13    # "mayRevokeRolePermission":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "overrideKill":Z
    .restart local p5    # "callingUid":I
    .restart local p6    # "userId":I
    .restart local p7    # "reason":Ljava/lang/String;
    .restart local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :goto_6
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 1586
    .end local v12    # "isRolePermission":Z
    .end local v13    # "mayRevokeRolePermission":Z
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 1583
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    :cond_15
    :try_start_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v11    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p3    # "overridePolicy":Z
    .end local p4    # "overrideKill":Z
    .end local p5    # "callingUid":I
    .end local p6    # "userId":I
    .end local p7    # "reason":Ljava/lang/String;
    .end local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v1

    .line 1586
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    .restart local v11    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p3    # "overridePolicy":Z
    .restart local p4    # "overrideKill":Z
    .restart local p5    # "callingUid":I
    .restart local p6    # "userId":I
    .restart local p7    # "reason":Ljava/lang/String;
    .restart local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :goto_7
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 1576
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private revokeRuntimePermissionsIfGroupChangedInternal(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 15
    .param p1, "newPackage"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "oldPackage"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2186
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 2187
    .local v0, "numOldPackagePermissions":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2190
    .local v1, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2191
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 2193
    .local v3, "permission":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2194
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2195
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2194
    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2190
    .end local v3    # "permission":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 2199
    .end local v2    # "i":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2200
    .local v10, "callingUid":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v2

    .line 2201
    .local v2, "numNewPackagePermissions":I
    const/4 v3, 0x0

    move v11, v3

    .local v11, "newPermissionNum":I
    :goto_1
    if-ge v11, v2, :cond_4

    .line 2203
    nop

    .line 2204
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 2205
    .local v12, "newPermission":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    invoke-static {v12}, Lcom/android/internal/pm/pkg/component/ParsedPermissionUtils;->getProtection(Lcom/android/internal/pm/pkg/component/ParsedPermission;)I

    move-result v13

    .line 2207
    .local v13, "newProtection":I
    and-int/lit8 v3, v13, 0x1

    if-eqz v3, :cond_3

    .line 2208
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2210
    .local v6, "permissionName":Ljava/lang/String;
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2211
    const/4 v3, 0x0

    :goto_2
    move-object v9, v3

    goto :goto_3

    :cond_2
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 2212
    .local v9, "newPermissionGroupName":Ljava/lang/String;
    :goto_3
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    .line 2215
    .local v8, "oldPermissionGroupName":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 2216
    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2217
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v5

    .line 2218
    .local v5, "userIds":[I
    iget-object v14, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;

    move-object v4, p0

    move-object/from16 v7, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v14, v3}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 2202
    .end local v5    # "userIds":[I
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v8    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v9    # "newPermissionGroupName":Ljava/lang/String;
    .end local v12    # "newPermission":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    .end local v13    # "newProtection":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2201
    :cond_4
    nop

    .line 2245
    .end local v11    # "newPermissionNum":I
    return-void
.end method

.method private revokeRuntimePermissionsIfPermissionDefinitionChangedInternal(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2255
    .local p1, "permissionsToRevoke":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    .line 2256
    .local v3, "userIds":[I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 2257
    .local v7, "numPermissions":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2259
    .local v6, "callingUid":I
    const/4 v0, 0x0

    move v8, v0

    .local v8, "permNum":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 2260
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 2262
    .local v4, "permName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 2263
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 2264
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    goto :goto_1

    .line 2268
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2267
    .restart local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v5

    .line 2268
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .local v5, "isInternalPermission":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2269
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 2265
    .end local v5    # "isInternalPermission":Z
    .restart local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2259
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v4    # "permName":Ljava/lang/String;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2268
    .restart local v4    # "permName":Ljava/lang/String;
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 2259
    .end local v4    # "permName":Ljava/lang/String;
    :cond_2
    nop

    .line 2313
    .end local v8    # "permNum":I
    return-void
.end method

.method private revokeSharedUserPermissionsForLeavingPackageInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;I)V
    .locals 11
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "appId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    .line 3823
    .local p3, "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    if-nez p1, :cond_0

    .line 3824
    const-string v0, "PermissionManager"

    const-string v1, "Trying to update info for null package. Just ignoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    return-void

    .line 3829
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3830
    return-void

    .line 3833
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3834
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3833
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 3835
    .local v0, "disabledPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 3837
    .local v1, "isShadowingSystemPkg":Z
    :goto_0
    const/4 v2, 0x0

    .line 3839
    .local v2, "shouldKillUid":Z
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3841
    .local v4, "eachPerm":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3842
    .local v5, "used":Z
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3843
    .local v7, "sharedUserpkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v7, :cond_3

    .line 3844
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3845
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3846
    const/4 v5, 0x1

    .line 3847
    goto :goto_3

    .line 3849
    .end local v7    # "sharedUserpkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_3
    goto :goto_2

    .line 3850
    :cond_4
    :goto_3
    if-eqz v5, :cond_5

    .line 3851
    goto :goto_1

    .line 3856
    :cond_5
    if-eqz v1, :cond_6

    .line 3857
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3858
    goto :goto_1

    .line 3861
    :cond_6
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6

    .line 3862
    :try_start_0
    invoke-direct {p0, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v7

    .line 3863
    .local v7, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v7, :cond_7

    .line 3864
    const-string v8, "PermissionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing permissions state for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " and user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3866
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto/16 :goto_1

    .line 3879
    .end local v7    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 3869
    .restart local v7    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_7
    :try_start_1
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v8, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v8

    .line 3870
    .local v8, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v8, :cond_8

    .line 3871
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto/16 :goto_1

    .line 3876
    :cond_8
    :try_start_2
    invoke-virtual {v8}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v8}, Lcom/android/server/pm/permission/Permission;->hasGids()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3877
    const/4 v2, 0x1

    .line 3879
    .end local v7    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v8    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_9
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3880
    .end local v4    # "eachPerm":Ljava/lang/String;
    .end local v5    # "used":Z
    goto/16 :goto_1

    .line 3879
    .restart local v4    # "eachPerm":Ljava/lang/String;
    .restart local v5    # "used":Z
    :goto_4
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v3

    .line 3883
    .end local v4    # "eachPerm":Ljava/lang/String;
    .end local v5    # "used":Z
    :cond_a
    if-eqz v2, :cond_b

    .line 3884
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda15;

    invoke-direct {v4, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda15;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3889
    :cond_b
    return-void
.end method

.method private revokeStoragePermissionsIfScopeExpandedInternal(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 22
    .param p1, "newPackage"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "oldPackage"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2086
    move-object/from16 v1, p0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/4 v10, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 2087
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    move v11, v0

    .line 2088
    .local v11, "downgradedSdk":Z
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 2089
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v10

    :goto_1
    move v12, v0

    .line 2090
    .local v12, "upgradedSdk":Z
    if-nez v12, :cond_2

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2091
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v10

    :goto_2
    move v13, v0

    .line 2093
    .local v13, "newlyRequestsLegacy":Z
    if-nez v13, :cond_3

    if-nez v11, :cond_3

    .line 2094
    return-void

    .line 2097
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2098
    .local v5, "callingUid":I
    invoke-direct {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v14

    array-length v15, v14

    move v2, v10

    :goto_3
    if-ge v2, v15, :cond_b

    aget v6, v14, v2

    .line 2099
    .local v6, "userId":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 2100
    .local v3, "permName":Ljava/lang/String;
    nop

    .line 2101
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2100
    invoke-virtual {v1, v3, v10, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 2102
    .local v4, "permInfo":Landroid/content/pm/PermissionInfo;
    if-nez v4, :cond_4

    .line 2103
    goto :goto_4

    .line 2105
    :cond_4
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->STORAGE_PERMISSIONS:Ljava/util/List;

    iget-object v7, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    iget-object v7, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2106
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    iget-object v7, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2107
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v0, v10

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v0, 0x1

    :goto_6
    move/from16 v17, v0

    .line 2108
    .local v17, "isStorageOrMedia":Z
    if-nez v17, :cond_7

    .line 2109
    goto :goto_4

    .line 2111
    :cond_7
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v7, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v8, "default:0"

    invoke-virtual {v1, v0, v7, v8, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x14

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    move v0, v10

    :goto_7
    move/from16 v18, v0

    .line 2114
    .local v18, "isSystemOrPolicyFixed":Z
    if-eqz v18, :cond_9

    .line 2115
    goto :goto_4

    .line 2118
    :cond_9
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Revoking permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2120
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " as either the sdk downgraded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " or newly requested legacy full storage "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "171430330"

    filled-new-array {v8, v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 2118
    const v7, 0x534e4554

    invoke-static {v7, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2125
    move v7, v2

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v8, v3

    .end local v3    # "permName":Ljava/lang/String;
    .local v8, "permName":Ljava/lang/String;
    :try_start_1
    iget-object v3, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v19, v8

    .end local v8    # "permName":Ljava/lang/String;
    .local v19, "permName":Ljava/lang/String;
    :try_start_2
    iget-object v8, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v20, v4

    .end local v4    # "permInfo":Landroid/content/pm/PermissionInfo;
    .local v20, "permInfo":Landroid/content/pm/PermissionInfo;
    const/4 v4, 0x0

    move/from16 v21, v7

    const/4 v7, 0x0

    move-object/from16 v9, v20

    .end local v20    # "permInfo":Landroid/content/pm/PermissionInfo;
    .local v9, "permInfo":Landroid/content/pm/PermissionInfo;
    :try_start_3
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2130
    goto :goto_9

    .line 2127
    :catch_0
    move-exception v0

    goto :goto_8

    .end local v9    # "permInfo":Landroid/content/pm/PermissionInfo;
    .restart local v4    # "permInfo":Landroid/content/pm/PermissionInfo;
    :catch_1
    move-exception v0

    move-object v9, v4

    move/from16 v21, v7

    .end local v4    # "permInfo":Landroid/content/pm/PermissionInfo;
    .restart local v9    # "permInfo":Landroid/content/pm/PermissionInfo;
    goto :goto_8

    .end local v9    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v19    # "permName":Ljava/lang/String;
    .restart local v4    # "permInfo":Landroid/content/pm/PermissionInfo;
    .restart local v8    # "permName":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v9, v4

    move/from16 v21, v7

    move-object/from16 v19, v8

    .end local v4    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v8    # "permName":Ljava/lang/String;
    .restart local v9    # "permInfo":Landroid/content/pm/PermissionInfo;
    .restart local v19    # "permName":Ljava/lang/String;
    goto :goto_8

    .end local v9    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v19    # "permName":Ljava/lang/String;
    .restart local v3    # "permName":Ljava/lang/String;
    .restart local v4    # "permInfo":Landroid/content/pm/PermissionInfo;
    :catch_3
    move-exception v0

    move-object/from16 v19, v3

    move-object v9, v4

    move/from16 v21, v7

    .line 2128
    .end local v3    # "permName":Ljava/lang/String;
    .end local v4    # "permInfo":Landroid/content/pm/PermissionInfo;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v9    # "permInfo":Landroid/content/pm/PermissionInfo;
    .restart local v19    # "permName":Ljava/lang/String;
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2129
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2128
    const-string v2, "PermissionManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2131
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v9    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v17    # "isStorageOrMedia":Z
    .end local v18    # "isSystemOrPolicyFixed":Z
    .end local v19    # "permName":Ljava/lang/String;
    :goto_9
    move-object/from16 v1, p0

    move/from16 v2, v21

    goto/16 :goto_4

    .line 2099
    :cond_a
    move/from16 v21, v2

    .line 2098
    .end local v6    # "userId":I
    add-int/lit8 v2, v21, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_3

    .line 2134
    :cond_b
    return-void
.end method

.method private revokeSystemAlertWindowIfUpgradedPast23(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 12
    .param p1, "newPackage"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "oldPackage"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2147
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_4

    .line 2148
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 2149
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 2150
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2155
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 2156
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    move-object v2, v0

    .line 2157
    .local v2, "saw":Lcom/android/server/pm/permission/Permission;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2158
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2159
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 2160
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2161
    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->shouldGrantPermissionBySignature(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 2164
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_2

    aget v10, v3, v5

    .line 2166
    .local v10, "userId":I
    :try_start_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.permission.SYSTEM_ALERT_WINDOW"

    iget-object v11, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    const/4 v9, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2172
    goto :goto_1

    .line 2169
    :catch_0
    move-exception v0

    .line 2170
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v6, "PermissionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unable to revoke SYSTEM_ALERT_WINDOW for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2171
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2170
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2164
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "userId":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2174
    :cond_2
    return-void

    .line 2162
    :cond_3
    :goto_2
    return-void

    .line 2157
    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v2    # "saw":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 2151
    :cond_4
    :goto_3
    return-void
.end method

.method private revokeUnusedSharedUserPermissionsLocked(Ljava/util/Collection;Lcom/android/server/pm/permission/UidPermissionState;)Z
    .locals 7
    .param p2, "uidState"    # Lcom/android/server/pm/permission/UidPermissionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            ")Z"
        }
    .end annotation

    .line 3895
    .local p1, "uidRequestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3898
    .local v0, "runtimePermissionChanged":Z
    invoke-virtual {p2}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v1

    .line 3899
    .local v1, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 3900
    .local v2, "permissionStatesSize":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 3901
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionState;

    .line 3902
    .local v4, "permissionState":Lcom/android/server/pm/permission/PermissionState;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3903
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    .line 3904
    .local v5, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v5, :cond_0

    .line 3905
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3906
    const/4 v0, 0x1

    .line 3900
    .end local v4    # "permissionState":Lcom/android/server/pm/permission/PermissionState;
    .end local v5    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 3912
    .end local v3    # "i":I
    return v0
.end method

.method private setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .line 1258
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1259
    const/4 v0, 0x7

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1263
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1264
    int-to-float v0, p4

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 1266
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p4, :cond_1

    .line 1267
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAllowlistedRestrictedPermissions for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 1273
    .local v0, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v0, :cond_2

    .line 1274
    return v1

    .line 1277
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1278
    .local v3, "callingUid":I
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1279
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1278
    invoke-virtual {v4, p1, v3, v5, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1280
    return v1

    .line 1283
    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    .line 1286
    .local v1, "isCallerPrivileged":Z
    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1287
    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    move-result v4

    .line 1289
    .local v4, "isCallerInstallerOnRecord":Z
    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    goto :goto_1

    .line 1290
    :cond_6
    new-instance v2, Ljava/lang/SecurityException;

    const-string v5, "Modifying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1294
    :goto_1
    and-int/lit8 v5, p3, 0x4

    if-eqz v5, :cond_f

    .line 1295
    if-nez v1, :cond_7

    if-eqz v4, :cond_8

    :cond_7
    goto :goto_2

    .line 1296
    :cond_8
    new-instance v2, Ljava/lang/SecurityException;

    const-string v5, "Modifying upgrade allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1300
    :goto_2
    nop

    .line 1301
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    .line 1302
    .local v5, "allowlistedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    goto :goto_4

    .line 1308
    :cond_a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 1309
    .local v6, "permissionCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v6, :cond_f

    .line 1310
    if-eqz v5, :cond_b

    .line 1311
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    :cond_b
    if-eqz v1, :cond_d

    .line 1309
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1313
    :cond_d
    new-instance v2, Ljava/lang/SecurityException;

    const-string v8, "Adding to upgrade allowlist requiresandroid.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v2, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1303
    .end local v6    # "permissionCount":I
    .end local v7    # "i":I
    :goto_4
    if-eqz v5, :cond_e

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1304
    :cond_e
    return v2

    .line 1320
    .end local v5    # "allowlistedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    and-int/lit8 v5, p3, 0x2

    if-eqz v5, :cond_12

    .line 1321
    if-nez v1, :cond_10

    if-eqz v4, :cond_11

    :cond_10
    goto :goto_5

    .line 1322
    :cond_11
    new-instance v2, Ljava/lang/SecurityException;

    const-string v5, "Modifying installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1328
    :cond_12
    :goto_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1330
    .local v5, "identity":J
    :try_start_0
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1332
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1333
    nop

    .line 1335
    return v2

    .line 1332
    :catchall_0
    move-exception v2

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1333
    throw v2
.end method

.method private setAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;II)V
    .locals 20
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p3, "allowlistFlags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 3685
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v6, p4

    const/4 v0, 0x0

    .line 3686
    .local v0, "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 3687
    .local v2, "updatePermissions":Z
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 3689
    .local v3, "myUid":I
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v7, v0

    move v8, v2

    .end local v0    # "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "updatePermissions":Z
    .local v7, "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v8, "updatePermissions":Z
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 3691
    .local v2, "permissionName":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 3692
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 3693
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isHardOrSoftRestricted()Z

    move-result v5

    if-nez v5, :cond_0

    move v9, v3

    move-object v3, v2

    goto/16 :goto_7

    .line 3697
    :cond_0
    invoke-direct {v1, v10, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3698
    .local v5, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v5, :cond_1

    .line 3699
    :try_start_1
    const-string v9, "PermissionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Missing permissions state for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " and user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    move v9, v3

    goto/16 :goto_8

    .line 3704
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v5    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_0
    move-exception v0

    move v9, v3

    move-object v3, v2

    goto/16 :goto_9

    .line 3703
    .restart local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v5    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_1
    :try_start_2
    invoke-virtual {v5, v2}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v9

    move v0, v9

    .line 3704
    .end local v5    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v0, "isGranted":Z
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3706
    if-eqz v0, :cond_3

    .line 3707
    if-nez v7, :cond_2

    .line 3708
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v4

    .line 3710
    :cond_2
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object v13, v7

    goto :goto_1

    .line 3706
    :cond_3
    move-object v13, v7

    .line 3713
    .end local v7    # "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v13, "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2, v3, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v14

    .line 3716
    .local v14, "oldFlags":I
    move v4, v14

    .line 3717
    .local v4, "newFlags":I
    const/4 v5, 0x0

    .line 3718
    .local v5, "mask":I
    move/from16 v7, p3

    move v15, v7

    .line 3719
    .local v15, "allowlistFlagsCopy":I
    :goto_2
    const/4 v7, 0x1

    if-eqz v15, :cond_7

    .line 3720
    invoke-static {v15}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v9

    shl-int/2addr v7, v9

    .line 3721
    .local v7, "flag":I
    not-int v9, v7

    and-int/2addr v15, v9

    .line 3722
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 3733
    :pswitch_1
    or-int/lit16 v5, v5, 0x2000

    .line 3734
    if-eqz v11, :cond_4

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3735
    or-int/lit16 v4, v4, 0x2000

    goto :goto_3

    .line 3737
    :cond_4
    and-int/lit16 v4, v4, -0x2001

    .line 3740
    goto :goto_3

    .line 3742
    :pswitch_2
    or-int/lit16 v5, v5, 0x800

    .line 3743
    if-eqz v11, :cond_5

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3744
    or-int/lit16 v4, v4, 0x800

    goto :goto_3

    .line 3746
    :cond_5
    and-int/lit16 v4, v4, -0x801

    goto :goto_3

    .line 3724
    :pswitch_3
    or-int/lit16 v5, v5, 0x1000

    .line 3725
    if-eqz v11, :cond_6

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3726
    or-int/lit16 v4, v4, 0x1000

    goto :goto_3

    .line 3728
    :cond_6
    and-int/lit16 v4, v4, -0x1001

    .line 3731
    nop

    .line 3751
    .end local v7    # "flag":I
    :goto_3
    goto :goto_2

    .line 3753
    :cond_7
    if-ne v14, v4, :cond_8

    .line 3754
    move-object v7, v13

    goto/16 :goto_0

    .line 3757
    :cond_8
    const/16 v16, 0x1

    .line 3759
    .end local v8    # "updatePermissions":Z
    .local v16, "updatePermissions":Z
    and-int/lit16 v8, v14, 0x3800

    const/4 v9, 0x0

    if-eqz v8, :cond_9

    move v8, v7

    goto :goto_4

    :cond_9
    move v8, v9

    :goto_4
    move/from16 v17, v8

    .line 3761
    .local v17, "wasAllowlisted":Z
    and-int/lit16 v8, v4, 0x3800

    if-eqz v8, :cond_a

    goto :goto_5

    :cond_a
    move v7, v9

    :goto_5
    move/from16 v18, v7

    .line 3768
    .local v18, "isAllowlisted":Z
    and-int/lit8 v7, v14, 0x4

    if-eqz v7, :cond_b

    .line 3769
    if-nez v18, :cond_b

    if-eqz v0, :cond_b

    .line 3770
    or-int/lit8 v5, v5, 0x4

    .line 3771
    and-int/lit8 v4, v4, -0x5

    .line 3777
    :cond_b
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v7

    const/16 v8, 0x17

    if-ge v7, v8, :cond_c

    if-nez v17, :cond_c

    if-eqz v18, :cond_c

    .line 3779
    or-int/lit8 v5, v5, 0x40

    .line 3780
    or-int/lit8 v4, v4, 0x40

    move/from16 v19, v5

    move v5, v4

    move/from16 v4, v19

    goto :goto_6

    .line 3783
    :cond_c
    move/from16 v19, v5

    move v5, v4

    move/from16 v4, v19

    .local v4, "mask":I
    .local v5, "newFlags":I
    :goto_6
    move v6, v3

    move-object v3, v2

    .end local v2    # "permissionName":Ljava/lang/String;
    .local v3, "permissionName":Ljava/lang/String;
    .local v6, "myUid":I
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v7, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 3785
    move v9, v6

    .end local v0    # "isGranted":Z
    .end local v3    # "permissionName":Ljava/lang/String;
    .end local v4    # "mask":I
    .end local v5    # "newFlags":I
    .end local v6    # "myUid":I
    .end local v14    # "oldFlags":I
    .end local v15    # "allowlistFlagsCopy":I
    .end local v17    # "wasAllowlisted":Z
    .end local v18    # "isAllowlisted":Z
    .local v9, "myUid":I
    move/from16 v6, p4

    move v3, v9

    move-object v7, v13

    move/from16 v8, v16

    goto/16 :goto_0

    .line 3704
    .end local v9    # "myUid":I
    .end local v13    # "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "updatePermissions":Z
    .restart local v2    # "permissionName":Ljava/lang/String;
    .local v3, "myUid":I
    .local v7, "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "updatePermissions":Z
    :catchall_1
    move-exception v0

    move v9, v3

    move-object v3, v2

    .end local v2    # "permissionName":Ljava/lang/String;
    .local v3, "permissionName":Ljava/lang/String;
    .restart local v9    # "myUid":I
    goto :goto_9

    .line 3693
    .end local v9    # "myUid":I
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v2    # "permissionName":Ljava/lang/String;
    .local v3, "myUid":I
    :cond_d
    move v9, v3

    move-object v3, v2

    .line 3694
    .end local v2    # "permissionName":Ljava/lang/String;
    .local v3, "permissionName":Ljava/lang/String;
    .restart local v9    # "myUid":I
    :goto_7
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3689
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v9    # "myUid":I
    .local v3, "myUid":I
    :goto_8
    move/from16 v6, p4

    move v3, v9

    .end local v3    # "myUid":I
    .restart local v9    # "myUid":I
    goto/16 :goto_0

    .line 3704
    .local v3, "permissionName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    :goto_9
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 3787
    .end local v9    # "myUid":I
    .local v3, "myUid":I
    :cond_e
    move v9, v3

    .end local v3    # "myUid":I
    .restart local v9    # "myUid":I
    if-eqz v8, :cond_12

    .line 3789
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    const/4 v3, 0x0

    move/from16 v6, p4

    move-object v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->restorePermissionState(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V

    .line 3793
    if-nez v7, :cond_f

    .line 3794
    return-void

    .line 3797
    :cond_f
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 3798
    .local v3, "oldGrantedCount":I
    const/4 v0, 0x0

    move v4, v0

    .local v4, "j":I
    :goto_a
    if-ge v4, v3, :cond_13

    .line 3799
    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 3802
    .local v5, "permissionName":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v10

    .line 3803
    :try_start_5
    invoke-direct {v1, v2, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v0

    .line 3804
    .local v0, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v0, :cond_10

    .line 3805
    const-string v12, "PermissionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Missing permissions state for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " and user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3807
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_b

    .line 3810
    .end local v0    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_3
    move-exception v0

    goto :goto_c

    .line 3809
    .restart local v0    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_10
    :try_start_6
    invoke-virtual {v0, v5}, Lcom/android/server/pm/permission/UidPermissionState;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v12

    .line 3810
    .end local v0    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v12, "isGranted":Z
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 3811
    if-nez v12, :cond_11

    .line 3812
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 3813
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v10

    invoke-static {v6, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    .line 3812
    const/4 v13, 0x0

    invoke-virtual {v0, v10, v6, v13}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;)V

    .line 3814
    goto :goto_d

    .line 3798
    .end local v5    # "permissionName":Ljava/lang/String;
    .end local v12    # "isGranted":Z
    :cond_11
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 3810
    .restart local v5    # "permissionName":Ljava/lang/String;
    :goto_c
    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 3787
    .end local v3    # "oldGrantedCount":I
    .end local v4    # "j":I
    .end local v5    # "permissionName":Ljava/lang/String;
    :cond_12
    move/from16 v6, p4

    move-object v2, v10

    .line 3818
    :cond_13
    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArraySet;I[I)[I
    .locals 21
    .param p1, "origPs"    # Lcom/android/server/pm/permission/UidPermissionState;
    .param p2, "ps"    # Lcom/android/server/pm/permission/UidPermissionState;
    .param p3, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p5, "userId"    # I
    .param p6, "updatedUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Lcom/android/server/pm/permission/UidPermissionState;",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I[I)[I"
        }
    .end annotation

    .line 3159
    .local p4, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3160
    .local v2, "pkgName":Ljava/lang/String;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 3162
    .local v3, "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    nop

    .line 3163
    invoke-direct {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object v4

    .line 3164
    .local v4, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 3165
    .local v5, "numSplitPerms":I
    const/4 v6, 0x0

    .local v6, "splitPermNum":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 3166
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 3168
    .local v7, "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    invoke-virtual {v7}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v8

    .line 3169
    .local v8, "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 3170
    .local v9, "numNewPerms":I
    const/4 v10, 0x0

    .local v10, "newPermNum":I
    :goto_1
    if-ge v10, v9, :cond_1

    .line 3171
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3173
    .local v11, "newPerm":Ljava/lang/String;
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    .line 3174
    .local v12, "splitPerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v12, :cond_0

    .line 3175
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    move-object v12, v13

    .line 3176
    invoke-virtual {v3, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3179
    :cond_0
    invoke-virtual {v7}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3170
    .end local v11    # "newPerm":Ljava/lang/String;
    .end local v12    # "splitPerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 3165
    .end local v7    # "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .end local v8    # "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "numNewPerms":I
    .end local v10    # "newPermNum":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 3183
    .end local v6    # "splitPermNum":I
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 3184
    .local v6, "numNewImplicitPerms":I
    const/4 v7, 0x0

    move v8, v7

    move-object/from16 v7, p6

    .end local p6    # "updatedUserIds":[I
    .local v7, "updatedUserIds":[I
    .local v8, "newImplicitPermNum":I
    :goto_2
    if-ge v8, v6, :cond_c

    .line 3186
    move-object/from16 v9, p4

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3187
    .local v10, "newPerm":Ljava/lang/String;
    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 3189
    .local v11, "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v11, :cond_b

    .line 3190
    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v12, v10}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v12

    .line 3191
    .local v12, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v12, :cond_a

    .line 3195
    invoke-virtual {v12}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 3197
    const-string v13, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    nop

    if-nez v13, :cond_3

    sget-object v13, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_AURAL_PERMISSIONS:Ljava/util/Set;

    .line 3198
    invoke-interface {v13, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    nop

    if-nez v13, :cond_3

    sget-object v13, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->READ_MEDIA_VISUAL_PERMISSIONS:Ljava/util/Set;

    .line 3199
    invoke-interface {v13, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 3200
    const/16 v13, 0x80

    invoke-virtual {v1, v12, v13, v13}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    .line 3204
    :cond_3
    move/from16 v13, p5

    invoke-static {v7, v13}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    .line 3206
    move-object/from16 v14, p1

    invoke-virtual {v14, v11}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Landroid/util/ArraySet;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 3207
    const/4 v15, 0x0

    .line 3208
    .local v15, "inheritsFromInstallPerm":Z
    const/16 v16, 0x0

    move-object/from16 v17, v2

    move/from16 v2, v16

    .local v2, "sourcePermNum":I
    .local v17, "pkgName":Ljava/lang/String;
    :goto_3
    move-object/from16 v16, v3

    .end local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v16, "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 3210
    invoke-virtual {v11, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3211
    .local v3, "sourcePerm":Ljava/lang/String;
    move/from16 p6, v2

    .end local v2    # "sourcePermNum":I
    .local p6, "sourcePermNum":I
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    .line 3212
    .local v2, "sourceBp":Lcom/android/server/pm/permission/Permission;
    if-eqz v2, :cond_5

    .line 3216
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v18

    if-nez v18, :cond_4

    .line 3217
    const/4 v15, 0x1

    .line 3218
    move-object/from16 v19, v4

    move/from16 v20, v5

    goto :goto_4

    .line 3216
    :cond_4
    nop

    .line 3209
    .end local v2    # "sourceBp":Lcom/android/server/pm/permission/Permission;
    .end local v3    # "sourcePerm":Ljava/lang/String;
    add-int/lit8 v2, p6, 0x1

    move-object/from16 v3, v16

    .end local p6    # "sourcePermNum":I
    .local v2, "sourcePermNum":I
    goto :goto_3

    .line 3213
    .local v2, "sourceBp":Lcom/android/server/pm/permission/Permission;
    .restart local v3    # "sourcePerm":Ljava/lang/String;
    .restart local p6    # "sourcePermNum":I
    :cond_5
    move-object/from16 v18, v2

    .end local v2    # "sourceBp":Lcom/android/server/pm/permission/Permission;
    .local v18, "sourceBp":Lcom/android/server/pm/permission/Permission;
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object/from16 v19, v4

    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .local v19, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v5

    .end local v5    # "numSplitPerms":I
    .local v20, "numSplitPerms":I
    const-string v5, "Unknown source permission in split permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3208
    .end local v3    # "sourcePerm":Ljava/lang/String;
    .end local v18    # "sourceBp":Lcom/android/server/pm/permission/Permission;
    .end local v19    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v20    # "numSplitPerms":I
    .end local p6    # "sourcePermNum":I
    .local v2, "sourcePermNum":I
    .restart local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v5    # "numSplitPerms":I
    :cond_6
    move/from16 p6, v2

    move-object/from16 v19, v4

    move/from16 v20, v5

    .line 3222
    .end local v2    # "sourcePermNum":I
    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v5    # "numSplitPerms":I
    .restart local v19    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v20    # "numSplitPerms":I
    :goto_4
    if-nez v15, :cond_8

    .line 3228
    move-object/from16 v2, p3

    goto :goto_5

    .line 3206
    .end local v15    # "inheritsFromInstallPerm":Z
    .end local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v17    # "pkgName":Ljava/lang/String;
    .end local v19    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v20    # "numSplitPerms":I
    .local v2, "pkgName":Ljava/lang/String;
    .local v3, "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v5    # "numSplitPerms":I
    :cond_7
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    .line 3233
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v5    # "numSplitPerms":I
    .restart local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v17    # "pkgName":Ljava/lang/String;
    .restart local v19    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v20    # "numSplitPerms":I
    :cond_8
    move-object/from16 v2, p3

    invoke-direct {v0, v11, v10, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/UidPermissionState;Lcom/android/server/pm/pkg/AndroidPackage;)V

    goto :goto_5

    .line 3195
    .end local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v17    # "pkgName":Ljava/lang/String;
    .end local v19    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v20    # "numSplitPerms":I
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v5    # "numSplitPerms":I
    :cond_9
    move-object/from16 v14, p1

    move/from16 v13, p5

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v2, p3

    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v5    # "numSplitPerms":I
    .restart local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v17    # "pkgName":Ljava/lang/String;
    .restart local v19    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v20    # "numSplitPerms":I
    goto :goto_5

    .line 3192
    .end local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v17    # "pkgName":Ljava/lang/String;
    .end local v19    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v20    # "numSplitPerms":I
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v5    # "numSplitPerms":I
    :cond_a
    move-object/from16 v16, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    .end local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v5    # "numSplitPerms":I
    .restart local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v19    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v20    # "numSplitPerms":I
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown new permission in split permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3189
    .end local v12    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v19    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v20    # "numSplitPerms":I
    .restart local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v5    # "numSplitPerms":I
    :cond_b
    move-object/from16 v14, p1

    move/from16 v13, p5

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v2, p3

    .line 3185
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v5    # "numSplitPerms":I
    .end local v10    # "newPerm":Ljava/lang/String;
    .end local v11    # "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v17    # "pkgName":Ljava/lang/String;
    .restart local v19    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v20    # "numSplitPerms":I
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v19

    move/from16 v5, v20

    goto/16 :goto_2

    .line 3184
    .end local v16    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v17    # "pkgName":Ljava/lang/String;
    .end local v19    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v20    # "numSplitPerms":I
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v5    # "numSplitPerms":I
    :cond_c
    nop

    .line 3239
    .end local v8    # "newImplicitPermNum":I
    return-object v7
.end method

.method private shouldGrantPermissionByProtectionFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/permission/Permission;Landroid/util/ArraySet;)Z
    .locals 9
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "bp"    # Lcom/android/server/pm/permission/Permission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Lcom/android/server/pm/permission/Permission;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 3395
    .local p4, "shouldGrantPrivilegedPermissionIfWasGranted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3396
    .local v0, "allowed":Z
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPrivileged()Z

    move-result v1

    .line 3397
    .local v1, "isPrivilegedPermission":Z
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isOem()Z

    move-result v2

    .line 3398
    .local v2, "isOemPermission":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_b

    if-nez v1, :cond_0

    if-eqz v2, :cond_b

    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3399
    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3402
    .local v5, "permissionName":Ljava/lang/String;
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3403
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3404
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 3405
    .local v6, "disabledPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v6, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v7

    .line 3406
    .local v7, "disabledPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :goto_0
    nop

    nop

    if-eqz v7, :cond_5

    if-eqz v1, :cond_2

    .line 3407
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    if-eqz v2, :cond_5

    .line 3408
    invoke-static {v6, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->canGrantOemPermission(Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Z

    move-result v8

    nop

    if-eqz v8, :cond_5

    .line 3410
    :cond_3
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3411
    const/4 v0, 0x1

    goto :goto_1

    .line 3416
    :cond_4
    invoke-virtual {p4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3419
    .end local v6    # "disabledPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "disabledPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_5
    :goto_1
    goto :goto_3

    .line 3420
    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    if-eqz v2, :cond_9

    .line 3421
    invoke-static {p2, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->canGrantOemPermission(Lcom/android/server/pm/pkg/PackageState;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    move v6, v3

    goto :goto_2

    :cond_9
    move v6, v4

    :goto_2
    move v0, v6

    .line 3426
    :goto_3
    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isVendorPrivileged()Z

    move-result v6

    if-nez v6, :cond_b

    .line 3427
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 3428
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cannot be granted to privileged vendor apk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3429
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " because it isn\'t a \'vendorPrivileged\' permission."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3428
    const-string v7, "PermissionManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    const/4 v0, 0x0

    .line 3434
    .end local v5    # "permissionName":Ljava/lang/String;
    :cond_b
    if-nez v0, :cond_c

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPre23()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v5

    const/16 v6, 0x17

    if-ge v5, v6, :cond_c

    .line 3438
    const/4 v0, 0x1

    .line 3443
    :cond_c
    if-nez v0, :cond_e

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isInstaller()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3444
    const/4 v6, 0x2

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    .line 3446
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3444
    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    nop

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3447
    const/4 v6, 0x7

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    .line 3449
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3446
    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 3452
    :cond_d
    const/4 v0, 0x1

    .line 3454
    :cond_e
    if-nez v0, :cond_f

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isVerifier()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3455
    const/4 v6, 0x4

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    .line 3457
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3455
    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3460
    const/4 v0, 0x1

    .line 3462
    :cond_f
    if-nez v0, :cond_10

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isPreInstalled()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 3464
    const/4 v0, 0x1

    .line 3466
    :cond_10
    if-nez v0, :cond_11

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isKnownSigner()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 3469
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->getKnownCerts()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z

    move-result v0

    .line 3477
    :cond_11
    if-nez v0, :cond_12

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isSetup()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3478
    invoke-virtual {v5, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3480
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3478
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3483
    const/4 v0, 0x1

    .line 3485
    :cond_12
    if-nez v0, :cond_13

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isSystemTextClassifier()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3486
    const/4 v5, 0x6

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3488
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3486
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 3490
    const/4 v0, 0x1

    .line 3492
    :cond_13
    if-nez v0, :cond_14

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isConfigurator()Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3493
    const/16 v5, 0xa

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3495
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3493
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3497
    const/4 v0, 0x1

    .line 3499
    :cond_14
    if-nez v0, :cond_15

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isIncidentReportApprover()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3500
    const/16 v5, 0xb

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3502
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3500
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3505
    const/4 v0, 0x1

    .line 3507
    :cond_15
    if-nez v0, :cond_16

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isAppPredictor()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3508
    const/16 v5, 0xc

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3510
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3508
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3512
    const/4 v0, 0x1

    .line 3514
    :cond_16
    if-nez v0, :cond_17

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isCompanion()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3515
    const/16 v5, 0xf

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3517
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3515
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 3519
    const/4 v0, 0x1

    .line 3521
    :cond_17
    if-nez v0, :cond_18

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isRetailDemo()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3522
    const/16 v5, 0x10

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3524
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3522
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3524
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isProfileOwner(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3526
    const/4 v0, 0x1

    .line 3528
    :cond_18
    if-nez v0, :cond_19

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isRecents()Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3529
    const/16 v5, 0x11

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v3

    .line 3531
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3529
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3533
    const/4 v0, 0x1

    .line 3535
    :cond_19
    if-nez v0, :cond_1a

    invoke-virtual {p3}, Lcom/android/server/pm/permission/Permission;->isModule()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 3536
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3535
    invoke-virtual {v3, v4}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 3538
    const/4 v0, 0x1

    .line 3540
    :cond_1a
    return v0
.end method

.method private shouldGrantPermissionBySignature(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/Permission;)Z
    .locals 7
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "bp"    # Lcom/android/server/pm/permission/Permission;

    .line 3368
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3370
    .local v0, "systemPackageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3371
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    .line 3381
    .local v2, "systemPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    nop

    .line 3382
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSourcePackageSigningDetails(Lcom/android/server/pm/permission/Permission;)Landroid/content/pm/SigningDetails;

    move-result-object v3

    .line 3383
    .local v3, "sourceSigningDetails":Landroid/content/pm/SigningDetails;
    nop

    .line 3384
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    .line 3383
    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/SigningDetails;->hasCommonSignerWithCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3386
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3387
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    .line 3388
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v6

    .line 3387
    invoke-virtual {v4, v6, v5}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 3383
    :cond_1
    return v1
.end method

.method private updateAllPermissions(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "fingerprintChanged"    # Z

    .line 3948
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 3950
    nop

    .line 3951
    if-eqz p2, :cond_0

    .line 3952
    const/4 v0, 0x6

    goto :goto_0

    .line 3953
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    or-int v6, v1, v0

    .line 3954
    .local v6, "flags":I
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    .end local p1    # "volumeUuid":Ljava/lang/String;
    .local v5, "volumeUuid":Ljava/lang/String;
    :try_start_1
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3956
    .end local v6    # "flags":I
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 3957
    nop

    .line 3958
    return-void

    .line 3956
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .end local v5    # "volumeUuid":Ljava/lang/String;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    .end local p1    # "volumeUuid":Ljava/lang/String;
    .restart local v5    # "volumeUuid":Ljava/lang/String;
    :goto_1
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 3957
    throw p1
.end method

.method private updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "overridePolicy"    # Z
    .param p8, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 791
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v3, p6

    move-object/from16 v9, p8

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    return-void

    .line 795
    :cond_0
    const-string/jumbo v0, "updatePermissionFlags"

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 797
    const/4 v5, 0x1

    const-string/jumbo v6, "updatePermissionFlags"

    const/4 v4, 0x1

    move/from16 v2, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 802
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_1

    if-eqz p7, :cond_2

    :cond_1
    goto :goto_0

    .line 803
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v4, "updatePermissionFlags requires android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :goto_0
    const/16 v0, 0x3e8

    if-eq v2, v0, :cond_3

    .line 809
    and-int/lit8 v0, p3, -0x11

    .line 810
    .end local p3    # "flagMask":I
    .local v0, "flagMask":I
    and-int/lit8 v4, p4, -0x11

    .line 811
    .end local p4    # "flagValues":I
    .local v4, "flagValues":I
    and-int/lit8 v0, v0, -0x21

    .line 812
    and-int/lit8 v4, v4, -0x21

    .line 813
    and-int/lit16 v4, v4, -0x1001

    .line 814
    and-int/lit16 v4, v4, -0x801

    .line 815
    and-int/lit16 v4, v4, -0x2001

    .line 816
    and-int/lit16 v4, v4, -0x4001

    move v5, v4

    move v4, v0

    goto :goto_1

    .line 808
    .end local v0    # "flagMask":I
    .end local v4    # "flagValues":I
    .restart local p3    # "flagMask":I
    .restart local p4    # "flagValues":I
    :cond_3
    move/from16 v4, p3

    move/from16 v5, p4

    .line 819
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .local v4, "flagMask":I
    .local v5, "flagValues":I
    :goto_1
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    .line 820
    .local v6, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v6, :cond_4

    .line 821
    const-string v0, "PermissionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    return-void

    .line 824
    :cond_4
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v2, v3, v10}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v0

    if-nez v0, :cond_d

    .line 829
    const/4 v0, 0x0

    .line 831
    .local v0, "isRequested":Z
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 832
    const/4 v0, 0x1

    .line 834
    :cond_5
    if-nez v0, :cond_7

    .line 836
    iget-object v11, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 837
    invoke-virtual {v11, v7, v3}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 838
    .local v11, "sharedUserPackageNames":[Ljava/lang/String;
    array-length v12, v11

    move v13, v10

    :goto_2
    nop

    if-ge v13, v12, :cond_7

    aget-object v14, v11, v13

    .line 839
    .local v14, "sharedUserPackageName":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v15, v14}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v15

    .line 841
    .local v15, "sharedUserPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v15, :cond_6

    .line 842
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 843
    const/4 v0, 0x1

    .line 844
    move v10, v0

    goto :goto_3

    .line 838
    .end local v14    # "sharedUserPackageName":Ljava/lang/String;
    .end local v15    # "sharedUserPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x0

    goto :goto_2

    .line 851
    .end local v11    # "sharedUserPackageNames":[Ljava/lang/String;
    :cond_7
    move v10, v0

    .end local v0    # "isRequested":Z
    .local v10, "isRequested":Z
    :goto_3
    iget-object v11, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v11

    .line 852
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    .line 853
    .local v0, "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v0, :cond_c

    .line 857
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v12

    .line 859
    .local v12, "isRuntimePermission":Z
    invoke-direct {v1, v6, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v13

    .line 860
    .local v13, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v13, :cond_8

    .line 861
    const-string v14, "PermissionManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing permissions state for "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and user "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 871
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v12    # "isRuntimePermission":Z
    .end local v13    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 865
    .restart local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v12    # "isRuntimePermission":Z
    .restart local v13    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_8
    :try_start_1
    invoke-virtual {v13, v8}, Lcom/android/server/pm/permission/UidPermissionState;->hasPermissionState(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    if-nez v10, :cond_9

    .line 866
    const-string v1, "PermissionManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " isn\'t requested by package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 870
    :cond_9
    :try_start_2
    invoke-virtual {v13, v0, v4, v5}, Lcom/android/server/pm/permission/UidPermissionState;->updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z

    move-result v1

    .line 871
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v13    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .local v1, "permissionUpdated":Z
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 873
    if-eqz v1, :cond_b

    if-eqz v9, :cond_b

    .line 876
    if-nez v12, :cond_a

    .line 877
    invoke-virtual {v9}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionUpdated()V

    goto :goto_4

    .line 879
    :cond_a
    filled-new-array {v3}, [I

    move-result-object v0

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v11

    const/4 v13, 0x0

    invoke-virtual {v9, v0, v13, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionUpdated([IZI)V

    .line 882
    :cond_b
    :goto_4
    return-void

    .line 854
    .end local v1    # "permissionUpdated":Z
    .end local v12    # "isRuntimePermission":Z
    .restart local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_c
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown permission: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "flagMask":I
    .end local v5    # "flagValues":I
    .end local v6    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v10    # "isRequested":Z
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p5    # "callingUid":I
    .end local p6    # "userId":I
    .end local p7    # "overridePolicy":Z
    .end local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    throw v1

    .line 871
    .end local v0    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v4    # "flagMask":I
    .restart local v5    # "flagValues":I
    .restart local v6    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v10    # "isRequested":Z
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permName":Ljava/lang/String;
    .restart local p5    # "callingUid":I
    .restart local p6    # "userId":I
    .restart local p7    # "overridePolicy":Z
    .restart local p8    # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
    :goto_5
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 826
    .end local v10    # "isRequested":Z
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown package: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updatePermissionSourcePackage(Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 4071
    if-nez p1, :cond_0

    .line 4072
    const/4 v0, 0x1

    return v0

    .line 4075
    :cond_0
    const/4 v0, 0x0

    .line 4076
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 4077
    .local v1, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/Permission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 4078
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/Permission;

    .line 4079
    .local v4, "bp":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4080
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/Permission;->updateDynamicPermission(Ljava/util/Collection;)V

    goto :goto_1

    .line 4096
    .end local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v3

    goto/16 :goto_7

    .line 4082
    .restart local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4086
    goto :goto_0

    .line 4090
    :cond_2
    const/4 v0, 0x1

    .line 4091
    if-nez v1, :cond_3

    .line 4092
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v5

    .line 4094
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4095
    nop

    .end local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    goto :goto_0

    .line 4096
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4097
    if-eqz v1, :cond_b

    .line 4098
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    .line 4099
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/Permission;

    .line 4102
    .restart local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    if-eqz v2, :cond_5

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->hasPermission(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    goto :goto_4

    .line 4138
    :cond_6
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4139
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    .line 4140
    .local v5, "sourcePkg":Lcom/android/server/pm/pkg/AndroidPackage;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4141
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 4142
    .local v6, "sourcePs":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v7

    .line 4143
    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    .line 4144
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_2

    .line 4149
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 4146
    :cond_7
    :try_start_2
    const-string v8, "PermissionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removing dangling permission: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " from package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4147
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4146
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    .line 4149
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4150
    .end local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v5    # "sourcePkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v6    # "sourcePs":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_2

    .line 4149
    .restart local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v5    # "sourcePkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v6    # "sourcePs":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v3

    .line 4103
    .end local v5    # "sourcePkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v6    # "sourcePs":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_4
    invoke-direct {p0, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionDeclaredByDisabledSystemPkg(Lcom/android/server/pm/permission/Permission;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 4104
    const-string v5, "PermissionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " that used to be declared by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4105
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4104
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4106
    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4107
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v5

    .line 4108
    .local v5, "userIds":[I
    array-length v6, v5

    .line 4109
    .local v6, "numUserIds":I
    const/4 v7, 0x0

    .local v7, "userIdNum":I
    :goto_5
    if-ge v7, v6, :cond_8

    .line 4110
    aget v8, v5, v7

    .line 4111
    .local v8, "userId":I
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v10, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v10, p0, v4, v8, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4109
    .end local v8    # "userId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    nop

    .line 4115
    .end local v5    # "userIds":[I
    .end local v6    # "numUserIds":I
    .end local v7    # "userIdNum":I
    goto :goto_6

    .line 4116
    :cond_9
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v6, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;)V

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4133
    :cond_a
    :goto_6
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    .line 4134
    :try_start_4
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    .line 4135
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4136
    goto/16 :goto_2

    .line 4135
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v3

    .line 4152
    .end local v2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v4    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_b
    return v0

    .line 4096
    :goto_7
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v3
.end method

.method private updatePermissionTreeSourcePackage(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4225
    if-nez p1, :cond_0

    .line 4226
    const/4 v0, 0x1

    return v0

    .line 4228
    :cond_0
    const/4 v0, 0x0

    .line 4230
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 4231
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4232
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/Permission;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4233
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/Permission;

    .line 4234
    .local v3, "bp":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4238
    goto :goto_0

    .line 4242
    :cond_1
    const/4 v0, 0x1

    .line 4243
    if-eqz p2, :cond_2

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->hasPermission(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    goto :goto_1

    .line 4249
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/Permission;>;"
    .end local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 4244
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/Permission;>;"
    .restart local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    :goto_1
    const-string v4, "PermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing permission tree "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " that used to be declared by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4245
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4244
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4246
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 4248
    .end local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_3
    goto :goto_0

    .line 4232
    :cond_4
    nop

    .line 4249
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/Permission;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4250
    return v0

    .line 4249
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v2
.end method

.method private updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3929
    if-nez p2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 3930
    :cond_0
    const/4 v0, 0x2

    :goto_0
    move v5, v0

    .line 3931
    .local v5, "flags":I
    nop

    .line 3932
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getVolumeUuidForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 3931
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 3933
    return-void
.end method

.method private updatePermissions(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 15
    .param p1, "changingPkgName"    # Ljava/lang/String;
    .param p2, "changingPkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p3, "replaceVolumeUuid"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 4019
    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionTreeSourcePackage(Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    .line 4023
    .local v0, "permissionTreesSourcePackageChanged":Z
    move-object/from16 v4, p1

    move-object/from16 v5, p5

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionSourcePackage(Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)Z

    move-result v8

    .line 4026
    .local v8, "permissionSourcePackageChanged":Z
    or-int v1, v0, v8

    if-eqz v1, :cond_0

    .line 4029
    const-string v1, "PermissionManager"

    const-string v2, "Permission ownership changed. Updating all permissions."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    or-int/lit8 v1, p4, 0x1

    move v9, v1

    .end local p4    # "flags":I
    .local v1, "flags":I
    goto :goto_0

    .line 4026
    .end local v1    # "flags":I
    .restart local p4    # "flags":I
    :cond_0
    move/from16 v9, p4

    .line 4033
    .end local p4    # "flags":I
    .local v9, "flags":I
    :goto_0
    const-string/jumbo v1, "restorePermissionState"

    const-wide/32 v10, 0x40000

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4035
    and-int/lit8 v1, v9, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_2

    .line 4036
    and-int/lit8 v1, v9, 0x4

    if-eqz v1, :cond_1

    move v1, v13

    goto :goto_1

    :cond_1
    move v1, v12

    .line 4037
    .local v1, "replaceAll":Z
    :goto_1
    iget-object v14, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move v4, v1

    .end local v1    # "replaceAll":Z
    .local v4, "replaceAll":Z
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda13;

    move-object v2, p0

    move-object/from16 v6, p1

    move-object/from16 v3, p2

    move-object v7, v5

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    invoke-virtual {v14, v1}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4049
    .end local v4    # "replaceAll":Z
    :cond_2
    if-eqz p2, :cond_5

    .line 4051
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getVolumeUuidForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v7

    .line 4052
    .local v7, "volumeUuid":Ljava/lang/String;
    and-int/lit8 v1, v9, 0x2

    if-eqz v1, :cond_3

    .line 4053
    move-object/from16 v14, p3

    invoke-static {v14, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v3, v13

    goto :goto_2

    .line 4052
    :cond_3
    move-object/from16 v14, p3

    .line 4053
    :cond_4
    move v3, v12

    :goto_2
    nop

    .line 4054
    .local v3, "replace":Z
    const/4 v6, -0x1

    move-object v1, p0

    move-object/from16 v4, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->restorePermissionState(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;I)V

    goto :goto_3

    .line 4049
    .end local v3    # "replace":Z
    .end local v7    # "volumeUuid":Ljava/lang/String;
    :cond_5
    move-object/from16 v14, p3

    .line 4057
    :goto_3
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 4058
    return-void
.end method


# virtual methods
.method public addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 1183
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1185
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1186
    return v1

    .line 1189
    :cond_0
    nop

    .line 1190
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1191
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 1192
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 1194
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2

    .line 1195
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1196
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v1

    return v1

    .line 1199
    :cond_2
    return v1
.end method

.method public addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 1068
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    const-string v2, "addOnPermissionsChangeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->addListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1073
    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 10
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "async"    # Z

    .line 646
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 647
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 650
    iget v1, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    .line 651
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Label must be specified in permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 655
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 656
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/permission/PermissionRegistry;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    .line 657
    .local v2, "tree":Lcom/android/server/pm/permission/Permission;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    .line 658
    .local v3, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v3, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 659
    .local v4, "added":Z
    :goto_1
    iget v5, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v5}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v5

    .line 660
    .local v5, "fixedLevel":I
    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)V

    .line 661
    if-eqz v4, :cond_3

    .line 662
    new-instance v6, Lcom/android/server/pm/permission/Permission;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/pm/permission/Permission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v6

    goto :goto_2

    .line 671
    .end local v2    # "tree":Lcom/android/server/pm/permission/Permission;
    .end local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v4    # "added":Z
    .end local v5    # "fixedLevel":I
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 663
    .restart local v2    # "tree":Lcom/android/server/pm/permission/Permission;
    .restart local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v4    # "added":Z
    .restart local v5    # "fixedLevel":I
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 667
    :goto_2
    invoke-virtual {v3, v5, p1, v2}, Lcom/android/server/pm/permission/Permission;->addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)Z

    move-result v6

    .line 668
    .local v6, "changed":Z
    if-eqz v4, :cond_4

    .line 669
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    .line 671
    .end local v2    # "tree":Lcom/android/server/pm/permission/Permission;
    .end local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v5    # "fixedLevel":I
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 672
    if-eqz v6, :cond_5

    .line 673
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 675
    :cond_5
    return v4

    .line 664
    .end local v6    # "changed":Z
    .restart local v2    # "tree":Lcom/android/server/pm/permission/Permission;
    .restart local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .restart local v5    # "fixedLevel":I
    :cond_6
    :try_start_1
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .end local p1    # "info":Landroid/content/pm/PermissionInfo;
    .end local p2    # "async":Z
    throw v6

    .line 671
    .end local v2    # "tree":Lcom/android/server/pm/permission/Permission;
    .end local v3    # "bp":Lcom/android/server/pm/permission/Permission;
    .end local v4    # "added":Z
    .end local v5    # "fixedLevel":I
    .restart local v0    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    .restart local p1    # "info":Landroid/content/pm/PermissionInfo;
    .restart local p2    # "async":Z
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v2

    .line 648
    :cond_7
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Instant apps can\'t add permissions"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public backupRuntimePermissions(I)[B
    .locals 5
    .param p1, "userId"    # I

    .line 2013
    int-to-float v0, p1

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 2014
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2015
    .local v0, "backup":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[B>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 2016
    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;

    invoke-direct {v4, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 2015
    invoke-virtual {v1, v2, v3, v4}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2019
    :try_start_0
    sget-wide v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->BACKUP_TIMEOUT_MILLIS:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2020
    :catch_0
    move-exception v1

    .line 2021
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create permission backup for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PermissionManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2022
    const/4 v2, 0x0

    return-object v2
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 937
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 938
    return v1

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 942
    .local v0, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v0, :cond_1

    .line 943
    return v1

    .line 945
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermissionInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "uid"    # I
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .line 1008
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1009
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1010
    const/4 v1, -0x1

    return v1

    .line 1013
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    .line 1014
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermissionInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 480
    return-void
.end method

.method public getAllAppOpPermissionPackages()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 5090
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 5091
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 5092
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionRegistry;->getAllAppOpPermissionPackages()Landroid/util/ArrayMap;

    move-result-object v1

    .line 5093
    .local v1, "appOpPermissionPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 5094
    .local v2, "deepClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 5095
    .local v3, "appOpPermissionPackagesSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 5096
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5097
    .local v5, "appOpPermission":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 5098
    .local v6, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7, v6}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5095
    nop

    .end local v5    # "appOpPermission":Ljava/lang/String;
    .end local v6    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5101
    .end local v1    # "appOpPermissionPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v2    # "deepClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v3    # "appOpPermissionPackagesSize":I
    .end local v4    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5095
    .restart local v1    # "appOpPermissionPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v2    # "deepClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v3    # "appOpPermissionPackagesSize":I
    .restart local v4    # "i":I
    :cond_0
    nop

    .line 5100
    .end local v4    # "i":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v2

    .line 5101
    .end local v1    # "appOpPermissionPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v2    # "deepClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v3    # "appOpPermissionPackagesSize":I
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 7
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 521
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 522
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 523
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 526
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 528
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroups()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 529
    .local v4, "pg":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    int-to-long v5, p1

    invoke-static {v4, v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    nop

    .end local v4    # "pg":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    goto :goto_0

    .line 531
    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 533
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 534
    .local v2, "callingUserId":I
    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;II)V

    invoke-interface {v1, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 536
    return-object v1

    .line 531
    .end local v2    # "callingUserId":I
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v3
.end method

.method public getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/permission/PermissionManager$PermissionState;",
            ">;"
        }
    .end annotation

    .line 1026
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is supported in newer implementation only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllPermissionsWithProtection(I)Ljava/util/List;
    .locals 5
    .param p1, "protection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 5226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5228
    .local v0, "matchingPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 5229
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/Permission;

    .line 5230
    .local v3, "permission":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getProtection()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 5231
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5234
    .end local v3    # "permission":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 5233
    :cond_0
    :goto_1
    goto :goto_0

    .line 5234
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 5236
    return-object v0

    .line 5234
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v2
.end method

.method public getAllPermissionsWithProtectionFlags(I)Ljava/util/List;
    .locals 5
    .param p1, "protectionFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 5243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5245
    .local v0, "matchingPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 5246
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/Permission;

    .line 5247
    .local v3, "permission":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getProtectionFlags()I

    move-result v4

    and-int/2addr v4, p1

    if-ne v4, p1, :cond_0

    .line 5248
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5251
    .end local v3    # "permission":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 5250
    :cond_0
    :goto_1
    goto :goto_0

    .line 5251
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 5253
    return-object v0

    .line 5251
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v2
.end method

.method public getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1087
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1088
    const/4 v0, 0x7

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1092
    int-to-float v0, p3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 1094
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowlistedRestrictedPermissions for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 1101
    .local v0, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v0, :cond_1

    .line 1102
    return-object v1

    .line 1105
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1106
    .local v2, "callingUid":I
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1107
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1106
    const/4 v5, 0x0

    invoke-virtual {v3, p1, v2, v4, v5}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1108
    return-object v1

    .line 1110
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v5, 0x1

    .line 1113
    .local v5, "isCallerPrivileged":Z
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1114
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    move-result v1

    .line 1116
    .local v1, "isCallerInstallerOnRecord":Z
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    goto :goto_0

    .line 1118
    :cond_5
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Querying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1122
    :goto_0
    and-int/lit8 v3, p2, 0x6

    if-eqz v3, :cond_8

    .line 1124
    if-nez v5, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    goto :goto_1

    .line 1125
    :cond_7
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Querying upgrade or installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1131
    :cond_8
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1133
    .local v3, "identity":J
    :try_start_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/List;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1133
    return-object v6

    .line 1135
    :catchall_0
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1136
    throw v6
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 5193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5194
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAppOpPermissionPackagesInternal(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 4660
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->isPermissionUpgradeNeeded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getGidsForUid(I)[I
    .locals 7
    .param p1, "uid"    # I

    .line 5137
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 5138
    .local v0, "appId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5139
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 5140
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v3

    .line 5141
    .local v3, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v3, :cond_0

    .line 5142
    const-string v4, "PermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing permissions state for app ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and user ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5144
    sget-object v4, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v4

    .line 5147
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 5146
    .restart local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mGlobalGids:[I

    invoke-virtual {v3, v4, v1}, Lcom/android/server/pm/permission/UidPermissionState;->computeGids([II)[I

    move-result-object v4

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v4

    .line 5147
    .end local v3    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v3
.end method

.method public getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5178
    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5179
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getGrantedPermissionsInternal(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5163
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 5164
    .local v0, "installedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 5165
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/Permission;

    .line 5166
    .local v3, "permission":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5167
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5170
    .end local v3    # "permission":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 5169
    :cond_0
    :goto_1
    goto :goto_0

    .line 5170
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 5171
    return-object v0

    .line 5170
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v2
.end method

.method public getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 17
    .param p1, "appId"    # I

    .line 5107
    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    move-object v3, v0

    .line 5108
    .local v3, "legacyState":Lcom/android/server/pm/permission/LegacyPermissionState;
    iget-object v4, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 5109
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserIds()[I

    move-result-object v0

    .line 5110
    .local v0, "userIds":[I
    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget v7, v0, v6

    .line 5111
    .local v7, "userId":I
    invoke-direct {v1, v2, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getUidStateLocked(II)Lcom/android/server/pm/permission/UidPermissionState;

    move-result-object v8

    .line 5112
    .local v8, "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    if-nez v8, :cond_0

    .line 5113
    const-string v9, "PermissionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Missing permissions state for app ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " and user ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5115
    move-object/from16 v16, v0

    goto :goto_2

    .line 5130
    .end local v0    # "userIds":[I
    .end local v7    # "userId":I
    .end local v8    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 5118
    .restart local v0    # "userIds":[I
    .restart local v7    # "userId":I
    .restart local v8    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionStates()Ljava/util/List;

    move-result-object v9

    .line 5119
    .local v9, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 5120
    .local v10, "permissionStatesSize":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v10, :cond_1

    .line 5121
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/permission/PermissionState;

    .line 5123
    .local v12, "permissionState":Lcom/android/server/pm/permission/PermissionState;
    new-instance v13, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5124
    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v14

    .line 5125
    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getPermission()Lcom/android/server/pm/permission/Permission;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v15

    .line 5126
    move-object/from16 v16, v0

    .end local v0    # "userIds":[I
    .local v16, "userIds":[I
    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v0

    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v1

    invoke-direct {v13, v14, v15, v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    .line 5127
    .local v13, "legacyPermissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    invoke-virtual {v3, v13, v7}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    .line 5120
    .end local v12    # "permissionState":Lcom/android/server/pm/permission/PermissionState;
    .end local v13    # "legacyPermissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_1

    .end local v16    # "userIds":[I
    .restart local v0    # "userIds":[I
    :cond_1
    move-object/from16 v16, v0

    .line 5110
    .end local v0    # "userIds":[I
    .end local v7    # "userId":I
    .end local v8    # "uidState":Lcom/android/server/pm/permission/UidPermissionState;
    .end local v9    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionState;>;"
    .end local v10    # "permissionStatesSize":I
    .end local v11    # "i":I
    .restart local v16    # "userIds":[I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_0

    .end local v16    # "userIds":[I
    .restart local v0    # "userIds":[I
    :cond_2
    move-object/from16 v16, v0

    .line 5130
    .end local v0    # "userIds":[I
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 5131
    return-object v3

    .line 5130
    :goto_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public getLegacyPermissions()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;"
        }
    .end annotation

    .line 5076
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 5077
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5078
    .local v1, "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/Permission;

    .line 5079
    .local v3, "permission":Lcom/android/server/pm/permission/Permission;
    new-instance v4, Lcom/android/server/pm/permission/LegacyPermission;

    .line 5080
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getType()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getUid()I

    move-result v7

    .line 5081
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getRawGids()[I

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 5082
    .local v4, "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5083
    nop

    .end local v3    # "permission":Lcom/android/server/pm/permission/Permission;
    .end local v4    # "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    goto :goto_0

    .line 5085
    .end local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5084
    .restart local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v1

    .line 5085
    .end local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 704
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 705
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public getPermissionGids(Ljava/lang/String;I)[I
    .locals 2
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5186
    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5187
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionGidsInternal(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 7
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 543
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 544
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 545
    return-object v2

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 550
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v3

    .line 551
    .local v3, "permissionGroup":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    if-nez v3, :cond_1

    .line 552
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v2

    .line 556
    .end local v3    # "permissionGroup":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 554
    .restart local v3    # "permissionGroup":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    :cond_1
    int-to-long v4, p2

    :try_start_1
    invoke-static {v3, v4, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4

    .line 556
    .end local v3    # "permissionGroup":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    .local v4, "permissionGroupInfo":Landroid/content/pm/PermissionGroupInfo;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 558
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 559
    .local v1, "callingUserId":I
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, v4, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v0, v1, v6}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 561
    const-string v3, "186113473"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v5, p1}, [Ljava/lang/Object;

    move-result-object v3

    const v5, 0x534e4554

    invoke-static {v5, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 562
    return-object v2

    .line 564
    :cond_2
    return-object v4

    .line 556
    .end local v1    # "callingUserId":I
    .end local v4    # "permissionGroupInfo":Landroid/content/pm/PermissionGroupInfo;
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v2
.end method

.method public getPermissionInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PermissionInfo;
    .locals 9
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 571
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 572
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 573
    return-object v2

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    .line 577
    .local v1, "opPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionInfoCallingTargetSdkVersion(Lcom/android/server/pm/pkg/AndroidPackage;I)I

    move-result v3

    .line 580
    .local v3, "targetSdkVersion":I
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 581
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v5

    .line 582
    .local v5, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v5, :cond_1

    .line 583
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v2

    .line 586
    .end local v5    # "bp":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 585
    .restart local v5    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_1
    :try_start_1
    invoke-virtual {v5, p2, v3}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v6

    .line 586
    .end local v5    # "bp":Lcom/android/server/pm/permission/Permission;
    .local v6, "permissionInfo":Landroid/content/pm/PermissionInfo;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 588
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 589
    .local v4, "callingUserId":I
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v7, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v0, v4, v8}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 591
    const-string v5, "183122164"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v7, p1}, [Ljava/lang/Object;

    move-result-object v5

    const v7, 0x534e4554

    invoke-static {v7, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 592
    return-object v2

    .line 594
    :cond_2
    return-object v6

    .line 586
    .end local v4    # "callingUserId":I
    .end local v6    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v2
.end method

.method public getPermissionRequestState(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .param p4, "persistentDeviceId"    # Ljava/lang/String;

    .line 1020
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getPermissionRequestState is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;

    .line 5217
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 5218
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v1

    .line 5219
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method public getSplitPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;"
        }
    .end annotation

    .line 3245
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getSplitPermissionInfos()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 1341
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1342
    .local v4, "callingUid":I
    nop

    .line 1343
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {p0, v4, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1346
    .local v3, "overridePolicy":Z
    :goto_1
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p4    # "userId":I
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "permName":Ljava/lang/String;
    .local v5, "userId":I
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 1348
    return-void
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 1976
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p4, :cond_0

    .line 1977
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPermissionRevokedByPolicy for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1983
    return v1

    .line 1986
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1987
    .local v0, "callingUid":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p1, v0, p4, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1989
    return v1

    .line 1992
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1994
    .local v2, "identity":J
    :try_start_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1995
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    .line 1997
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1995
    return v1

    .line 1997
    .end local v4    # "flags":I
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1998
    throw v1
.end method

.method public isPermissionsReviewRequired(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5156
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionsReviewRequiredInternal(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public onPackageAdded(Lcom/android/server/pm/pkg/PackageState;ZLcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 1
    .param p1, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p2, "isInstantApp"    # Z
    .param p3, "oldPkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5266
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5267
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 5268
    .local v0, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5269
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageAddedInternal(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;ZLcom/android/server/pm/pkg/AndroidPackage;)V

    .line 5270
    return-void
.end method

.method public onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V
    .locals 5
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "previousAppId"    # I
    .param p3, "params"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;
    .param p4, "userId"    # I

    .line 5276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5277
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5278
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-gez p4, :cond_0

    if-ne p4, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :goto_0
    move v3, v0

    :goto_1
    const-string/jumbo v4, "userId"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5280
    if-ne p4, v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v0

    goto :goto_2

    .line 5281
    :cond_2
    new-array v0, v0, [I

    aput p4, v0, v1

    :goto_2
    nop

    .line 5282
    .local v0, "userIds":[I
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageInstalledInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;[I)V

    .line 5283
    return-void
.end method

.method public onPackageRemoved(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5287
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5288
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageRemovedInternal(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 5289
    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p4, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/pm/pkg/PackageState;",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    .line 5295
    .local p5, "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5296
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5297
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5298
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-gez p6, :cond_0

    if-ne p6, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :goto_0
    move v3, v0

    :goto_1
    const-string/jumbo v4, "userId"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5300
    if-ne p6, v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v0

    goto :goto_2

    .line 5301
    :cond_2
    new-array v0, v0, [I

    aput p6, v0, v1

    :goto_2
    move-object v7, v0

    .line 5302
    .local v7, "userIds":[I
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "appId":I
    .end local p3    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    .end local p4    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p5    # "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "appId":I
    .local v4, "packageState":Lcom/android/server/pm/pkg/PackageState;
    .local v5, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v6, "sharedUserPkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/AndroidPackage;>;"
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageUninstalledInternal(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;[I)V

    .line 5304
    return-void
.end method

.method public onStorageVolumeMounted(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "fingerprintChanged"    # Z

    .line 5199
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    .line 5200
    return-void
.end method

.method public onSystemReady()V
    .locals 5

    .line 4388
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    .line 4390
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    .line 4392
    .local v0, "permissionPolicyInternal":Lcom/android/server/policy/PermissionPolicyInternal;
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PermissionPolicyInternal;->setOnInitializedCallback(Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)V

    .line 4397
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 4398
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mSystemReady:Z

    .line 4400
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v2, :cond_0

    .line 4404
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4406
    new-instance v1, Landroid/permission/PermissionControllerManager;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 4407
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 4408
    const-class v1, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-void

    .line 4404
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 4401
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Signature|privileged permissions not in privapp-permissions allowlist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "permissionPolicyInternal":Lcom/android/server/policy/PermissionPolicyInternal;
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    throw v2

    .line 4404
    .restart local v0    # "permissionPolicyInternal":Lcom/android/server/policy/PermissionPolicyInternal;
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v2
.end method

.method public onUserCreated(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 5258
    int-to-float v0, p1

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5260
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updateAllPermissions(Ljava/lang/String;Z)V

    .line 5261
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 2456
    int-to-float v0, p1

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 2457
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 2458
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/DevicePermissionState;->removeUserState(I)V

    .line 2459
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2460
    return-void

    .line 2459
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 614
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 615
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 616
    return-object v2

    .line 620
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 621
    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 622
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionGroup(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    move-result-object v4

    .line 623
    .local v4, "permissionGroup":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    if-eqz p1, :cond_1

    if-nez v4, :cond_1

    .line 624
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-object v2

    .line 631
    .end local v4    # "permissionGroup":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 626
    .restart local v4    # "permissionGroup":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/Permission;

    .line 627
    .local v6, "bp":Lcom/android/server/pm/permission/Permission;
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 628
    invoke-virtual {v6, p2}, Lcom/android/server/pm/permission/Permission;->generatePermissionInfo(I)Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    .end local v6    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_2
    goto :goto_0

    .line 631
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 633
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 634
    .local v3, "callingUserId":I
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 635
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 634
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v0, v3, v7}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 637
    return-object v2

    .line 639
    :cond_4
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 641
    return-object v1

    .line 631
    .end local v3    # "callingUserId":I
    .end local v4    # "permissionGroup":Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v2
.end method

.method public readLegacyPermissionStateTEMP()V
    .locals 3

    .line 4491
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllUserIds()[I

    move-result-object v0

    .line 4492
    .local v0, "userIds":[I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[I)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    .line 4520
    return-void
.end method

.method public readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 10
    .param p1, "legacyPermissionSettings"    # Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 4599
    const/4 v0, 0x0

    .local v0, "readPermissionOrPermissionTree":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 4601
    if-nez v0, :cond_0

    .line 4602
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissions()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 4603
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissionTrees()Ljava/util/List;

    move-result-object v1

    :goto_1
    nop

    .line 4604
    .local v1, "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 4605
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 4606
    .local v3, "legacyPermissionsSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 4607
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/LegacyPermission;

    .line 4608
    .local v5, "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    new-instance v6, Lcom/android/server/pm/permission/Permission;

    .line 4609
    invoke-virtual {v5}, Lcom/android/server/pm/permission/LegacyPermission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/pm/permission/LegacyPermission;->getType()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/android/server/pm/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;I)V

    .line 4610
    .local v6, "permission":Lcom/android/server/pm/permission/Permission;
    if-nez v0, :cond_2

    .line 4616
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    .line 4617
    invoke-virtual {v6}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    .line 4616
    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v7

    .line 4618
    .local v7, "configPermission":Lcom/android/server/pm/permission/Permission;
    if-eqz v7, :cond_1

    .line 4619
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 4620
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->getRawGids()[I

    move-result-object v8

    .line 4621
    invoke-virtual {v7}, Lcom/android/server/pm/permission/Permission;->areGidsPerUser()Z

    move-result v9

    .line 4620
    invoke-virtual {v6, v8, v9}, Lcom/android/server/pm/permission/Permission;->setGids([IZ)V

    goto :goto_3

    .line 4628
    .end local v3    # "legacyPermissionsSize":I
    .end local v4    # "i":I
    .end local v5    # "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    .end local v6    # "permission":Lcom/android/server/pm/permission/Permission;
    .end local v7    # "configPermission":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v3

    goto :goto_5

    .line 4623
    .restart local v3    # "legacyPermissionsSize":I
    .restart local v4    # "i":I
    .restart local v5    # "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    .restart local v6    # "permission":Lcom/android/server/pm/permission/Permission;
    .restart local v7    # "configPermission":Lcom/android/server/pm/permission/Permission;
    :cond_1
    :goto_3
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v8, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermission(Lcom/android/server/pm/permission/Permission;)V

    .line 4624
    .end local v7    # "configPermission":Lcom/android/server/pm/permission/Permission;
    goto :goto_4

    .line 4625
    :cond_2
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/permission/PermissionRegistry;->addPermissionTree(Lcom/android/server/pm/permission/Permission;)V

    .line 4606
    .end local v5    # "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    .end local v6    # "permission":Lcom/android/server/pm/permission/Permission;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    nop

    .line 4628
    .end local v3    # "legacyPermissionsSize":I
    .end local v4    # "i":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4600
    .end local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4628
    .restart local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :goto_5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v3

    .line 4599
    .end local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :cond_4
    nop

    .line 4630
    .end local v0    # "readPermissionOrPermissionTree":I
    return-void
.end method

.method public removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 1240
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1242
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1243
    return v1

    .line 1246
    :cond_0
    nop

    .line 1247
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1248
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1249
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v1

    return v1

    .line 1252
    :cond_1
    return v1
.end method

.method public removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 1077
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->removeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1081
    return-void

    .line 1078
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant applications don\'t have access to this method"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 6
    .param p1, "permName"    # Ljava/lang/String;

    .line 680
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 681
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 684
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 685
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/pm/permission/PermissionRegistry;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/Permission;

    .line 686
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v2

    .line 687
    .local v2, "bp":Lcom/android/server/pm/permission/Permission;
    if-nez v2, :cond_0

    .line 688
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 697
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 690
    .restart local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/pm/permission/Permission;->isDynamic()Z

    move-result v3

    if-nez v3, :cond_1

    .line 692
    const-string v3, "PermissionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 696
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionRegistry;->removePermission(Ljava/lang/String;)V

    .line 697
    .end local v2    # "bp":Lcom/android/server/pm/permission/Permission;
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 698
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 699
    return-void

    .line 697
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v2

    .line 682
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Instant applications don\'t have access to this method"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;IZ)V
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .param p3, "restorePregrantedPermissions"    # Z

    .line 5205
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5206
    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5207
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;IZ)V

    .line 5208
    return-void
.end method

.method public resetRuntimePermissionsForUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 5212
    int-to-float v0, p1

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 5213
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;IZ)V

    .line 5214
    return-void
.end method

.method public restoreDelayedRuntimePermissions(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2059
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2060
    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 2061
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 2062
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2063
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 2065
    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2066
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 2067
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I)V

    .line 2066
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2075
    return-void

    .line 2065
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method public restoreRuntimePermissions([BI)V
    .locals 2
    .param p1, "backup"    # [B
    .param p2, "userId"    # I

    .line 2037
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2038
    int-to-float v0, p2

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 2039
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 2040
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2041
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2042
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 2043
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2042
    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionControllerManager;->stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V

    .line 2044
    return-void

    .line 2041
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method public revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1527
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1528
    .local v5, "callingUid":I
    nop

    .line 1529
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {p0, v5, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1531
    .local v3, "overridePolicy":Z
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_POST_NOTIFICATIONS_WITHOUT_KILL"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    const-string/jumbo v7, "skip permission revoke app kill for notification test"

    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .local v1, "packageName":Ljava/lang/String;
    .local v6, "userId":I
    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 1536
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 1515
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1516
    .local v4, "callingUid":I
    nop

    .line 1517
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string v1, "default:0"

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1521
    .local v3, "overridePolicy":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    move-object v6, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permName":Ljava/lang/String;
    .end local p4    # "userId":I
    .end local p5    # "reason":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "permName":Ljava/lang/String;
    .local v5, "userId":I
    .local v6, "reason":Ljava/lang/String;
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 1523
    return-void
.end method

.method public setDefaultPermissionGrantFingerprint(Ljava/lang/String;I)V
    .locals 0
    .param p1, "fingerprint"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4668
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 1912
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1913
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 1914
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INTERACT_ACROSS_USERS_FULL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canShowRequestPermissionRationale for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1920
    const-wide/32 v6, 0x10000000

    invoke-virtual {v0, v2, v6, v7, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    .line 1921
    .local v6, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/4 v8, 0x0

    if-eq v0, v7, :cond_1

    .line 1922
    return v8

    .line 1925
    :cond_1
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 1926
    return v8

    .line 1931
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1933
    .local v9, "identity":J
    :try_start_0
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move v7, v0

    .line 1935
    .local v7, "flags":I
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1936
    nop

    .line 1938
    const/16 v11, 0x16

    .line 1942
    .local v11, "fixedFlags":I
    and-int/lit8 v0, v7, 0x16

    if-eqz v0, :cond_3

    .line 1943
    return v8

    .line 1946
    :cond_3
    iget-object v12, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v12

    .line 1947
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1948
    .local v0, "permission":Lcom/android/server/pm/permission/Permission;
    if-nez v0, :cond_4

    .line 1949
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v8

    .line 1955
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    :catchall_0
    move-exception v0

    move-wide v15, v9

    goto :goto_5

    .line 1951
    .restart local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->isHardRestricted()Z

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v13, :cond_5

    and-int/lit16 v13, v7, 0x3800

    if-nez v13, :cond_5

    .line 1953
    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v8

    .line 1955
    .end local v0    # "permission":Lcom/android/server/pm/permission/Permission;
    :cond_5
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1957
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1959
    .local v12, "token":J
    const/4 v14, 0x1

    :try_start_6
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1960
    move-wide v15, v9

    .end local v9    # "identity":J
    .local v15, "identity":J
    const-wide/32 v8, 0x8c7dff3

    :try_start_7
    invoke-interface {v0, v8, v9, v2, v4}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_7

    .line 1962
    nop

    .line 1967
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1962
    return v14

    .line 1967
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1964
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1967
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catchall_2
    move-exception v0

    move-wide v15, v9

    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    goto :goto_4

    .line 1964
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catch_1
    move-exception v0

    move-wide v15, v9

    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    goto :goto_1

    .line 1959
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :cond_6
    move-wide v15, v9

    .line 1967
    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    :cond_7
    nop

    :goto_0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1968
    goto :goto_2

    .line 1964
    :goto_1
    nop

    .line 1965
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string v8, "PermissionManager"

    const-string v9, "Unable to check if compatibility change is enabled."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1967
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1970
    :goto_2
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_8

    move v8, v14

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    :goto_3
    return v8

    .line 1967
    :goto_4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1968
    throw v0

    .line 1955
    .end local v12    # "token":J
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catchall_3
    move-exception v0

    move-wide v15, v9

    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    :goto_5
    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_5

    .line 1935
    .end local v7    # "flags":I
    .end local v11    # "fixedFlags":I
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catchall_5
    move-exception v0

    move-wide v15, v9

    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1936
    throw v0
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "checkAdjustPolicyFlagPermission"    # Z
    .param p6, "deviceId"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .line 747
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 748
    .local v5, "callingUid":I
    const/4 v0, 0x0

    .line 750
    .local v0, "overridePolicy":Z
    const/16 v1, 0x3e8

    if-eq v5, v1, :cond_2

    if-eqz v5, :cond_2

    .line 751
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_2

    .line 752
    if-eqz p5, :cond_0

    .line 753
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string v3, "Need android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY to change policy flags"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 757
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v1

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_1

    .line 765
    :goto_0
    const/4 v0, 0x1

    move v7, v0

    goto :goto_1

    .line 759
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY needs  to be checked for packages targeting 29 or later when changing policy flags"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 769
    :cond_2
    move v7, v0

    .end local v0    # "overridePolicy":Z
    .local v7, "overridePolicy":Z
    :goto_1
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 772
    return-void
.end method

.method public updatePermissionFlagsForAllApps(III)V
    .locals 12
    .param p1, "flagMask"    # I
    .param p2, "flagValues"    # I
    .param p3, "userId"    # I

    .line 891
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 892
    .local v1, "callingUid":I
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mUserManagerInt:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    return-void

    .line 896
    :cond_0
    const-string/jumbo v0, "updatePermissionFlagsForAllApps"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 898
    const/4 v4, 0x1

    const-string/jumbo v5, "updatePermissionFlagsForAllApps"

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p3

    .end local p3    # "userId":I
    .local v2, "userId":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 904
    const/16 p3, 0x3e8

    if-eq v1, p3, :cond_1

    .line 905
    move v10, p1

    goto :goto_0

    :cond_1
    and-int/lit8 v3, p1, -0x11

    move v10, v3

    .line 906
    .local v10, "effectiveFlagMask":I
    :goto_0
    if-eq v1, p3, :cond_2

    .line 907
    move v11, p2

    goto :goto_1

    :cond_2
    and-int/lit8 p3, p2, -0x11

    move v11, p3

    .line 909
    .local v11, "effectiveFlagValues":I
    :goto_1
    const/4 p3, 0x1

    new-array v9, p3, [Z

    .line 910
    .local v9, "changed":[Z
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v6, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda1;

    move-object v7, v0

    move v8, v2

    .end local v2    # "userId":I
    .local v8, "userId":I
    invoke-direct/range {v6 .. v11}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;I[ZII)V

    .end local v8    # "userId":I
    .restart local v2    # "userId":I
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 925
    const/4 v3, 0x0

    aget-boolean v3, v9, v3

    if-eqz v3, :cond_3

    .line 926
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    filled-new-array {v2}, [I

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 928
    :cond_3
    return-void
.end method

.method public writeLegacyPermissionStateTEMP()V
    .locals 3

    .line 4540
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 4541
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mState:Lcom/android/server/pm/permission/DevicePermissionState;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/DevicePermissionState;->getUserIds()[I

    move-result-object v1

    .line 4542
    .local v1, "userIds":[I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4543
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[I)V

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackageSetting(Ljava/util/function/Consumer;)V

    .line 4594
    return-void

    .line 4542
    .end local v1    # "userIds":[I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method public writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 11
    .param p1, "legacyPermissionSettings"    # Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 4635
    const/4 v0, 0x0

    .local v0, "writePermissionOrPermissionTree":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 4637
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4638
    .local v1, "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 4639
    if-nez v0, :cond_0

    .line 4640
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissions()Ljava/util/Collection;

    move-result-object v3

    goto :goto_1

    .line 4648
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 4640
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mRegistry:Lcom/android/server/pm/permission/PermissionRegistry;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionRegistry;->getPermissionTrees()Ljava/util/Collection;

    move-result-object v3

    :goto_1
    nop

    .line 4641
    .local v3, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/Permission;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/Permission;

    .line 4643
    .local v5, "permission":Lcom/android/server/pm/permission/Permission;
    new-instance v6, Lcom/android/server/pm/permission/LegacyPermission;

    .line 4644
    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/pm/permission/Permission;->getType()I

    move-result v8

    sget-object v9, Llibcore/util/EmptyArray;->INT:[I

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v10, v9}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 4646
    .local v6, "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4647
    nop

    .end local v5    # "permission":Lcom/android/server/pm/permission/Permission;
    .end local v6    # "legacyPermission":Lcom/android/server/pm/permission/LegacyPermission;
    goto :goto_2

    .line 4648
    .end local v3    # "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/Permission;>;"
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4649
    if-nez v0, :cond_2

    .line 4650
    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissions(Ljava/util/List;)V

    goto :goto_3

    .line 4652
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissionTrees(Ljava/util/List;)V

    .line 4636
    .end local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4648
    .restart local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :goto_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v3

    .line 4635
    .end local v1    # "legacyPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/LegacyPermission;>;"
    :cond_3
    nop

    .line 4655
    .end local v0    # "writePermissionOrPermissionTree":I
    return-void
.end method
