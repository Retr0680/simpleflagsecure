.class final Lcom/android/server/devicepolicy/PolicyDefinition;
.super Ljava/lang/Object;
.source "PolicyDefinition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static APP_FUNCTIONS:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static AUDIT_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static AUTO_TIME:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static AUTO_TIME_ZONE:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static CONTENT_PROTECTION:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALSE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/MostRestrictive<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field static GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final GENERIC_PERMISSION_GRANT:Lcom/android/server/devicepolicy/PolicyDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field static KEYGUARD_DISABLED_FEATURES:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Landroid/app/admin/LockTaskPolicy;",
            ">;"
        }
    .end annotation
.end field

.field static MEMORY_TAGGING:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static PACKAGES_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static PASSWORD_COMPLEXITY:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static PERSONAL_APPS_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final POLICY_DEFINITIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final POLICY_FLAG_GLOBAL_ONLY_POLICY:I = 0x1

.field private static final POLICY_FLAG_INHERITABLE:I = 0x4

.field private static final POLICY_FLAG_LOCAL_ONLY_POLICY:I = 0x2

.field private static final POLICY_FLAG_NONE:I = 0x0

.field private static final POLICY_FLAG_NON_COEXISTABLE_POLICY:I = 0x8

.field private static final POLICY_FLAG_SKIP_ENFORCEMENT_IF_UNCHANGED:I = 0x20

.field private static final POLICY_FLAG_USER_RESTRICTION_POLICY:I = 0x10

.field static RESET_PASSWORD_TOKEN:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static SCREEN_CAPTURE_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static SECURITY_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "PolicyDefinition"

.field private static final TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/MostRestrictive<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static USB_DATA_SIGNALING:Lcom/android/server/devicepolicy/PolicyDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static USER_RESTRICTION_FLAGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/QuadFunction<",
            "TV;",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            "Landroid/app/admin/PolicyKey;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPolicyFlags:I

.field private final mPolicyKey:Landroid/app/admin/PolicyKey;

