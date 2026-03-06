.class final Lcom/android/server/devicepolicy/DevicePolicyEngine;
.super Ljava/lang/Object;
.source "DevicePolicyEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;
    }
.end annotation


# static fields
.field private static final CELLULAR_2G_USER_RESTRICTION_ID:Ljava/lang/String;

.field static final DEFAULT_POLICY_SIZE_LIMIT:I = -0x1

.field static final DEVICE_LOCK_CONTROLLER_ROLE:Ljava/lang/String; = "android.app.role.SYSTEM_FINANCED_DEVICE_CONTROLLER"

.field static final SYSTEM_SUPERVISION_ROLE:Ljava/lang/String; = "android.app.role.SYSTEM_SUPERVISION"

.field static final TAG:Ljava/lang/String; = "DevicePolicyEngine"


# instance fields
.field private final mAdminPolicySize:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

.field private final mEnforcingAdmins:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGlobalPolicies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/admin/PolicyKey;",
            "Lcom/android/server/devicepolicy/PolicyState<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mLocalPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Landroid/app/admin/PolicyKey;",
            "Lcom/android/server/devicepolicy/PolicyState<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mNtEngine:Lcom/android/server/devicepolicy/NtDevicePolicyEngine;

.field private mPolicySizeLimit:I

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$50AwKzKYkOlsFpMRChGeKbNAIWw(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$maybeSendOnPolicyChanged$4(Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$HEsFA9ci1FtT28qaffzy5LIPWrk(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$handlePackageChanged$6(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IxGEP9uo91WWwelHBNTlMPQ4Ci0(Lcom/android/server/devicepolicy/DevicePolicyEngine;Lcom/android/server/devicepolicy/PolicyDefinition;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$forceEnforcementRefreshLocked$0(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UbBIWajvlgkeyZV1KUC4Hq9lSXI(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$sendPolicyResultToAdmin$3(Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$bD2OYhKK2KHgzA47EkdNUupPEOw(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/pm/UserInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$enforcePoliciesOnInheritableProfilesIfApplicable$7(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bDNaosMrhDPuq_Z2aOL_ojrwXq8(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$sendDevicePolicyChangedToSystem$2(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kMXmfdDXbRpwOs8CtHJBxfa6iN8(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILandroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$applyToInheritableProfiles$1(ILandroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rKfEcU3QBSV-7f98mRsav6nNv-s(Lcom/android/server/devicepolicy/DevicePolicyEngine;I)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$getProfileParentId$5(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAdminPolicySize(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnforcingAdmins(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGlobalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPolicySizeLimit(Lcom/android/server/devicepolicy/DevicePolicyEngine;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPolicySizeLimit(Lcom/android/server/devicepolicy/DevicePolicyEngine;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 114
    nop

    .line 115
    const-string/jumbo v0, "no_cellular_2g"

    invoke-static {v0}, Landroid/app/admin/DevicePolicyIdentifiers;->getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->CELLULAR_2G_USER_RESTRICTION_ID:Ljava/lang/String;

    .line 114
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/devicepolicy/DeviceAdminServiceController;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceAdminServiceController"    # Lcom/android/server/devicepolicy/DeviceAdminServiceController;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 156
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    .line 158
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 160
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 161
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 165
    new-instance v0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mNtEngine:Lcom/android/server/devicepolicy/NtDevicePolicyEngine;

    .line 167
    return-void
.end method

.method private applyGlobalPolicyOnUsersWithLocalPoliciesLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Z)Z
    .locals 11
    .param p2, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p4, "skipEnforcePolicy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;Z)Z"
        }
    .end annotation

    .line 666
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local p3, "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isGlobalOnlyPolicy()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 667
    return v1

    .line 669
    :cond_0
    const/4 v0, 0x1

    .line 670
    .local v0, "isAdminPolicyApplied":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 671
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 672
    .local v3, "userId":I
    invoke-direct {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 673
    goto :goto_2

    .line 676
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v4

    .line 677
    .local v4, "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v5

    .line 679
    .local v5, "globalPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    nop

    .line 680
    invoke-virtual {v5}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 679
    invoke-virtual {v4, v6}, Lcom/android/server/devicepolicy/PolicyState;->resolvePolicy(Ljava/util/LinkedHashMap;)Z

    move-result v6

    .line 681
    .local v6, "policyChanged":Z
    if-eqz v6, :cond_2

    if-nez p4, :cond_2

    .line 682
    nop

    .line 684
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v7

    .line 682
    invoke-direct {p0, p1, v7, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    .line 686
    invoke-direct {p0, v4, p2, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 696
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->shouldApplyPackageSetUnionPolicyHack(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 697
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v7

    invoke-static {p3, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 698
    move-object v7, p3

    .line 699
    .local v7, "parsedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/util/Set<Ljava/lang/String;>;>;"
    nop

    .line 700
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v8

    .line 701
    .local v8, "parsedResolvedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 702
    invoke-virtual {v8}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-virtual {v7}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v9, v10}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    and-int/2addr v0, v9

    .line 703
    .end local v7    # "parsedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v8    # "parsedResolvedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/util/Set<Ljava/lang/String;>;>;"
    goto :goto_2

    .line 705
    :cond_4
    nop

    .line 706
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v7

    .line 705
    invoke-static {p3, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    and-int/2addr v0, v7

    .line 670
    .end local v3    # "userId":I
    .end local v4    # "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    .end local v5    # "globalPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    .end local v6    # "policyChanged":Z
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    nop

    .line 709
    .end local v2    # "i":I
    return v0
.end method

.method private applyToInheritableProfiles(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;I)V
    .locals 7
    .param p2, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;I)V"
        }
    .end annotation

    .line 433
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local p3, "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isInheritable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    return-void

    .line 436
    :cond_0
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v4, p3

    move v3, p4

    .end local p1    # "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .end local p2    # "enforcingAdmin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .end local p3    # "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    .end local p4    # "userId":I
    .local v3, "userId":I
    .local v4, "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    .local v5, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local v6, "enforcingAdmin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILandroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 450
    return-void
.end method

.method private checkFor2gFailure(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Z
    .locals 3
    .param p2, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            ")Z"
        }
    .end annotation

    .line 1882
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyEngine;->CELLULAR_2G_USER_RESTRICTION_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1884
    return v1

    .line 1889
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v2, "CAPABILITY_USES_ALLOWED_NETWORK_TYPES_BITMASK"

    .line 1890
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1896
    .local v0, "isCapabilitySupported":Z
    goto :goto_0

    .line 1892
    .end local v0    # "isCapabilitySupported":Z
    :catch_0
    move-exception v0

    .line 1895
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v2, 0x0

    move v0, v2

    .line 1898
    .local v0, "isCapabilitySupported":Z
    :goto_0
    if-nez v0, :cond_1

    .line 1899
    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    .line 1904
    const/4 v1, 0x1

    return v1

    .line 1907
    :cond_1
    return v1
.end method

.method private clear()V
    .locals 2

    .line 1872
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1873
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1874
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1875
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1876
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1877
    monitor-exit v0

    .line 1878
    return-void

    .line 1877
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private decreasePolicySizeForAdmin(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 3
    .param p2, "admin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyState<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            ")V"
        }
    .end annotation

    .line 1716
    .local p1, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 1717
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    nop

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 1718
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1721
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 1722
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1723
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyValue;

    .line 1722
    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sizeOf(Landroid/app/admin/PolicyValue;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1721
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1725
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1728
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1730
    :cond_2
    return-void

    .line 1719
    :cond_3
    :goto_0
    return-void
.end method

.method private doesAdminHavePoliciesLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)Z
    .locals 6
    .param p1, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1610
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PolicyKey;

    .line 1611
    .local v1, "policy":Landroid/app/admin/PolicyKey;
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/PolicyState;

    .line 1612
    .local v3, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1613
    return v2

    .line 1612
    :cond_0
    nop

    .line 1615
    .end local v1    # "policy":Landroid/app/admin/PolicyKey;
    .end local v3    # "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    goto :goto_0

    .line 1616
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1617
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyKey;

    .line 1618
    .local v3, "policy":Landroid/app/admin/PolicyKey;
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 1619
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1618
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 1619
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/PolicyState;

    .line 1620
    .local v4, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1621
    return v2

    .line 1620
    :cond_2
    nop

    .line 1623
    .end local v3    # "policy":Landroid/app/admin/PolicyKey;
    .end local v4    # "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    goto :goto_2

    .line 1616
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 1625
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method

.method private enforcePoliciesOnInheritableProfilesIfApplicable(Landroid/content/pm/UserInfo;)V
    .locals 1
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .line 1391
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1392
    return-void

    .line 1395
    :cond_0
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/pm/UserInfo;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1418
    return-void
.end method

.method private enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1079
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local p2, "policyValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    nop

    .line 1080
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    .line 1079
    invoke-virtual {p1, v0, v1, p3}, Lcom/android/server/devicepolicy/PolicyDefinition;->enforcePolicy(Ljava/lang/Object;Landroid/content/Context;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method private enforcePolicyOnUserLocked(ILcom/android/server/devicepolicy/PolicyState;)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/android/server/devicepolicy/PolicyState<",
            "TV;>;)V"
        }
    .end annotation

    .line 1422
    .local p2, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/PolicyDefinition;->isInheritable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1423
    return-void

    .line 1426
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1427
    .local v1, "enforcingAdminEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue<TV;>;>;"
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v2

    .line 1428
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1429
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/PolicyValue;

    .line 1427
    invoke-virtual {p0, v2, v3, v4, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;I)V

    .line 1431
    .end local v1    # "enforcingAdminEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue<TV;>;>;"
    goto :goto_0

    .line 1432
    :cond_1
    return-void
.end method

.method private forceEnforcementRefreshIfUserRestrictionLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "*>;)V"
        }
    .end annotation

    .line 173
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<*>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->isUserRestrictionPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->forceEnforcementRefreshLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 180
    :cond_0
    :goto_0
    goto :goto_2

    .line 177
    :goto_1
    nop

    .line 179
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DevicePolicyEngine"

    const-string v2, "Exception thrown during forceEnforcementRefreshIfUserRestrictionLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method private forceEnforcementRefreshLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Lcom/android/server/devicepolicy/PolicyDefinition;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 231
    return-void
.end method

.method private getEnforcingAdminsOnUser(I)Ljava/util/Set;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            ">;"
        }
    .end annotation

    .line 1630
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1631
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1632
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 1633
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1632
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    :goto_0
    monitor-exit v0

    .line 1631
    return-object v1

    .line 1633
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;)",
            "Lcom/android/server/devicepolicy/PolicyState<",
            "TV;>;"
        }
    .end annotation

    .line 1042
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isLocalOnlyPolicy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 1049
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v1

    new-instance v2, Lcom/android/server/devicepolicy/PolicyState;

    invoke-direct {v2, p1}, Lcom/android/server/devicepolicy/PolicyState;-><init>(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    .line 1048
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getPolicyStateLocked(Ljava/util/Map;Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v0

    return-object v0

    .line 1043
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is a local only policy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;
    .locals 3
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;I)",
            "Lcom/android/server/devicepolicy/PolicyState<",
            "TV;>;"
        }
    .end annotation

    .line 1015
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isGlobalOnlyPolicy()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1020
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1024
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1025
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v1

    new-instance v2, Lcom/android/server/devicepolicy/PolicyState;

    invoke-direct {v2, p1}, Lcom/android/server/devicepolicy/PolicyState;-><init>(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    .line 1024
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getPolicyStateLocked(Ljava/util/Map;Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v0

    return-object v0

    .line 1016
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is a global only policy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getPolicyStateLocked(Ljava/util/Map;Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Landroid/app/admin/PolicyKey;",
            "Lcom/android/server/devicepolicy/PolicyState<",
            "*>;>;",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;)",
            "Lcom/android/server/devicepolicy/PolicyState<",
            "TV;>;"
        }
    .end annotation

    .line 1066
    .local p0, "policies":Ljava/util/Map;, "Ljava/util/Map<Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/PolicyState<*>;>;"
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    nop

    .line 1067
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v0

    .line 1066
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/PolicyState;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    .local v0, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    return-object v0

    .line 1069
    .end local v0    # "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    :catch_0
    move-exception v0

    .line 1071
    .local v0, "exception":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private getProfileParentId(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 1213
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getResolvedPolicyValue(Lcom/android/server/devicepolicy/PolicyDefinition;I)Landroid/app/admin/PolicyValue;
    .locals 3
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;I)",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;"
        }
    .end annotation

    .line 723
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 725
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 726
    const/4 v1, 0x0

    .line 727
    .local v1, "resolvedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 728
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v2

    .line 729
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 735
    .end local v1    # "resolvedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 730
    .restart local v1    # "resolvedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 731
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v2

    .line 732
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v2

    move-object v1, v2

    .line 734
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    .line 735
    .end local v1    # "resolvedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getTargetUser(II)I
    .locals 2
    .param p1, "adminUserId"    # I
    .param p2, "targetUserId"    # I

    .line 1200
    const/4 v0, -0x3

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 1201
    return v0

    .line 1203
    :cond_0
    if-ne p1, p2, :cond_1

    .line 1204
    return v1

    .line 1206
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getProfileParentId(I)I

    move-result v1

    if-ne v1, p2, :cond_2

    .line 1207
    const/4 v0, -0x2

    return v0

    .line 1209
    :cond_2
    return v0
.end method

.method private getUserRestrictionPolicyKeysForAdminLocked(Ljava/util/Map;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/Set;
    .locals 5
    .param p2, "admin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/app/admin/PolicyKey;",
            "Lcom/android/server/devicepolicy/PolicyState<",
            "*>;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            ")",
            "Ljava/util/Set<",
            "Landroid/app/admin/UserRestrictionPolicyKey;",
            ">;"
        }
    .end annotation

    .line 967
    .local p1, "policies":Ljava/util/Map;, "Ljava/util/Map<Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/PolicyState<*>;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 968
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/UserRestrictionPolicyKey;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyKey;

    .line 969
    .local v2, "key":Landroid/app/admin/PolicyKey;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/PolicyDefinition;->isUserRestrictionPolicy()Z

    move-result v3

    if-nez v3, :cond_1

    .line 970
    goto :goto_0

    .line 973
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/PolicyState;

    .line 974
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyValue;

    .line 975
    .local v3, "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/lang/Boolean;>;"
    nop

    nop

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 976
    goto :goto_0

    .line 978
    :cond_2
    move-object v4, v2

    check-cast v4, Landroid/app/admin/UserRestrictionPolicyKey;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 979
    .end local v2    # "key":Landroid/app/admin/PolicyKey;
    .end local v3    # "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 980
    :cond_3
    return-object v0
.end method

.method private handleAdminPolicySizeLimit(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;I)Z
    .locals 5
    .param p2, "admin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyState<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;I)Z"
        }
    .end annotation

    .line 1667
    .local p1, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    .local p3, "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    .local p4, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    const/4 v0, 0x0

    .line 1668
    .local v0, "currentAdminPoliciesSize":I
    const/4 v1, 0x0

    .line 1669
    .local v1, "existingPolicySize":I
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    nop

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 1671
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v3

    .line 1670
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 1671
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1672
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1674
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1675
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyValue;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sizeOf(Landroid/app/admin/PolicyValue;)I

    move-result v1

    .line 1677
    :cond_1
    invoke-static {p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sizeOf(Landroid/app/admin/PolicyValue;)I

    move-result v2

    .line 1680
    .local v2, "policySize":I
    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    add-int v3, v0, v2

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    if-ge v3, v4, :cond_3

    :cond_2
    goto :goto_0

    .line 1686
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reached max allowed storage limit."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DevicePolicyEngine"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    const/4 v3, 0x3

    invoke-direct {p0, p2, p4, v3, p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    .line 1692
    const/4 v3, 0x0

    return v3

    .line 1682
    :goto_0
    sub-int v3, v2, v1

    invoke-direct {p0, p2, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->increasePolicySizeForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    .line 1684
    const/4 v3, 0x1

    return v3
.end method

.method private hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;)Z"
        }
    .end annotation

    .line 1000
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isLocalOnlyPolicy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1001
    return v1

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1004
    return v1

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1007
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    .line 1006
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z
    .locals 3
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;I)Z"
        }
    .end annotation

    .line 985
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isGlobalOnlyPolicy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 986
    return v1

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 989
    return v1

    .line 991
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 992
    return v1

    .line 994
    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/PolicyState;

    .line 995
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    .line 994
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private increasePolicySizeForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;I)V
    .locals 3
    .param p1, "admin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p2, "policySizeDiff"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "I)V"
        }
    .end annotation

    .line 1701
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1702
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1704
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1705
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 1708
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1707
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    return-void
.end method

.method private isInheritDevicePolicyFromParent(Landroid/content/pm/UserInfo;)Z
    .locals 3
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 462
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v0

    .line 463
    .local v0, "userProperties":Landroid/content/pm/UserProperties;
    nop

    nop

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v1

    .line 464
    invoke-virtual {v1}, Landroid/content/pm/UserProperties;->getInheritDevicePolicy()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 463
    :goto_0
    return v2
.end method

.method private isPackageInstalled(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1344
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1346
    :catch_0
    move-exception v1

    .line 1348
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "DevicePolicyEngine"

    const-string v3, "Error handling package changes"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1349
    return v0
.end method

.method private isProfileOfUser(II)Z
    .locals 2
    .param p1, "childUserId"    # I
    .param p2, "parentUserId"    # I

    .line 456
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 457
    .local v0, "parentInfo":Landroid/content/pm/UserInfo;
    if-eq p1, p2, :cond_0

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 457
    :goto_0
    return v1
.end method

.method private isUserRestrictionPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "*>;)Z"
        }
    .end annotation

    .line 186
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 187
    return v0

    .line 189
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v1

    .line 190
    .local v1, "policyKey":Landroid/app/admin/PolicyKey;
    if-nez v1, :cond_1

    .line 191
    return v0

    .line 194
    :cond_1
    instance-of v2, v1, Landroid/app/admin/UserRestrictionPolicyKey;

    if-eqz v2, :cond_2

    .line 197
    const/4 v0, 0x1

    return v0

    .line 200
    :cond_2
    return v0
.end method

.method private synthetic lambda$applyToInheritableProfiles$1(ILandroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "value"    # Landroid/app/admin/PolicyValue;
    .param p3, "policyDefinition"    # Lcom/android/server/devicepolicy/PolicyDefinition;
    .param p4, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 438
    .local v0, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 439
    .local v2, "childUserInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 440
    .local v3, "childUserId":I
    invoke-direct {p0, v3, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->isProfileOfUser(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 441
    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->isInheritDevicePolicyFromParent(Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 442
    if-eqz p2, :cond_0

    .line 443
    invoke-virtual {p0, p3, p4, p2, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;I)V

    goto :goto_1

    .line 445
    :cond_0
    invoke-virtual {p0, p3, p4, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    .line 448
    .end local v2    # "childUserInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "childUserId":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 449
    :cond_2
    return-void
.end method

.method private synthetic lambda$enforcePoliciesOnInheritableProfilesIfApplicable$7(Landroid/content/pm/UserInfo;)V
    .locals 7
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1396
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v0

    .line 1397
    .local v0, "userProperties":Landroid/content/pm/UserProperties;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->getInheritDevicePolicy()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_3

    .line 1402
    :cond_1
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1404
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1405
    .local v2, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne v3, v1, :cond_3

    :cond_2
    goto :goto_2

    .line 1408
    :cond_3
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1409
    :try_start_0
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1410
    monitor-exit v3

    return-void

    .line 1416
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 1412
    :cond_4
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 1413
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1412
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 1413
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 1412
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1414
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/PolicyState<*>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicepolicy/PolicyState;

    invoke-direct {p0, v1, v6}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicyOnUserLocked(ILcom/android/server/devicepolicy/PolicyState;)V

    .line 1415
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/PolicyState<*>;>;"
    goto :goto_0

    .line 1416
    :cond_5
    monitor-exit v3

    .line 1417
    return-void

    .line 1416
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1406
    :goto_2
    return-void

    .line 1399
    .end local v1    # "userId":I
    .end local v2    # "parentInfo":Landroid/content/pm/UserInfo;
    :goto_3
    return-void
.end method

.method private synthetic lambda$forceEnforcementRefreshLocked$0(Lcom/android/server/devicepolicy/PolicyDefinition;)V
    .locals 7
    .param p1, "policyDefinition"    # Lcom/android/server/devicepolicy/PolicyDefinition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    new-instance v0, Landroid/app/admin/BooleanPolicyValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 209
    .local v0, "globalValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v2

    .line 210
    .local v2, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<Ljava/lang/Boolean;>;"
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 213
    .end local v2    # "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 211
    :catch_0
    move-exception v2

    .line 215
    :goto_0
    const/4 v2, -0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    .line 218
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 219
    .local v3, "user":Landroid/content/pm/UserInfo;
    new-instance v4, Landroid/app/admin/BooleanPolicyValue;

    invoke-direct {v4, v1}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 221
    .local v4, "localValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/lang/Boolean;>;"
    :try_start_1
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v5

    .line 223
    .local v5, "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<Ljava/lang/Boolean;>;"
    invoke-virtual {v5}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v6

    .line 226
    .end local v5    # "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<Ljava/lang/Boolean;>;"
    goto :goto_2

    .line 224
    :catch_1
    move-exception v5

    .line 228
    :goto_2
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    .line 229
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "localValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/lang/Boolean;>;"
    goto :goto_1

    .line 230
    :cond_0
    return-void
.end method

.method private synthetic lambda$getProfileParentId$5(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1214
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1215
    .local v0, "parentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method private synthetic lambda$handlePackageChanged$6(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "removedDpcPackage"    # Ljava/lang/String;
    .param p3, "updatedPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1270
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    move-result-object v0

    .line 1271
    .local v0, "admins":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/devicepolicy/EnforcingAdmin;>;"
    if-eqz p2, :cond_1

    .line 1272
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1273
    .local v2, "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1274
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 1275
    return-void

    .line 1273
    :cond_0
    nop

    .line 1277
    .end local v2    # "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    goto :goto_0

    .line 1279
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1281
    .restart local v2    # "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->isSystemAuthority()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 1282
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1283
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1284
    nop

    .line 1286
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 1284
    const-string v3, "Admin package %s not found for user %d, removing admin policies"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "DevicePolicyEngine"

    invoke-static {v3, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 1289
    return-void

    .line 1292
    .end local v2    # "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    :cond_4
    goto :goto_1

    .line 1293
    :cond_5
    :goto_2
    if-eqz p3, :cond_6

    .line 1294
    invoke-direct {p0, p3, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPackageChanged(Ljava/lang/String;I)V

    .line 1295
    invoke-direct {p0, p3, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePersistentPreferredActivityPoliciesForPackage(Ljava/lang/String;I)V

    .line 1297
    :cond_6
    return-void
.end method

.method private synthetic lambda$maybeSendOnPolicyChanged$4(Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "admin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p3, "policyDefinition"    # Lcom/android/server/devicepolicy/PolicyDefinition;
    .param p4, "userId"    # I
    .param p5, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1157
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    .line 1158
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1160
    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v1

    .line 1161
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    .line 1158
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    .line 1162
    .local v0, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find any receivers that handle ACTION_DEVICE_POLICY_CHANGED in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1163
    const-string v2, "DevicePolicyEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    return-void

    .line 1168
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1169
    .local v1, "extras":Landroid/os/Bundle;
    invoke-virtual {p3}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/admin/PolicyKey;->writeToBundle(Landroid/os/Bundle;)V

    .line 1170
    nop

    .line 1172
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    invoke-direct {p0, v2, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getTargetUser(II)I

    move-result v2

    .line 1170
    const-string v3, "android.app.admin.extra.POLICY_TARGET_USER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1173
    const-string v2, "android.app.admin.extra.POLICY_UPDATE_RESULT_KEY"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1174
    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1175
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1177
    nop

    .line 1178
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 1177
    invoke-direct {p0, p1, v2, v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->maybeSendIntentToAdminReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/util/List;)V

    .line 1179
    return-void
.end method

.method private synthetic lambda$sendDevicePolicyChangedToSystem$2(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1090
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$sendPolicyResultToAdmin$3(Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "admin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p3, "policyDefinition"    # Lcom/android/server/devicepolicy/PolicyDefinition;
    .param p4, "userId"    # I
    .param p5, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1103
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    .line 1104
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1106
    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v1

    .line 1107
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    .line 1104
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    .line 1108
    .local v0, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find any receivers that handle ACTION_DEVICE_POLICY_SET_RESULT in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1109
    const-string v2, "DevicePolicyEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    return-void

    .line 1114
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1115
    .local v1, "extras":Landroid/os/Bundle;
    invoke-virtual {p3}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/admin/PolicyKey;->writeToBundle(Landroid/os/Bundle;)V

    .line 1116
    nop

    .line 1118
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    invoke-direct {p0, v2, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getTargetUser(II)I

    move-result v2

    .line 1116
    const-string v3, "android.app.admin.extra.POLICY_TARGET_USER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1119
    const-string v2, "android.app.admin.extra.POLICY_UPDATE_RESULT_KEY"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1123
    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1125
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p0, p1, v2, v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->maybeSendIntentToAdminReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/util/List;)V

    .line 1126
    return-void
.end method

.method private maybeSendIntentToAdminReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/util/List;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 1184
    .local p3, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1185
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not protected by BIND_DEVICE_ADMIN permission!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DevicePolicyEngine"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    goto :goto_0

    .line 1195
    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1196
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 1197
    :cond_1
    return-void
.end method

.method private maybeSendOnPolicyChanged(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V
    .locals 9
    .param p1, "admin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p3, "reason"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;II)V"
        }
    .end annotation

    .line 1153
    .local p2, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.admin.action.DEVICE_POLICY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 1154
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1156
    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda6;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v8, p3

    move v7, p4

    .end local p1    # "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .end local p2    # "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .end local p3    # "reason":I
    .end local p4    # "userId":I
    .local v5, "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .local v6, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local v7, "userId":I
    .local v8, "reason":I
    invoke-direct/range {v2 .. v8}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1180
    return-void
.end method

.method private onGlobalPolicyChangedLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 3
    .param p2, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            ")V"
        }
    .end annotation

    .line 635
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v0

    .line 637
    .local v0, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    .line 640
    invoke-direct {p0, v0, p2, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 646
    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendDevicePolicyChangedToSystem(I)V

    .line 647
    return-void
.end method

.method private onLocalPolicyChangedLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V
    .locals 2
    .param p2, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "I)V"
        }
    .end annotation

    .line 476
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-direct {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v0

    .line 477
    .local v0, "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    nop

    .line 478
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v1

    .line 477
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    .line 481
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 490
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v1

    .line 492
    .local v1, "globalPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    invoke-direct {p0, v1, p2, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 498
    .end local v1    # "globalPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendDevicePolicyChangedToSystem(I)V

    .line 499
    return-void
.end method

.method private removeGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;)V"
        }
    .end annotation

    .line 1056
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    return-void
.end method

.method private removeLocalPoliciesForUser(I)V
    .locals 9
    .param p1, "userId"    # I

    .line 1497
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1498
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1500
    monitor-exit v0

    return-void

    .line 1515
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1503
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1504
    .local v1, "localPolicies":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyKey;

    .line 1505
    .local v3, "policy":Landroid/app/admin/PolicyKey;
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/PolicyState;

    .line 1506
    .local v4, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    new-instance v5, Ljava/util/HashSet;

    .line 1507
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1508
    .local v5, "admins":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/devicepolicy/EnforcingAdmin;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1509
    .local v7, "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    nop

    .line 1510
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v8

    .line 1509
    invoke-virtual {p0, v8, v7, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    .line 1511
    .end local v7    # "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    goto :goto_1

    .line 1508
    :cond_1
    nop

    .line 1512
    .end local v3    # "policy":Landroid/app/admin/PolicyKey;
    .end local v4    # "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    .end local v5    # "admins":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/devicepolicy/EnforcingAdmin;>;"
    goto :goto_0

    .line 1514
    :cond_2
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1515
    .end local v1    # "localPolicies":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    monitor-exit v0

    .line 1516
    return-void

    .line 1515
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;I)V"
        }
    .end annotation

    .line 1033
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1034
    return-void

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    return-void
.end method

.method private removePersistentPreferredActivityPoliciesForPackage(Ljava/lang/String;I)V
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1302
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v4, "DevicePolicyEngine"

    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-virtual {v1, v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyKeysSetByAllAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/Set;

    move-result-object v5

    .line 1304
    .local v5, "policyKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/admin/PolicyKey;

    .line 1305
    .local v7, "key":Landroid/app/admin/PolicyKey;
    instance-of v0, v7, Landroid/app/admin/IntentFilterPolicyKey;

    if-eqz v0, :cond_5

    .line 1310
    move-object v8, v7

    check-cast v8, Landroid/app/admin/IntentFilterPolicyKey;

    .line 1312
    .local v8, "parsedKey":Landroid/app/admin/IntentFilterPolicyKey;
    invoke-virtual {v8}, Landroid/app/admin/IntentFilterPolicyKey;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v9, v0

    .line 1313
    .local v9, "intentFilter":Landroid/content/IntentFilter;
    nop

    .line 1314
    invoke-static {v9}, Lcom/android/server/devicepolicy/PolicyDefinition;->PERSISTENT_PREFERRED_ACTIVITY(Landroid/content/IntentFilter;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v10

    .line 1315
    .local v10, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<Landroid/content/ComponentName;>;"
    nop

    .line 1316
    invoke-virtual {v1, v10, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/LinkedHashMap;

    move-result-object v11

    .line 1319
    .local v11, "policies":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue<Landroid/content/ComponentName;>;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    .line 1320
    .local v12, "packageManager":Landroid/content/pm/IPackageManager;
    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1321
    .local v14, "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    invoke-virtual {v11, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/PolicyValue;

    invoke-virtual {v0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1322
    invoke-virtual {v11, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/PolicyValue;

    invoke-virtual {v0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1324
    move-object v15, v5

    move-object/from16 v16, v6

    .end local v5    # "policyKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    .local v15, "policyKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    const-wide/16 v5, 0x0

    :try_start_0
    invoke-interface {v12, v2, v5, v6, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1326
    invoke-virtual {v11, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/PolicyValue;

    invoke-virtual {v0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1325
    invoke-interface {v12, v0, v5, v6, v3}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 1333
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1327
    :cond_0
    :goto_2
    const-string v0, "Persistent preferred activity in package %s not found for user %d, removing policy for admin"

    .line 1330
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 1327
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    invoke-virtual {v1, v10, v14, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    :cond_1
    goto :goto_4

    .line 1333
    :goto_3
    nop

    .line 1335
    .local v0, "re":Landroid/os/RemoteException;
    const-string v5, "Error handling package changes"

    invoke-static {v4, v5, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1322
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v15    # "policyKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    .restart local v5    # "policyKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    :cond_2
    move-object v15, v5

    move-object/from16 v16, v6

    .end local v5    # "policyKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    .restart local v15    # "policyKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    goto :goto_4

    .line 1321
    .end local v15    # "policyKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    .restart local v5    # "policyKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    :cond_3
    move-object v15, v5

    move-object/from16 v16, v6

    .line 1338
    .end local v5    # "policyKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    .end local v14    # "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .restart local v15    # "policyKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    :goto_4
    move-object v5, v15

    move-object/from16 v6, v16

    goto :goto_1

    .line 1320
    .end local v15    # "policyKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    .restart local v5    # "policyKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    :cond_4
    move-object v15, v5

    move-object/from16 v16, v6

    .line 1339
    .end local v5    # "policyKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    .end local v7    # "key":Landroid/app/admin/PolicyKey;
    .end local v8    # "parsedKey":Landroid/app/admin/IntentFilterPolicyKey;
    .end local v9    # "intentFilter":Landroid/content/IntentFilter;
    .end local v10    # "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<Landroid/content/ComponentName;>;"
    .end local v11    # "policies":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue<Landroid/content/ComponentName;>;>;"
    .end local v12    # "packageManager":Landroid/content/pm/IPackageManager;
    .restart local v15    # "policyKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    goto/16 :goto_0

    .line 1306
    .end local v15    # "policyKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    .restart local v5    # "policyKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    .restart local v7    # "key":Landroid/app/admin/PolicyKey;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "PolicyKey for PERSISTENT_PREFERRED_ACTIVITY is not of type IntentFilterPolicyKey"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1340
    .end local v7    # "key":Landroid/app/admin/PolicyKey;
    :cond_6
    return-void
.end method

.method private removePoliciesForAdminsOnUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1523
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    move-result-object v0

    .line 1525
    .local v0, "admins":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/devicepolicy/EnforcingAdmin;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1526
    .local v2, "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 1527
    .end local v2    # "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    goto :goto_0

    .line 1528
    :cond_0
    return-void
.end method

.method private sendDevicePolicyChangedToSystem(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1084
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1085
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1086
    new-instance v1, Landroid/app/BroadcastOptions;

    invoke-direct {v1}, Landroid/app/BroadcastOptions;-><init>()V

    .line 1087
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 1088
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 1089
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1090
    .local v1, "options":Landroid/os/Bundle;
    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;ILandroid/os/Bundle;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1095
    return-void
.end method

.method private sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V
    .locals 4
    .param p2, "callingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyState<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;I)V"
        }
    .end annotation

    .line 1136
    .local p1, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    .local p3, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1138
    .local v1, "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    invoke-virtual {v1, p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1139
    goto :goto_0

    .line 1141
    :cond_0
    nop

    .line 1142
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1143
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v3

    .line 1141
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1144
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    .line 1145
    .local v2, "result":I
    :goto_1
    invoke-direct {p0, v1, p3, v2, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->maybeSendOnPolicyChanged(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    .line 1147
    .end local v1    # "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .end local v2    # "result":I
    goto :goto_0

    .line 1148
    :cond_2
    return-void
.end method

.method private sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V
    .locals 9
    .param p1, "admin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p3, "result"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;II)V"
        }
    .end annotation

    .line 1099
    .local p2, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.admin.action.DEVICE_POLICY_SET_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 1100
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1102
    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v8, p3

    move v7, p4

    .end local p1    # "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .end local p2    # "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .end local p3    # "result":I
    .end local p4    # "userId":I
    .local v5, "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .local v6, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local v7, "userId":I
    .local v8, "result":I
    invoke-direct/range {v2 .. v8}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1127
    return-void
.end method

.method private setNonCoexistableLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V
    .locals 1
    .param p3, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p5, "userId"    # I
    .param p6, "skipEnforcePolicy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/PolicyState<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;IZ)V"
        }
    .end annotation

    .line 328
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local p2, "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    .local p4, "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    if-nez p4, :cond_0

    .line 329
    invoke-virtual {p2, p3}, Lcom/android/server/devicepolicy/PolicyState;->removePolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;)Z

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {p2, p3, p4}, Lcom/android/server/devicepolicy/PolicyState;->addPolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Z

    .line 333
    :goto_0
    if-nez p6, :cond_1

    .line 334
    invoke-direct {p0, p1, p4, p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    .line 336
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    invoke-direct {p0, p1, p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 339
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyAddLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 340
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    .line 341
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->applyToInheritableProfiles(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;I)V

    .line 342
    return-void
.end method

.method private shouldApplyPackageSetUnionPolicyHack(Lcom/android/server/devicepolicy/PolicyDefinition;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;)Z"
        }
    .end annotation

    .line 1917
    .local p1, "policy":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1918
    .local v0, "policyKey":Ljava/lang/String;
    const-string/jumbo v1, "userControlDisabledPackages"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_1

    .line 1919
    const-string/jumbo v1, "packagesSuspended"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1918
    :goto_1
    return v1
.end method

.method private static sizeOf(Landroid/app/admin/PolicyValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;)I"
        }
    .end annotation

    .line 1641
    .local p0, "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1642
    .local v1, "parcel":Landroid/os/Parcel;
    invoke-virtual {v1, p0, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1644
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1648
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 1649
    .local v2, "bytes":[B
    array-length v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1650
    .end local v1    # "parcel":Landroid/os/Parcel;
    .end local v2    # "bytes":[B
    :catch_0
    move-exception v1

    .line 1651
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calculating size of policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DevicePolicyEngine"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    return v0
.end method

.method private updateDeviceAdminServiceOnPackageChanged(Ljava/lang/String;I)V
    .locals 4
    .param p1, "updatedPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1537
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1539
    .local v1, "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    const-string v2, "enterprise"

    invoke-virtual {v1, v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1540
    goto :goto_0

    .line 1542
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1543
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    const-string/jumbo v3, "package-broadcast"

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->startServiceForAdmin(Ljava/lang/String;ILjava/lang/String;)V

    .line 1546
    .end local v1    # "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    :cond_1
    goto :goto_0

    .line 1547
    :cond_2
    return-void
.end method

.method private updateDeviceAdminServiceOnPolicyAddLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 4
    .param p1, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1555
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v0

    .line 1557
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    nop

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 1558
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1559
    return-void

    .line 1562
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1563
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1565
    :cond_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1569
    const-string v1, "enterprise"

    invoke-virtual {p1, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1570
    return-void

    .line 1572
    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 1573
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1572
    const-string/jumbo v3, "policy-added"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->startServiceForAdmin(Ljava/lang/String;ILjava/lang/String;)V

    .line 1576
    return-void
.end method

.method private updateDeviceAdminServiceOnPolicyRemoveLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 4
    .param p1, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1585
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->doesAdminHavePoliciesLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1586
    return-void

    .line 1588
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v0

    .line 1589
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1590
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1591
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1592
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1599
    :cond_1
    const-string v1, "enterprise"

    invoke-virtual {p1, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1600
    return-void

    .line 1602
    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 1603
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1602
    const-string/jumbo v3, "policy-removed"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->stopServiceForAdmin(Ljava/lang/String;ILjava/lang/String;)V

    .line 1606
    return-void
.end method

.method private updateDeviceAdminsServicesForUser(IZLjava/lang/String;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "enable"    # Z
    .param p3, "actionForLog"    # Ljava/lang/String;

    .line 1225
    if-nez p2, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->stopServicesForUser(ILjava/lang/String;)V

    goto :goto_1

    .line 1229
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1231
    .local v1, "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    const-string v2, "enterprise"

    invoke-virtual {v1, v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1232
    goto :goto_0

    .line 1234
    :cond_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 1235
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1234
    invoke-virtual {v2, v3, p1, p3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->startServiceForAdmin(Ljava/lang/String;ILjava/lang/String;)V

    .line 1236
    .end local v1    # "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    goto :goto_0

    .line 1238
    :cond_2
    :goto_1
    return-void
.end method

.method private write()V
    .locals 3

    .line 1804
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1805
    :try_start_0
    const-string v1, "DevicePolicyEngine"

    const-string v2, "Writing device policies to file."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Lcom/android/server/devicepolicy/DevicePolicyEngine-IA;)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->writeToFileLocked()V

    .line 1807
    monitor-exit v0

    .line 1808
    return-void

    .line 1807
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method clearAllPolicies()V
    .locals 0

    .line 1867
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->clear()V

    .line 1868
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    .line 1869
    return-void
.end method

.method createBackup(Ljava/lang/String;)V
    .locals 2
    .param p1, "backupId"    # Ljava/lang/String;

    .line 1827
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1828
    :try_start_0
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->createBackup(Ljava/lang/String;)V

    .line 1829
    monitor-exit v0

    .line 1830
    return-void

    .line 1829
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 7
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 1758
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1759
    :try_start_0
    const-string v1, "Local Policies: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1760
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1761
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1762
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1763
    .local v2, "userId":I
    const-string v3, "User %d:\n"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1764
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1765
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/PolicyKey;

    .line 1766
    .local v4, "policy":Landroid/app/admin/PolicyKey;
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/PolicyState;

    .line 1767
    .local v5, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    invoke-virtual {v5, p1}, Lcom/android/server/devicepolicy/PolicyState;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1768
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1769
    .end local v4    # "policy":Landroid/app/admin/PolicyKey;
    .end local v5    # "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    goto :goto_1

    .line 1800
    .end local v1    # "i":I
    .end local v2    # "userId":I
    :catchall_0
    move-exception v1

    goto/16 :goto_5

    .line 1770
    .restart local v1    # "i":I
    .restart local v2    # "userId":I
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1761
    nop

    .end local v2    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1772
    .end local v1    # "i":I
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1773
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1775
    const-string v1, "Global Policies: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1777
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyKey;

    .line 1778
    .local v2, "policy":Landroid/app/admin/PolicyKey;
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/PolicyState;

    .line 1779
    .local v3, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/PolicyState;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1780
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1781
    .end local v2    # "policy":Landroid/app/admin/PolicyKey;
    .end local v3    # "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    goto :goto_2

    .line 1782
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1783
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1785
    const-string v1, "Default admin policy size limit: -1"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current admin policy size limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1787
    const-string v1, "Admin Policies size: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1788
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1789
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1790
    .local v2, "userId":I
    const-string v3, "User %d:\n"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1791
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1792
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1793
    .local v4, "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v6}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1795
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1796
    .end local v4    # "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    goto :goto_4

    .line 1797
    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1788
    nop

    .end local v2    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    nop

    .line 1799
    .end local v1    # "i":I
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1800
    monitor-exit v0

    .line 1801
    return-void

    .line 1800
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDevicePolicyState()Landroid/app/admin/DevicePolicyState;
    .locals 8

    .line 1440
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1441
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1443
    .local v1, "policies":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/UserHandle;Ljava/util/Map<Landroid/app/admin/PolicyKey;Landroid/app/admin/PolicyState<*>;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1444
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 1445
    .local v3, "user":Landroid/os/UserHandle;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/PolicyKey;

    .line 1447
    .local v5, "policyKey":Landroid/app/admin/PolicyKey;
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 1449
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v7}, Lcom/android/server/devicepolicy/PolicyState;->getParcelablePolicyState()Landroid/app/admin/PolicyState;

    move-result-object v7

    .line 1447
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    nop

    .end local v5    # "policyKey":Landroid/app/admin/PolicyKey;
    goto :goto_1

    .line 1461
    .end local v1    # "policies":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/UserHandle;Ljava/util/Map<Landroid/app/admin/PolicyKey;Landroid/app/admin/PolicyState<*>;>;>;"
    .end local v2    # "i":I
    .end local v3    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1446
    .restart local v1    # "policies":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/UserHandle;Ljava/util/Map<Landroid/app/admin/PolicyKey;Landroid/app/admin/PolicyState<*>;>;>;"
    .restart local v2    # "i":I
    .restart local v3    # "user":Landroid/os/UserHandle;
    :cond_0
    nop

    .line 1443
    .end local v3    # "user":Landroid/os/UserHandle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1452
    .end local v2    # "i":I
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1453
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyKey;

    .line 1455
    .local v3, "policyKey":Landroid/app/admin/PolicyKey;
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 1457
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v5}, Lcom/android/server/devicepolicy/PolicyState;->getParcelablePolicyState()Landroid/app/admin/PolicyState;

    move-result-object v5

    .line 1455
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    nop

    .end local v3    # "policyKey":Landroid/app/admin/PolicyKey;
    goto :goto_2

    .line 1460
    :cond_2
    new-instance v2, Landroid/app/admin/DevicePolicyState;

    invoke-direct {v2, v1}, Landroid/app/admin/DevicePolicyState;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v2

    .line 1461
    .end local v1    # "policies":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/UserHandle;Ljava/util/Map<Landroid/app/admin/PolicyKey;Landroid/app/admin/PolicyState<*>;>;>;"
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getGlobalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;)Ljava/util/LinkedHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;)",
            "Ljava/util/LinkedHashMap<",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;>;"
        }
    .end annotation

    .line 832
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 834
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 836
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    monitor-exit v0

    return-object v1

    .line 839
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 838
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 839
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getGlobalPolicySetByAdmin(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/lang/Object;
    .locals 3
    .param p2, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            ")TV;"
        }
    .end annotation

    .line 796
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 797
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 799
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 801
    monitor-exit v0

    return-object v2

    .line 806
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 803
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v1

    .line 804
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PolicyValue;

    .line 805
    .local v1, "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    if-nez v1, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-object v2

    .line 806
    .end local v1    # "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLocalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/LinkedHashMap;
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;I)",
            "Ljava/util/LinkedHashMap<",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;>;"
        }
    .end annotation

    .line 816
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 818
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 819
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 820
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    monitor-exit v0

    return-object v1

    .line 823
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 822
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 823
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLocalPolicyKeysSetByAdmin(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/util/Set;
    .locals 5
    .param p2, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "I)",
            "Ljava/util/Set<",
            "Landroid/app/admin/PolicyKey;",
            ">;"
        }
    .end annotation

    .line 858
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 859
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 861
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 862
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isGlobalOnlyPolicy()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_2

    .line 865
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 866
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyKey;

    .line 867
    .local v3, "key":Landroid/app/admin/PolicyKey;
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/PolicyKey;->hasSameIdentifierAs(Landroid/app/admin/PolicyKey;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 868
    invoke-virtual {v4, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 869
    invoke-virtual {v4, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 870
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 874
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    .end local v3    # "key":Landroid/app/admin/PolicyKey;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 872
    .restart local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    :cond_2
    :goto_1
    goto :goto_0

    .line 873
    :cond_3
    monitor-exit v0

    return-object v1

    .line 863
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    :goto_2
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 874
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLocalPolicyKeysSetByAllAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/Set;
    .locals 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;I)",
            "Ljava/util/Set<",
            "Landroid/app/admin/PolicyKey;",
            ">;"
        }
    .end annotation

    .line 892
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 894
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 895
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isGlobalOnlyPolicy()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_2

    .line 898
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 899
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyKey;

    .line 900
    .local v3, "key":Landroid/app/admin/PolicyKey;
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/PolicyKey;->hasSameIdentifierAs(Landroid/app/admin/PolicyKey;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 901
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 905
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    .end local v3    # "key":Landroid/app/admin/PolicyKey;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 903
    .restart local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    :cond_2
    :goto_1
    goto :goto_0

    .line 904
    :cond_3
    monitor-exit v0

    return-object v1

    .line 896
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    :goto_2
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 905
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLocalPolicySetByAdmin(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/lang/Object;
    .locals 3
    .param p2, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "I)TV;"
        }
    .end annotation

    .line 775
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 776
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 778
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 779
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 780
    monitor-exit v0

    return-object v2

    .line 785
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 782
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v1

    .line 783
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PolicyValue;

    .line 784
    .local v1, "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    if-nez v1, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-object v2

    .line 785
    .end local v1    # "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getMaxPolicyStorageLimit()I
    .locals 1

    .line 1745
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    return v0
.end method

.method getPolicySizeForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)I
    .locals 2
    .param p1, "admin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1749
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 1751
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    .line 1750
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1751
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1754
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getResolvedPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/lang/Object;
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;I)TV;"
        }
    .end annotation

    .line 717
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getResolvedPolicyValue(Lcom/android/server/devicepolicy/PolicyDefinition;I)Landroid/app/admin/PolicyValue;

    move-result-object v0

    .line 718
    .local v0, "resolvedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method getResolvedPolicyAcrossUsers(Lcom/android/server/devicepolicy/PolicyDefinition;Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)TV;"
        }
    .end annotation

    .line 745
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local p2, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 747
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v0, "adminPolicies":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PolicyValue<TV;>;>;"
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 749
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 750
    .local v3, "userId":I
    invoke-direct {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getResolvedPolicyValue(Lcom/android/server/devicepolicy/PolicyDefinition;I)Landroid/app/admin/PolicyValue;

    move-result-object v4

    .line 751
    .local v4, "resolvedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    if-eqz v4, :cond_0

    .line 752
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 755
    .end local v3    # "userId":I
    .end local v4    # "resolvedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 754
    :cond_0
    :goto_1
    goto :goto_0

    .line 755
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    nop

    .line 762
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getResolutionMechanism()Lcom/android/server/devicepolicy/ResolutionMechanism;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/devicepolicy/ResolutionMechanism;->resolve(Ljava/util/List;)Landroid/app/admin/PolicyValue;

    move-result-object v1

    .line 763
    .local v1, "resolvedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    if-nez v1, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    :goto_2
    return-object v2

    .line 755
    .end local v1    # "resolvedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method getUserRestrictionPolicyKeysForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/util/Set;
    .locals 2
    .param p1, "admin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "I)",
            "Ljava/util/Set<",
            "Landroid/app/admin/UserRestrictionPolicyKey;",
            ">;"
        }
    .end annotation

    .line 918
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 919
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 920
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 921
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-direct {p0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getUserRestrictionPolicyKeysForAdminLocked(Ljava/util/Map;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 927
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 923
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 924
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 926
    :cond_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getUserRestrictionPolicyKeysForAdminLocked(Ljava/util/Map;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 927
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method handlePackageChanged(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "updatedPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "removedDpcPackage"    # Ljava/lang/String;

    .line 1269
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1298
    return-void
.end method

.method handleRoleChanged(Ljava/lang/String;I)V
    .locals 5
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1373
    const-string v0, "android.app.role.SYSTEM_FINANCED_DEVICE_CONTROLLER"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1375
    return-void

    .line 1377
    :cond_0
    invoke-static {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1378
    .local v0, "roleAuthority":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    move-result-object v1

    .line 1379
    .local v1, "admins":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/devicepolicy/EnforcingAdmin;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1380
    .local v3, "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    invoke-virtual {v3, v0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1381
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/EnforcingAdmin;->reloadRoleAuthorities()V

    .line 1383
    invoke-virtual {v3, v0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1384
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 1387
    .end local v3    # "admin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    :cond_1
    goto :goto_0

    .line 1388
    :cond_2
    return-void
.end method

.method handleStartUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1244
    const/4 v0, 0x1

    const-string/jumbo v1, "start-user"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminsServicesForUser(IZLjava/lang/String;)V

    .line 1246
    return-void
.end method

.method handleStopUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1260
    const/4 v0, 0x0

    const-string/jumbo v1, "stop-user"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminsServicesForUser(IZLjava/lang/String;)V

    .line 1262
    return-void
.end method

.method handleUnlockUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1252
    const/4 v0, 0x1

    const-string/jumbo v1, "unlock-user"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminsServicesForUser(IZLjava/lang/String;)V

    .line 1254
    return-void
.end method

.method handleUserCreated(Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .line 1365
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePoliciesOnInheritableProfilesIfApplicable(Landroid/content/pm/UserInfo;)V

    .line 1366
    return-void
.end method

.method handleUserRemoved(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 1357
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPoliciesForUser(I)V

    .line 1358
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdminsOnUser(I)V

    .line 1359
    return-void
.end method

.method load()V
    .locals 3

    .line 1813
    const-string v0, "DevicePolicyEngine"

    const-string v1, "Reading device policies from file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1815
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->clear()V

    .line 1816
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Lcom/android/server/devicepolicy/DevicePolicyEngine-IA;)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->readFromFileLocked()V

    .line 1817
    monitor-exit v0

    .line 1818
    return-void

    .line 1817
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method reapplyAllPoliciesOnBootLocked()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()V"
        }
    .end annotation

    .line 1834
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PolicyKey;

    .line 1835
    .local v1, "policy":Landroid/app/admin/PolicyKey;
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/PolicyState;

    .line 1837
    .local v2, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    nop

    .line 1838
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v3

    .line 1839
    .local v3, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/PolicyDefinition;->shouldSkipEnforcementIfNotChanged()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1840
    nop

    .line 1841
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v4

    .line 1842
    .local v4, "policyValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    const/4 v5, -0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    .line 1844
    .end local v1    # "policy":Landroid/app/admin/PolicyKey;
    .end local v2    # "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    .end local v3    # "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .end local v4    # "policyValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    :cond_0
    goto :goto_0

    .line 1845
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1846
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1847
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyKey;

    .line 1848
    .local v3, "policy":Landroid/app/admin/PolicyKey;
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/PolicyState;

    .line 1850
    .local v4, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    nop

    .line 1851
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v5

    .line 1852
    .local v5, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-virtual {v5}, Lcom/android/server/devicepolicy/PolicyDefinition;->shouldSkipEnforcementIfNotChanged()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1853
    nop

    .line 1854
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v6

    .line 1855
    .local v6, "policyValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    invoke-direct {p0, v5, v6, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    .line 1857
    .end local v3    # "policy":Landroid/app/admin/PolicyKey;
    .end local v4    # "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    .end local v5    # "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .end local v6    # "policyValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    :cond_2
    goto :goto_2

    .line 1845
    .end local v1    # "userId":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 1859
    .end local v0    # "i":I
    return-void
.end method

.method removeGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 5
    .param p2, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            ")V"
        }
    .end annotation

    .line 593
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 597
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v1

    .line 599
    .local v1, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    invoke-direct {p0, v1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->decreasePolicySizeForAdmin(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 601
    invoke-virtual {v1, p2}, Lcom/android/server/devicepolicy/PolicyState;->removePolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;)Z

    move-result v2

    .line 603
    .local v2, "policyChanged":Z
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->forceEnforcementRefreshIfUserRestrictionLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    .line 604
    if-eqz v2, :cond_0

    .line 605
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->onGlobalPolicyChangedLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    goto :goto_0

    .line 625
    .end local v1    # "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    .end local v2    # "policyChanged":Z
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 608
    .restart local v1    # "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    .restart local v2    # "policyChanged":Z
    :cond_0
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->applyGlobalPolicyOnUsersWithLocalPoliciesLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Z)Z

    .line 611
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-direct {p0, p2, p1, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    .line 618
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 619
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    .line 622
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyRemoveLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 624
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    .line 625
    .end local v1    # "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    .end local v2    # "policyChanged":Z
    monitor-exit v0

    .line 626
    return-void

    .line 625
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V
    .locals 9
    .param p2, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "I)V"
        }
    .end annotation

    .line 369
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 373
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->forceEnforcementRefreshIfUserRestrictionLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    .line 374
    invoke-direct {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 375
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 423
    :catchall_0
    move-exception v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    goto/16 :goto_1

    .line 377
    :cond_0
    :try_start_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v0

    move-object v4, v0

    .line 379
    .local v4, "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    invoke-direct {p0, v4, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->decreasePolicySizeForAdmin(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 381
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_1

    .line 382
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    .end local p1    # "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .end local p2    # "enforcingAdmin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .end local p3    # "userId":I
    .local v3, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local v5, "enforcingAdmin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .local v7, "userId":I
    :try_start_3
    invoke-direct/range {v2 .. v8}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setNonCoexistableLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    .line 384
    monitor-exit v1

    return-void

    .line 423
    .end local v4    # "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 388
    .end local v3    # "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .end local v5    # "enforcingAdmin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .end local v7    # "userId":I
    .restart local v4    # "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    .restart local p1    # "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .restart local p2    # "enforcingAdmin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .restart local p3    # "userId":I
    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    .end local p1    # "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .end local p2    # "enforcingAdmin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .end local p3    # "userId":I
    .restart local v3    # "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .restart local v5    # "enforcingAdmin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .restart local v7    # "userId":I
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 389
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p1

    .line 390
    .local p1, "globalPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    nop

    .line 392
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p2

    .line 390
    invoke-virtual {v4, v5, p2}, Lcom/android/server/devicepolicy/PolicyState;->removePolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Ljava/util/LinkedHashMap;)Z

    move-result p2

    .line 393
    .end local p1    # "globalPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    .local p2, "policyChanged":Z
    goto :goto_0

    .line 394
    .end local p2    # "policyChanged":Z
    :cond_2
    invoke-virtual {v4, v5}, Lcom/android/server/devicepolicy/PolicyState;->removePolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;)Z

    move-result p1

    move p2, p1

    .line 397
    .restart local p2    # "policyChanged":Z
    :goto_0
    if-eqz p2, :cond_3

    .line 398
    invoke-direct {p0, v3, v5, v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->onLocalPolicyChangedLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    .line 401
    iget-object p1, v2, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mNtEngine:Lcom/android/server/devicepolicy/NtDevicePolicyEngine;

    const/4 p3, 0x1

    invoke-virtual {p1, v3, v5, v7, p3}, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->onLocalPolicyChangedLockedWithState(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;IZ)V

    .line 407
    :cond_3
    const/4 p1, 0x2

    invoke-direct {p0, v5, v3, p1, v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    .line 414
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 415
    invoke-direct {p0, v3, v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 418
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyRemoveLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 420
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    .line 422
    const/4 p1, 0x0

    invoke-direct {p0, v3, v5, p1, v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->applyToInheritableProfiles(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;I)V

    .line 423
    .end local v4    # "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    .end local p2    # "policyChanged":Z
    monitor-exit v1

    .line 424
    return-void

    .line 423
    .end local v3    # "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .end local v5    # "enforcingAdmin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .end local v7    # "userId":I
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local p2, "enforcingAdmin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .restart local p3    # "userId":I
    :catchall_2
    move-exception v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    .end local p1    # "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .end local p2    # "enforcingAdmin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .end local p3    # "userId":I
    .restart local v3    # "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .restart local v5    # "enforcingAdmin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .restart local v7    # "userId":I
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 10
    .param p1, "admin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1468
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1469
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1470
    .local v1, "globalPolicies":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyKey;

    .line 1471
    .local v3, "policy":Landroid/app/admin/PolicyKey;
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/PolicyState;

    .line 1472
    .local v4, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1473
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v5

    invoke-virtual {p0, v5, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    goto :goto_1

    .line 1490
    .end local v1    # "globalPolicies":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    .end local v3    # "policy":Landroid/app/admin/PolicyKey;
    .end local v4    # "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 1475
    .restart local v1    # "globalPolicies":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    :cond_0
    :goto_1
    goto :goto_0

    .line 1477
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1480
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1481
    .local v3, "userId":I
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1482
    .local v4, "localPolicies":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/PolicyKey;

    .line 1483
    .local v6, "policy":Landroid/app/admin/PolicyKey;
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/devicepolicy/PolicyState;

    .line 1484
    .local v7, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    invoke-virtual {v7}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1485
    nop

    .line 1486
    invoke-virtual {v7}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1485
    invoke-virtual {p0, v8, p1, v9}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    .line 1488
    .end local v6    # "policy":Landroid/app/admin/PolicyKey;
    .end local v7    # "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    :cond_2
    goto :goto_3

    .line 1482
    :cond_3
    nop

    .line 1477
    .end local v3    # "userId":I
    .end local v4    # "localPolicies":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    nop

    .line 1490
    .end local v1    # "globalPolicies":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    .end local v2    # "i":I
    monitor-exit v0

    .line 1491
    return-void

    .line 1490
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)V
    .locals 1
    .param p2, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;)V"
        }
    .end annotation

    .line 509
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local p3, "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Z)V

    .line 510
    return-void
.end method

.method setGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Z)V
    .locals 14
    .param p2, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p4, "skipEnforcePolicy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;Z)V"
        }
    .end annotation

    .line 524
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local p3, "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 529
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 530
    .local v2, "globalPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    const/4 v6, -0x1

    move-object v1, p0

    move-object v5, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->handleAdminPolicySizeLimit(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    monitor-exit v7

    return-void

    .line 580
    .end local v2    # "globalPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 536
    .restart local v2    # "globalPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->checkFor2gFailure(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    const-string v0, "DevicePolicyEngine"

    const-string v5, "Device does not support capabilities required to disable 2g. Not setting global policy state."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    monitor-exit v7

    return-void

    .line 543
    :cond_1
    invoke-virtual {v2, v3, v4}, Lcom/android/server/devicepolicy/PolicyState;->addPolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Z

    move-result v0

    .line 544
    .local v0, "policyChanged":Z
    invoke-direct/range {p0 .. p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->applyGlobalPolicyOnUsersWithLocalPoliciesLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Z)Z

    move-result v5

    .line 549
    .local v5, "policyAppliedOnAllUsers":Z
    if-nez p4, :cond_7

    .line 550
    invoke-direct/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->forceEnforcementRefreshIfUserRestrictionLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    .line 551
    if-eqz v0, :cond_2

    .line 552
    invoke-direct/range {p0 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->onGlobalPolicyChangedLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 555
    :cond_2
    nop

    .line 556
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v6

    .line 555
    invoke-static {v6, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 558
    .local v6, "policyAppliedGlobally":Z
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v6, :cond_4

    .line 559
    invoke-direct/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->shouldApplyPackageSetUnionPolicyHack(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 560
    move-object/from16 v10, p3

    .line 561
    .local v10, "parsedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/util/Set<Ljava/lang/String;>;>;"
    nop

    .line 562
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v11

    .line 563
    .local v11, "parsedResolvedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/util/Set<Ljava/lang/String;>;>;"
    nop

    nop

    if-eqz v11, :cond_3

    .line 564
    invoke-virtual {v11}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-virtual {v10}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v12, v13}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v12, v9

    goto :goto_0

    :cond_3
    move v12, v8

    :goto_0
    move v6, v12

    .line 567
    .end local v10    # "parsedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v11    # "parsedResolvedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_4
    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    move v10, v9

    goto :goto_1

    :cond_5
    move v10, v8

    .line 569
    .local v10, "policyApplied":Z
    :goto_1
    nop

    .line 573
    if-eqz v10, :cond_6

    goto :goto_2

    :cond_6
    move v8, v9

    .line 569
    :goto_2
    const/4 v9, -0x1

    invoke-direct {p0, v3, p1, v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    .line 577
    .end local v6    # "policyAppliedGlobally":Z
    .end local v10    # "policyApplied":Z
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyAddLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 579
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    .line 580
    .end local v0    # "policyChanged":Z
    .end local v2    # "globalPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    .end local v5    # "policyAppliedOnAllUsers":Z
    monitor-exit v7

    .line 581
    return-void

    .line 580
    :catchall_1
    move-exception v0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    :goto_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;I)V
    .locals 6
    .param p2, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;I)V"
        }
    .end annotation

    .line 355
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local p3, "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .end local p2    # "enforcingAdmin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .end local p3    # "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    .end local p4    # "userId":I
    .local v1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local v2, "enforcingAdmin":Lcom/android/server/devicepolicy/EnforcingAdmin;
    .local v3, "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    .local v4, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    .line 357
    return-void
.end method

.method setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V
    .locals 16
    .param p2, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p4, "userId"    # I
    .param p5, "skipEnforcePolicy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;IZ)V"
        }
    .end annotation

    .line 246
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .local p3, "value":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    iget-object v8, v1, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 250
    :try_start_0
    invoke-direct {v1, v2, v6}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 251
    .local v3, "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    move-object/from16 v4, p3

    move-object v5, v2

    move-object v2, v3

    move-object/from16 v3, p2

    .end local v3    # "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    .local v2, "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->handleAdminPolicySizeLimit(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v0, :cond_0

    .line 253
    :try_start_2
    monitor-exit v8

    return-void

    .line 310
    .end local v2    # "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p4

    goto/16 :goto_3

    .line 256
    .restart local v2    # "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 257
    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object v3, v2

    move-object/from16 v2, p1

    .end local v2    # "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    .restart local v3    # "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    :try_start_3
    invoke-direct/range {v1 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setNonCoexistableLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v0, v3

    move-object v3, v4

    move-object v4, v5

    .line 259
    .end local v3    # "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    .local v0, "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    :try_start_4
    monitor-exit v8

    return-void

    .line 310
    .end local v0    # "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    :catchall_1
    move-exception v0

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_3

    .line 262
    .restart local v2    # "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    :cond_1
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p4

    move-object v0, v2

    move-object/from16 v2, p1

    .end local v2    # "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    .restart local v0    # "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result v5

    .line 264
    .local v5, "hasGlobalPolicies":Z
    if-eqz v5, :cond_2

    .line 265
    invoke-direct/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v7

    .line 266
    .local v7, "globalPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    nop

    .line 269
    invoke-virtual {v7}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v9

    .line 266
    invoke-virtual {v0, v3, v4, v9}, Lcom/android/server/devicepolicy/PolicyState;->addPolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Ljava/util/LinkedHashMap;)Z

    move-result v9

    .line 270
    .end local v7    # "globalPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    .local v9, "policyChanged":Z
    goto :goto_0

    .line 271
    .end local v9    # "policyChanged":Z
    :cond_2
    invoke-virtual {v0, v3, v4}, Lcom/android/server/devicepolicy/PolicyState;->addPolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Z

    move-result v7

    move v9, v7

    .line 276
    .restart local v9    # "policyChanged":Z
    :goto_0
    if-nez p5, :cond_7

    .line 277
    invoke-direct/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->forceEnforcementRefreshIfUserRestrictionLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    .line 278
    const/4 v7, 0x0

    if-eqz v9, :cond_3

    .line 279
    invoke-direct {v1, v2, v3, v6}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->onLocalPolicyChangedLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    .line 282
    iget-object v10, v1, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mNtEngine:Lcom/android/server/devicepolicy/NtDevicePolicyEngine;

    invoke-virtual {v10, v2, v3, v6, v7}, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->onLocalPolicyChangedLockedWithState(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;IZ)V

    .line 286
    :cond_3
    nop

    .line 287
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v10

    .line 286
    invoke-static {v10, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 289
    .local v10, "policyEnforced":Z
    const/4 v11, 0x1

    if-nez v10, :cond_5

    invoke-direct/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->shouldApplyPackageSetUnionPolicyHack(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 290
    move-object/from16 v12, p3

    .line 291
    .local v12, "parsedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/util/Set<Ljava/lang/String;>;>;"
    nop

    .line 292
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v13

    .line 293
    .local v13, "parsedResolvedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v13, :cond_4

    if-eqz v12, :cond_4

    .line 294
    invoke-virtual {v13}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Set;

    invoke-virtual {v12}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v14, v15}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v14, v11

    goto :goto_1

    :cond_4
    move v14, v7

    :goto_1
    move v10, v14

    .line 296
    .end local v12    # "parsedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v13    # "parsedResolvedValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_5
    nop

    .line 300
    if-eqz v10, :cond_6

    .line 301
    goto :goto_2

    :cond_6
    move v7, v11

    .line 296
    :goto_2
    invoke-direct {v1, v3, v2, v7, v6}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    .line 305
    .end local v10    # "policyEnforced":Z
    :cond_7
    invoke-direct {v1, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyAddLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 307
    invoke-direct {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    .line 309
    invoke-direct/range {p0 .. p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->applyToInheritableProfiles(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;I)V

    .line 310
    .end local v0    # "localPolicyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<TV;>;"
    .end local v5    # "hasGlobalPolicies":Z
    .end local v9    # "policyChanged":Z
    monitor-exit v8

    .line 311
    return-void

    .line 310
    :catchall_3
    move-exception v0

    move-object v2, v5

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    :goto_3
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method setMaxPolicyStorageLimit(I)V
    .locals 0
    .param p1, "storageLimit"    # I

    .line 1737
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    .line 1738
    return-void
.end method

.method transferPolicies(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 10
    .param p1, "oldAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p2, "newAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            ")V"
        }
    .end annotation

    .line 931
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 932
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 933
    .local v1, "globalPolicies":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyKey;

    .line 934
    .local v3, "policy":Landroid/app/admin/PolicyKey;
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/PolicyState;

    .line 935
    .local v4, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 936
    nop

    .line 937
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v5

    .line 938
    .local v5, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    nop

    .line 939
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/PolicyValue;

    .line 940
    .local v6, "policyValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    invoke-virtual {p0, v5, p2, v6}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)V

    goto :goto_1

    .line 959
    .end local v1    # "globalPolicies":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    .end local v3    # "policy":Landroid/app/admin/PolicyKey;
    .end local v4    # "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    .end local v5    # "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .end local v6    # "policyValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 942
    .restart local v1    # "globalPolicies":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    :cond_0
    :goto_1
    goto :goto_0

    .line 944
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 945
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 946
    .local v3, "userId":I
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 947
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 948
    .local v4, "localPolicies":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/PolicyKey;

    .line 949
    .local v6, "policy":Landroid/app/admin/PolicyKey;
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/devicepolicy/PolicyState;

    .line 950
    .local v7, "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    invoke-virtual {v7}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 951
    nop

    .line 952
    invoke-virtual {v7}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v8

    .line 953
    .local v8, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    nop

    .line 954
    invoke-virtual {v7}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/PolicyValue;

    .line 955
    .local v9, "policyValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    invoke-virtual {p0, v8, p2, v9, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;I)V

    .line 957
    .end local v6    # "policy":Landroid/app/admin/PolicyKey;
    .end local v7    # "policyState":Lcom/android/server/devicepolicy/PolicyState;, "Lcom/android/server/devicepolicy/PolicyState<*>;"
    .end local v8    # "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    .end local v9    # "policyValue":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<TV;>;"
    :cond_2
    goto :goto_3

    .line 948
    :cond_3
    nop

    .line 944
    .end local v3    # "userId":I
    .end local v4    # "localPolicies":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    nop

    .line 959
    .end local v1    # "globalPolicies":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/admin/PolicyKey;>;"
    .end local v2    # "i":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 961
    return-void

    .line 959
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