.field private final mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/PolicySerializer<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/devicepolicy/ResolutionMechanism<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$47gp_RDmPTRZnLdjPd-_ygMdBJo(Landroid/app/admin/LockTaskPolicy;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/PolicyDefinition;->lambda$static$0(Landroid/app/admin/LockTaskPolicy;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NhTUFT2zcWLFPLkIMQbqt6nSVQo(Ljava/lang/Boolean;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/PolicyDefinition;->lambda$static$1(Ljava/lang/Boolean;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 38

    .line 93
    new-instance v0, Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v1, Landroid/app/admin/BooleanPolicyValue;

    const/4 v2, 0x0

    .line 432
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 93
    invoke-direct {v1, v2}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    new-instance v4, Landroid/app/admin/BooleanPolicyValue;

    const/4 v5, 0x1

    .line 435
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 93
    invoke-direct {v4, v5}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 94
    invoke-static {v1, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->FALSE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    .line 96
    new-instance v0, Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v1, Landroid/app/admin/BooleanPolicyValue;

    invoke-direct {v1, v5}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    new-instance v4, Landroid/app/admin/BooleanPolicyValue;

    invoke-direct {v4, v2}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 97
    invoke-static {v1, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    .line 99
    new-instance v7, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v8, Landroid/app/admin/NoArgsPolicyKey;

    const-string v0, "autoTimezone"

    invoke-direct {v8, v0}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/android/server/devicepolicy/TopPriority;

    .line 105
    const-string v1, "android.app.role.SYSTEM_SUPERVISION"

    invoke-static {v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    const-string v13, "android.app.role.SYSTEM_FINANCED_DEVICE_CONTROLLER"

    invoke-static {v13}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 104
    const-string v14, "enterprise"

    invoke-static {v4, v10, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v9, v4}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda1;

    invoke-direct {v11}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda1;-><init>()V

    new-instance v12, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct {v12}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;-><init>()V

    const/4 v10, 0x1

    invoke-direct/range {v7 .. v12}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v7, Lcom/android/server/devicepolicy/PolicyDefinition;->AUTO_TIME_ZONE:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 112
    new-instance v15, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v4, Landroid/app/admin/PackagePermissionPolicyKey;

    const-string/jumbo v7, "permissionGrant"

    invoke-direct {v4, v7}, Landroid/app/admin/PackagePermissionPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v9, Landroid/app/admin/IntegerPolicyValue;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v11, Landroid/app/admin/IntegerPolicyValue;

    invoke-direct {v11, v5}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v12, Landroid/app/admin/IntegerPolicyValue;

    invoke-direct {v12, v2}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 119
    invoke-static {v9, v11, v12}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    new-instance v19, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda10;

    invoke-direct/range {v19 .. v19}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda10;-><init>()V

    new-instance v20, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v20 .. v20}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;-><init>()V

    const/16 v18, 0x2

    move-object/from16 v16, v4

    move-object/from16 v17, v8

    invoke-direct/range {v15 .. v20}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v15, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERMISSION_GRANT:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 141
    new-instance v16, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v4, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v8, "securityLogging"

    invoke-direct {v4, v8}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    sget-object v18, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v20, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda13;

    invoke-direct/range {v20 .. v20}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda13;-><init>()V

    new-instance v21, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct/range {v21 .. v21}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    const/16 v19, 0x1

    move-object/from16 v17, v4

    invoke-direct/range {v16 .. v21}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v16, Lcom/android/server/devicepolicy/PolicyDefinition;->SECURITY_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 148
    new-instance v17, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v4, Landroid/app/admin/NoArgsPolicyKey;

    const-string v9, "auditLogging"

    invoke-direct {v4, v9}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    sget-object v19, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v21, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda14;

    invoke-direct/range {v21 .. v21}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda14;-><init>()V

    new-instance v22, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct/range {v22 .. v22}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    const/16 v20, 0x1

    move-object/from16 v18, v4

    invoke-direct/range {v17 .. v22}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v17, Lcom/android/server/devicepolicy/PolicyDefinition;->AUDIT_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 155
    new-instance v18, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v4, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v11, "lockTask"

    invoke-direct {v4, v11}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/android/server/devicepolicy/TopPriority;

    .line 158
    invoke-static {v13}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 157
    invoke-static {v15, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v12, v15}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    new-instance v22, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda15;

    invoke-direct/range {v22 .. v22}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda15;-><init>()V

    new-instance v23, Lcom/android/server/devicepolicy/LockTaskPolicySerializer;

    invoke-direct/range {v23 .. v23}, Lcom/android/server/devicepolicy/LockTaskPolicySerializer;-><init>()V

    const/16 v21, 0x2

    move-object/from16 v19, v4

    move-object/from16 v20, v12

    invoke-direct/range {v18 .. v23}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v18, Lcom/android/server/devicepolicy/PolicyDefinition;->LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 165
    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v12, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v15, "userControlDisabledPackages"

    invoke-direct {v12, v15}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/devicepolicy/PackageSetUnion;

    invoke-direct {v2}, Lcom/android/server/devicepolicy/PackageSetUnion;-><init>()V

    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda16;

    invoke-direct {v10}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda16;-><init>()V

    new-instance v5, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;

    invoke-direct {v5}, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;-><init>()V

    invoke-direct {v4, v12, v2, v10, v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;Lcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v4, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 173
    new-instance v19, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v2, Landroid/app/admin/IntentFilterPolicyKey;

    const-string/jumbo v4, "persistentPreferredActivity"

    invoke-direct {v2, v4}, Landroid/app/admin/IntentFilterPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/devicepolicy/TopPriority;

    .line 178
    invoke-static {v13}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 177
    invoke-static {v10, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    new-instance v23, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda17;

    invoke-direct/range {v23 .. v23}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda17;-><init>()V

    new-instance v24, Lcom/android/server/devicepolicy/ComponentNamePolicySerializer;

    invoke-direct/range {v24 .. v24}, Lcom/android/server/devicepolicy/ComponentNamePolicySerializer;-><init>()V

    const/16 v22, 0x2

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    invoke-direct/range {v19 .. v24}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v19, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 193
    new-instance v20, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v2, Landroid/app/admin/PackagePolicyKey;

    const-string/jumbo v5, "packageUninstallBlocked"

    invoke-direct {v2, v5}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    sget-object v22, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v24, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda18;

    invoke-direct/range {v24 .. v24}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda18;-><init>()V

    new-instance v25, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct/range {v25 .. v25}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    const/16 v23, 0x2

    move-object/from16 v21, v2

    invoke-direct/range {v20 .. v25}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v20, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 209
    new-instance v21, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v2, Landroid/app/admin/PackagePolicyKey;

    const-string v10, "applicationRestrictions"

    invoke-direct {v2, v10}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v23, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v23 .. v23}, Lcom/android/server/devicepolicy/MostRecent;-><init>()V

    new-instance v25, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda19;

    invoke-direct/range {v25 .. v25}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda19;-><init>()V

    new-instance v26, Lcom/android/server/devicepolicy/BundlePolicySerializer;

    invoke-direct/range {v26 .. v26}, Lcom/android/server/devicepolicy/BundlePolicySerializer;-><init>()V

    const/16 v24, 0x2e

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v26}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v21, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 230
    new-instance v22, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v2, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v12, "resetPasswordToken"

    invoke-direct {v2, v12}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v24, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v24 .. v24}, Lcom/android/server/devicepolicy/MostRecent;-><init>()V

    new-instance v26, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda20;

    invoke-direct/range {v26 .. v26}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda20;-><init>()V

    new-instance v27, Lcom/android/server/devicepolicy/LongPolicySerializer;

    invoke-direct/range {v27 .. v27}, Lcom/android/server/devicepolicy/LongPolicySerializer;-><init>()V

    const/16 v25, 0xa

    move-object/from16 v23, v2

    invoke-direct/range {v22 .. v27}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v22, Lcom/android/server/devicepolicy/PolicyDefinition;->RESET_PASSWORD_TOKEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 240
    new-instance v23, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v2, Landroid/app/admin/NoArgsPolicyKey;

    move-object/from16 v19, v1

    const-string/jumbo v1, "keyguardDisabledFeatures"

    invoke-direct {v2, v1}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v25, Lcom/android/server/devicepolicy/FlagUnion;

    invoke-direct/range {v25 .. v25}, Lcom/android/server/devicepolicy/FlagUnion;-><init>()V

    new-instance v27, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda2;

    invoke-direct/range {v27 .. v27}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda2;-><init>()V

    new-instance v28, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v28 .. v28}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;-><init>()V

    const/16 v26, 0x2

    move-object/from16 v24, v2

    invoke-direct/range {v23 .. v28}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v23, Lcom/android/server/devicepolicy/PolicyDefinition;->KEYGUARD_DISABLED_FEATURES:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 248
    new-instance v24, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v2, Landroid/app/admin/PackagePolicyKey;

    move-object/from16 v20, v13

    const-string v13, "applicationHidden"

    invoke-direct {v2, v13}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    sget-object v26, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v28, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda3;

    invoke-direct/range {v28 .. v28}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda3;-><init>()V

    new-instance v29, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct/range {v29 .. v29}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    const/16 v27, 0x6

    move-object/from16 v25, v2

    invoke-direct/range {v24 .. v29}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v24, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 267
    new-instance v25, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v2, Landroid/app/admin/AccountTypePolicyKey;

    move-object/from16 v21, v6

    const-string v6, "accountManagementDisabled"

    invoke-direct {v2, v6}, Landroid/app/admin/AccountTypePolicyKey;-><init>(Ljava/lang/String;)V

    sget-object v27, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v29, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda4;

    invoke-direct/range {v29 .. v29}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda4;-><init>()V

    new-instance v30, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct/range {v30 .. v30}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    const/16 v28, 0x6

    move-object/from16 v26, v2

    invoke-direct/range {v25 .. v30}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v25, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 284
    new-instance v26, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v2, Landroid/app/admin/NoArgsPolicyKey;

    move-object/from16 v22, v3

    const-string/jumbo v3, "permittedInputMethods"

    invoke-direct {v2, v3}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 286
    nop

    .line 288
    new-instance v28, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v28 .. v28}, Lcom/android/server/devicepolicy/MostRecent;-><init>()V

    new-instance v30, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda5;

    invoke-direct/range {v30 .. v30}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda5;-><init>()V

    new-instance v31, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;

    invoke-direct/range {v31 .. v31}, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;-><init>()V

    const/16 v29, 0x6

    move-object/from16 v27, v2

    invoke-direct/range {v26 .. v31}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v26, Lcom/android/server/devicepolicy/PolicyDefinition;->PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 294
    new-instance v27, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v2, Landroid/app/admin/NoArgsPolicyKey;

    move-object/from16 v23, v3

    const-string/jumbo v3, "screenCaptureDisabled"

    invoke-direct {v2, v3}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    sget-object v29, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v31, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda6;

    invoke-direct/range {v31 .. v31}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda6;-><init>()V

    new-instance v32, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct/range {v32 .. v32}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    const/16 v30, 0x4

    move-object/from16 v28, v2

    invoke-direct/range {v27 .. v32}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v27, Lcom/android/server/devicepolicy/PolicyDefinition;->SCREEN_CAPTURE_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 301
    new-instance v28, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v2, Landroid/app/admin/NoArgsPolicyKey;

    move-object/from16 v24, v3

    const-string/jumbo v3, "personalAppsSuspended"

    invoke-direct {v2, v3}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v30, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v30 .. v30}, Lcom/android/server/devicepolicy/MostRecent;-><init>()V

    new-instance v32, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda7;

    invoke-direct/range {v32 .. v32}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda7;-><init>()V

    new-instance v33, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct/range {v33 .. v33}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    const/16 v31, 0x6

    move-object/from16 v29, v2

    invoke-direct/range {v28 .. v33}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v28, Lcom/android/server/devicepolicy/PolicyDefinition;->PERSONAL_APPS_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 308
    new-instance v29, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v2, Landroid/app/admin/NoArgsPolicyKey;

    move-object/from16 v25, v3

    const-string/jumbo v3, "usbDataSignaling"

    invoke-direct {v2, v3}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/android/server/devicepolicy/PolicyDefinition;->FALSE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v33, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda8;

    invoke-direct/range {v33 .. v33}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda8;-><init>()V

    new-instance v34, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct/range {v34 .. v34}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    const/16 v32, 0x1

    move-object/from16 v30, v2

    invoke-direct/range {v29 .. v34}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v29, Lcom/android/server/devicepolicy/PolicyDefinition;->USB_DATA_SIGNALING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 317
    new-instance v30, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v2, Landroid/app/admin/NoArgsPolicyKey;

    const-string v3, "contentProtection"

    invoke-direct {v2, v3}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v32, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v32 .. v32}, Lcom/android/server/devicepolicy/MostRecent;-><init>()V

    new-instance v34, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda9;

    invoke-direct/range {v34 .. v34}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda9;-><init>()V

    new-instance v35, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v35 .. v35}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;-><init>()V

    const/16 v33, 0x2

    move-object/from16 v31, v2

    invoke-direct/range {v30 .. v35}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v30, Lcom/android/server/devicepolicy/PolicyDefinition;->CONTENT_PROTECTION:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 324
    new-instance v31, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v2, Landroid/app/admin/NoArgsPolicyKey;

    const-string v3, "appFunctions"

    invoke-direct {v2, v3}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/devicepolicy/MostRestrictive;

    move-object/from16 v32, v2

    new-instance v2, Landroid/app/admin/IntegerPolicyValue;

    move-object/from16 v26, v6

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v6, Landroid/app/admin/IntegerPolicyValue;

    move-object/from16 v18, v13

    const/4 v13, 0x2

    invoke-direct {v6, v13}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v13, Landroid/app/admin/IntegerPolicyValue;

    move-object/from16 v17, v1

    const/4 v1, 0x0

    invoke-direct {v13, v1}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 327
    invoke-static {v2, v6, v13}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    new-instance v35, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda2;

    invoke-direct/range {v35 .. v35}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda2;-><init>()V

    new-instance v36, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v36 .. v36}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;-><init>()V

    const/16 v34, 0x2

    move-object/from16 v33, v3

    invoke-direct/range {v31 .. v36}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v31, Lcom/android/server/devicepolicy/PolicyDefinition;->APP_FUNCTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 338
    new-instance v32, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v2, "passwordComplexity"

    invoke-direct {v1, v2}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v3, Landroid/app/admin/IntegerPolicyValue;

    const/high16 v6, 0x50000

    invoke-direct {v3, v6}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v6, Landroid/app/admin/IntegerPolicyValue;

    const/high16 v13, 0x30000

    invoke-direct {v6, v13}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v13, Landroid/app/admin/IntegerPolicyValue;

    move-object/from16 v33, v1

    const/high16 v1, 0x10000

    invoke-direct {v13, v1}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v1, Landroid/app/admin/IntegerPolicyValue;

    move-object/from16 v27, v12

    const/4 v12, 0x0

    invoke-direct {v1, v12}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 341
    invoke-static {v3, v6, v13, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    new-instance v36, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda2;

    invoke-direct/range {v36 .. v36}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda2;-><init>()V

    new-instance v37, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v37 .. v37}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;-><init>()V

    const/16 v35, 0x2

    move-object/from16 v34, v2

    invoke-direct/range {v32 .. v37}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v32, Lcom/android/server/devicepolicy/PolicyDefinition;->PASSWORD_COMPLEXITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 354
    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v2, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v3, "packagesSuspended"

    invoke-direct {v2, v3}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/devicepolicy/PackageSetUnion;

    invoke-direct {v3}, Lcom/android/server/devicepolicy/PackageSetUnion;-><init>()V

    new-instance v6, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda5;-><init>()V

    new-instance v12, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;

    invoke-direct {v12}, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;-><init>()V

    invoke-direct {v1, v2, v3, v6, v12}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;Lcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->PACKAGES_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 362
    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v2, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v3, "memoryTagging"

    invoke-direct {v2, v3}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/devicepolicy/TopPriority;

    .line 365
    invoke-static {v14}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda11;

    invoke-direct {v6}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda11;-><init>()V

    new-instance v12, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct {v12}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;-><init>()V

    invoke-direct {v1, v2, v3, v6, v12}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;Lcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->MEMORY_TAGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 369
    new-instance v28, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string v2, "autoTime"

    invoke-direct {v1, v2}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/devicepolicy/TopPriority;

    .line 372
    invoke-static/range {v19 .. v19}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-static/range {v20 .. v20}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 371
    invoke-static {v3, v6, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    new-instance v32, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda12;

    invoke-direct/range {v32 .. v32}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda12;-><init>()V

    new-instance v33, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v33 .. v33}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;-><init>()V

    const/16 v31, 0x1

    move-object/from16 v29, v1

    move-object/from16 v30, v2

    invoke-direct/range {v28 .. v33}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v28, Lcom/android/server/devicepolicy/PolicyDefinition;->AUTO_TIME:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 379
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 380
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 384
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->AUTO_TIME_ZONE:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERMISSION_GRANT:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->SECURITY_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->AUDIT_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->RESET_PASSWORD_TOKEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v2, v27

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->KEYGUARD_DISABLED_FEATURES:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v2, v17

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v2, v18

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v2, v26

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v2, v23

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->SCREEN_CAPTURE_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v2, v24

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->PERSONAL_APPS_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v2, v25

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    const-string/jumbo v1, "usbDataSignaling"

    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->USB_DATA_SIGNALING:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    const-string v1, "contentProtection"

    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->CONTENT_PROTECTION:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    const-string v1, "appFunctions"

    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->APP_FUNCTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    const-string/jumbo v1, "passwordComplexity"

    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->PASSWORD_COMPLEXITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    const-string/jumbo v1, "packagesSuspended"

    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->PACKAGES_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    const-string/jumbo v1, "memoryTagging"

    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->MEMORY_TAGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    const-string v1, "autoTime"

    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->AUTO_TIME:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_modify_accounts"

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_wifi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 435
    nop

    .line 434
    const-string/jumbo v1, "no_change_wifi_state"

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 437
    nop

    .line 436
    const-string/jumbo v1, "no_wifi_tethering"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_grant_admin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 441
    nop

    .line 440
    const-string/jumbo v1, "no_sharing_admin_configured_wifi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 443
    nop

    .line 442
    const-string/jumbo v1, "no_wifi_direct"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 445
    nop

    .line 444
    const-string/jumbo v1, "no_add_wifi_config"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_locale"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_install_apps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_uninstall_apps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_share_location"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 451
    nop

    .line 450
    const-string/jumbo v1, "no_airplane_mode"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_brightness"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_ambient_display"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_screen_timeout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 457
    nop

    .line 456
    const-string/jumbo v1, "no_install_unknown_sources_globally"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_bluetooth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_bluetooth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_bluetooth_sharing"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 464
    nop

    .line 463
    const-string/jumbo v1, "no_usb_file_transfer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_credentials"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_remove_user"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_remove_managed_profile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_debugging_features"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_vpn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_location"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_date_time"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 473
    nop

    .line 472
    const-string/jumbo v1, "no_config_tethering"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 477
    nop

    .line 476
    const-string/jumbo v1, "no_network_reset"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_factory_reset"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_add_user"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_add_managed_profile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_add_clone_profile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_add_private_profile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "ensure_verify_apps"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_cell_broadcasts"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_mobile_networks"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_control_apps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_physical_media"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_unmute_microphone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_adjust_volume"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_outgoing_calls"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_sms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_fun"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_create_windows"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_system_error_dialogs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_cross_profile_copy_paste"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_outgoing_beam"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_wallpaper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_set_wallpaper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_safe_boot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_record_audio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_run_in_background"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_camera"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "disallow_unmute_device"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_data_roaming"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_set_user_icon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_oem_unlock"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_unified_password"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "allow_parent_profile_app_linking"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_autofill"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_content_capture"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_content_suggestions"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 516
    nop

    .line 515
    const-string/jumbo v1, "no_user_switch"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_sharing_into_profile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_printing"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 520
    nop

    .line 519
    const-string v1, "disallow_config_private_dns"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "disallow_microphone_toggle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "disallow_camera_toggle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "disallow_biometric"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "disallow_config_default_apps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 528
    nop

    .line 527
    const-string/jumbo v1, "no_cellular_2g"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 530
    nop

    .line 529
    const-string/jumbo v1, "no_ultra_wideband_radio"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 533
    nop

    .line 531
    const-string/jumbo v1, "no_near_field_communication_radio"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 536
    nop

    .line 534
    const-string/jumbo v1, "no_sim_globally"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_assist_content"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    nop

    .line 539
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 540
    nop

    .line 539
    const-string/jumbo v1, "no_thread_network"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 543
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/PolicyDefinition;->createAndAddUserRestrictionPolicyDefinition(Ljava/lang/String;I)V

    .line 544
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 545
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V
    .locals 2
    .param p1, "policyKey"    # Landroid/app/admin/PolicyKey;
    .param p3, "policyFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/PolicyKey;",
            "Lcom/android/server/devicepolicy/ResolutionMechanism<",
            "TV;>;I",
            "Lcom/android/internal/util/function/QuadFunction<",
            "TV;",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            "Landroid/app/admin/PolicyKey;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lcom/android/server/devicepolicy/PolicySerializer<",
            "TV;>;)V"
        }
    .end annotation

    .line 664
    .local p0, "this":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local p2, "resolutionMechanism":Lcom/android/server/devicepolicy/ResolutionMechanism;, "Lcom/android/server/devicepolicy/ResolutionMechanism<TV;>;"
    .local p4, "policyEnforcerCallback":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<TV;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;>;"
    .local p5, "policySerializer":Lcom/android/server/devicepolicy/PolicySerializer;, "Lcom/android/server/devicepolicy/PolicySerializer<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 667
    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 668
    iput p3, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 669
    iput-object p4, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    .line 670
    iput-object p5, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    .line 672
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->isLocalOnlyPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 673
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Non-coexistable global policies not supported,please add support."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;Lcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V
    .locals 6
    .param p1, "key"    # Landroid/app/admin/PolicyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/PolicyKey;",
            "Lcom/android/server/devicepolicy/ResolutionMechanism<",
            "TV;>;",
            "Lcom/android/internal/util/function/QuadFunction<",
            "TV;",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            "Landroid/app/admin/PolicyKey;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lcom/android/server/devicepolicy/PolicySerializer<",
            "TV;>;)V"
        }
    .end annotation

    .line 651
    .local p0, "this":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local p2, "resolutionMechanism":Lcom/android/server/devicepolicy/ResolutionMechanism;, "Lcom/android/server/devicepolicy/ResolutionMechanism<TV;>;"
    .local p3, "policyEnforcerCallback":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<TV;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;>;"
    .local p4, "policySerializer":Lcom/android/server/devicepolicy/PolicySerializer;, "Lcom/android/server/devicepolicy/PolicySerializer<TV;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "key":Landroid/app/admin/PolicyKey;
    .end local p2    # "resolutionMechanism":Lcom/android/server/devicepolicy/ResolutionMechanism;, "Lcom/android/server/devicepolicy/ResolutionMechanism<TV;>;"
    .end local p3    # "policyEnforcerCallback":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<TV;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;>;"
    .end local p4    # "policySerializer":Lcom/android/server/devicepolicy/PolicySerializer;, "Lcom/android/server/devicepolicy/PolicySerializer<TV;>;"
    .local v1, "key":Landroid/app/admin/PolicyKey;
    .local v2, "resolutionMechanism":Lcom/android/server/devicepolicy/ResolutionMechanism;, "Lcom/android/server/devicepolicy/ResolutionMechanism<TV;>;"
    .local v4, "policyEnforcerCallback":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<TV;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;>;"
    .local v5, "policySerializer":Lcom/android/server/devicepolicy/PolicySerializer;, "Lcom/android/server/devicepolicy/PolicySerializer<TV;>;"
    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 652
    return-void
.end method

.method static ACCOUNT_MANAGEMENT_DISABLED(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3
    .param p0, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/AccountTypePolicyKey;

    const-string v2, "accountManagementDisabled"

    invoke-direct {v1, v2, p0}, Landroid/app/admin/AccountTypePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v0

    return-object v0
.end method

.method static APPLICATION_HIDDEN(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/PackagePolicyKey;

    const-string v2, "applicationHidden"

    invoke-direct {v1, v2, p0}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v0

    return-object v0
.end method

.method static APPLICATION_RESTRICTIONS(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/PackagePolicyKey;

    const-string v2, "applicationRestrictions"

    invoke-direct {v1, v2, p0}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v0

    return-object v0
.end method

.method static PACKAGE_UNINSTALL_BLOCKED(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/PackagePolicyKey;

    const-string/jumbo v2, "packageUninstallBlocked"

    invoke-direct {v1, v2, p0}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v0

    return-object v0
.end method

.method static PERMISSION_GRANT(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "permissionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERMISSION_GRANT:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/PackagePermissionPolicyKey;

    const-string/jumbo v2, "permissionGrant"

    invoke-direct {v1, v2, p0, p1}, Landroid/app/admin/PackagePermissionPolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v0

    return-object v0
.end method

.method static PERSISTENT_PREFERRED_ACTIVITY(Landroid/content/IntentFilter;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3
    .param p0, "intentFilter"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/IntentFilterPolicyKey;

    const-string/jumbo v2, "persistentPreferredActivity"

    invoke-direct {v1, v2, p0}, Landroid/app/admin/IntentFilterPolicyKey;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;)V

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v0

    return-object v0
.end method

.method private static createAndAddUserRestrictionPolicyDefinition(Ljava/lang/String;I)V
    .locals 8
    .param p0, "restriction"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 629
    invoke-static {p0}, Landroid/app/admin/DevicePolicyIdentifiers;->getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "identifier":Ljava/lang/String;
    new-instance v1, Landroid/app/admin/UserRestrictionPolicyKey;

    invoke-direct {v1, v0, p0}, Landroid/app/admin/UserRestrictionPolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    .line 631
    .local v3, "key":Landroid/app/admin/UserRestrictionPolicyKey;
    or-int/lit8 v5, p1, 0x14

    .line 632
    .end local p1    # "flags":I
    .local v5, "flags":I
    new-instance v2, Lcom/android/server/devicepolicy/PolicyDefinition;

    sget-object v4, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v6, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>()V

    new-instance v7, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v7}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    invoke-direct/range {v2 .. v7}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 638
    .local v2, "definition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<Ljava/lang/Boolean;>;"
    sget-object p1, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/app/admin/UserRestrictionPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    return-void
.end method

.method private createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 6
    .param p1, "key"    # Landroid/app/admin/PolicyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/PolicyKey;",
            ")",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;"
        }
    .end annotation

    .line 557
    .local p0, "this":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    iget v3, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    iget-object v4, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    iget-object v5, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    move-object v1, p1

    .end local p1    # "key":Landroid/app/admin/PolicyKey;
    .local v1, "key":Landroid/app/admin/PolicyKey;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    return-object v0
.end method

.method static getPolicyDefinitionForUserRestriction(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 4
    .param p0, "restriction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 563
    invoke-static {p0}, Landroid/app/admin/DevicePolicyIdentifiers;->getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/PolicyDefinition;

    return-object v1

    .line 566
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported user restriction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static synthetic lambda$static$0(Landroid/app/admin/LockTaskPolicy;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "value"    # Landroid/app/admin/LockTaskPolicy;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/Integer;
    .param p3, "policyKey"    # Landroid/app/admin/PolicyKey;

    .line 162
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->setLockTask(Landroid/app/admin/LockTaskPolicy;Landroid/content/Context;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$1(Ljava/lang/Boolean;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "value"    # Ljava/lang/Boolean;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/Integer;
    .param p3, "policyKey"    # Landroid/app/admin/PolicyKey;

    .line 314
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->setUsbDataSignalingEnabled(Ljava/lang/Boolean;Landroid/content/Context;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method static readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 6
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            ")",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 682
    invoke-static {p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->readPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;

    move-result-object v0

    .line 683
    .local v0, "policyKey":Landroid/app/admin/PolicyKey;
    const/4 v1, 0x0

    const-string v2, "PolicyDefinition"

    if-nez v0, :cond_0

    .line 684
    const-string v3, "Error parsing PolicyDefinition, PolicyKey is null."

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-object v1

    .line 687
    :cond_0
    sget-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 688
    invoke-virtual {v0}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 689
    .local v3, "genericPolicyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    if-nez v3, :cond_1

    .line 690
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown generic policy key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return-object v1

    .line 693
    :cond_1
    invoke-direct {v3, v0}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v1

    return-object v1
.end method

.method static readPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;
    .locals 6
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    invoke-static {p0}, Landroid/app/admin/PolicyKey;->readGenericPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;

    move-result-object v0

    .line 700
    .local v0, "policyKey":Landroid/app/admin/PolicyKey;
    const/4 v1, 0x0

    const-string v2, "PolicyDefinition"

    if-nez v0, :cond_0

    .line 701
    const-string v3, "Error parsing PolicyKey, GenericPolicyKey is null"

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-object v1

    .line 704
    :cond_0
    sget-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 705
    invoke-virtual {v0}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 706
    .local v3, "genericPolicyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<*>;"
    if-nez v3, :cond_1

    .line 707
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing PolicyKey, Unknown generic policy key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-object v1

    .line 710
    :cond_1
    iget-object v1, v3, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {v1, p0}, Landroid/app/admin/PolicyKey;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method enforcePolicy(Ljava/lang/Object;Landroid/content/Context;I)Ljava/util/concurrent/CompletableFuture;
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 624
    .local p0, "this":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method

.method getPolicyKey()Landroid/app/admin/PolicyKey;
    .locals 1

    .line 574
    .local p0, "this":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    return-object v0
.end method

.method getResolutionMechanism()Lcom/android/server/devicepolicy/ResolutionMechanism;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/devicepolicy/ResolutionMechanism<",
            "TV;>;"
        }
    .end annotation

    .line 579
    .local p0, "this":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    return-object v0
.end method

.method isGlobalOnlyPolicy()Z
    .locals 2

    .line 585
    .local p0, "this":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    iget v0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isInheritable()Z
    .locals 1

    .line 599
    .local p0, "this":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    iget v0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isLocalOnlyPolicy()Z
    .locals 1

    .line 592
    .local p0, "this":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    iget v0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNonCoexistablePolicy()Z
    .locals 1

    .line 607
    .local p0, "this":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    iget v0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUserRestrictionPolicy()Z
    .locals 1

    .line 611
    .local p0, "this":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    iget v0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method readPolicyValueFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;
    .locals 1
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            ")",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;"
        }
    .end annotation

    .line 720
    .local p0, "this":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/PolicySerializer;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;

    move-result-object v0

    return-object v0
.end method

.method resolvePolicy(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;>;)",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;"
        }
    .end annotation

    .line 620
    .local p0, "this":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local p1, "adminsPolicy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue<TV;>;>;"
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/ResolutionMechanism;->resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;

    move-result-object v0

    return-object v0
.end method

.method savePolicyValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlSerializer;",
            "TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 715
    .local p0, "this":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/devicepolicy/PolicySerializer;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Object;)V

    .line 716
    return-void
.end method

.method shouldSkipEnforcementIfNotChanged()Z
    .locals 1

    .line 615
    .local p0, "this":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    iget v0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 725
    .local p0, "this":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PolicyDefinition{ mPolicyKey= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mResolutionMechanism= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPolicyFlags= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
