.class Lcom/android/server/devicepolicy/DevicePolicyData;
.super Ljava/lang/Object;
.source "DevicePolicyData.java"


# static fields
.field private static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field private static final ATTR_DEVICE_PAIRED:Ljava/lang/String; = "device-paired"

.field private static final ATTR_DEVICE_PROVISIONING_CONFIG_APPLIED:Ljava/lang/String; = "device-provisioning-config-applied"

.field private static final ATTR_DISABLED:Ljava/lang/String; = "disabled"

.field private static final ATTR_FACTORY_RESET_FLAGS:Ljava/lang/String; = "factory-reset-flags"

.field private static final ATTR_FACTORY_RESET_REASON:Ljava/lang/String; = "factory-reset-reason"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NEW_USER_DISCLAIMER:Ljava/lang/String; = "new-user-disclaimer"

.field private static final ATTR_PERMISSION_POLICY:Ljava/lang/String; = "permission-policy"

.field private static final ATTR_PERMISSION_PROVIDER:Ljava/lang/String; = "permission-provider"

.field private static final ATTR_PROVISIONING_STATE:Ljava/lang/String; = "provisioning-state"

.field private static final ATTR_SETUP_COMPLETE:Ljava/lang/String; = "setup-complete"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final FACTORY_RESET_FLAG_ON_BOOT:I = 0x1

.field public static final FACTORY_RESET_FLAG_WIPE_EUICC:I = 0x4

.field public static final FACTORY_RESET_FLAG_WIPE_EXTERNAL_STORAGE:I = 0x2

.field public static final FACTORY_RESET_FLAG_WIPE_FACTORY_RESET_PROTECTION:I = 0x8

.field static final NEW_USER_DISCLAIMER_ACKNOWLEDGED:Ljava/lang/String; = "acked"

.field static final NEW_USER_DISCLAIMER_NEEDED:Ljava/lang/String; = "needed"

.field static final NEW_USER_DISCLAIMER_NOT_NEEDED:Ljava/lang/String; = "not_needed"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManager"

.field private static final TAG_ACCEPTED_CA_CERTIFICATES:Ljava/lang/String; = "accepted-ca-certificate"

.field private static final TAG_ADMIN_BROADCAST_PENDING:Ljava/lang/String; = "admin-broadcast-pending"

.field private static final TAG_AFFILIATION_ID:Ljava/lang/String; = "affiliation-id"

.field private static final TAG_APPS_SUSPENDED:Ljava/lang/String; = "apps-suspended"

.field private static final TAG_BYPASS_ROLE_QUALIFICATIONS:Ljava/lang/String; = "bypass-role-qualifications"

.field private static final TAG_CURRENT_INPUT_METHOD_SET:Ljava/lang/String; = "current-ime-set"

.field private static final TAG_DO_NOT_ASK_CREDENTIALS_ON_BOOT:Ljava/lang/String; = "do-not-ask-credentials-on-boot"

.field private static final TAG_INITIALIZATION_BUNDLE:Ljava/lang/String; = "initialization-bundle"

.field private static final TAG_KEEP_PROFILES_RUNNING:Ljava/lang/String; = "keep-profiles-running"

.field private static final TAG_LAST_BUG_REPORT_REQUEST:Ljava/lang/String; = "last-bug-report-request"

.field private static final TAG_LAST_NETWORK_LOG_RETRIEVAL:Ljava/lang/String; = "last-network-log-retrieval"

.field private static final TAG_LAST_SECURITY_LOG_RETRIEVAL:Ljava/lang/String; = "last-security-log-retrieval"

.field private static final TAG_LOCK_TASK_COMPONENTS:Ljava/lang/String; = "lock-task-component"

.field private static final TAG_LOCK_TASK_FEATURES:Ljava/lang/String; = "lock-task-features"

.field private static final TAG_OWNER_INSTALLED_CA_CERT:Ljava/lang/String; = "owner-installed-ca-cert"

.field private static final TAG_PASSWORD_TOKEN_HANDLE:Ljava/lang/String; = "password-token"

.field private static final TAG_PROTECTED_PACKAGES:Ljava/lang/String; = "protected-packages"

.field private static final TAG_SECONDARY_LOCK_SCREEN:Ljava/lang/String; = "secondary-lock-screen"

.field private static final TAG_STATUS_BAR:Ljava/lang/String; = "statusbar"

.field private static final VERBOSE_LOG:Z = false


# instance fields
.field final mAcceptedCaCertificates:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAdminBroadcastPending:Z

.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/devicepolicy/ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/devicepolicy/ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAppsSuspended:Z

.field mBypassDevicePolicyManagementRoleQualifications:Z

.field mCurrentInputMethodSet:Z

.field mCurrentRoleHolder:Ljava/lang/String;

.field final mDelegationMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mDeviceProvisioningConfigApplied:Z

.field mDoNotAskCredentialsOnBoot:Z

.field mEffectiveKeepProfilesRunning:Z

.field mFactoryResetFlags:I

.field mFactoryResetReason:Ljava/lang/String;

.field mFailedPasswordAttempts:I

.field mInitBundle:Landroid/os/PersistableBundle;

.field mLastBugReportRequestTime:J

.field mLastMaximumTimeToLock:J

.field mLastNetworkLogsRetrievalTime:J

.field mLastSecurityLogRetrievalTime:J

.field mLockTaskFeatures:I

.field mLockTaskPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNewUserDisclaimer:Ljava/lang/String;

.field mOwnerInstalledCaCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPaired:Z

.field mPasswordOwner:I

.field mPasswordTokenHandle:J

.field mPasswordValidAtLastCheckpoint:Z

.field mPermissionPolicy:I

.field final mRemovingAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field mRestrictionsProvider:Landroid/content/ComponentName;

.field mSecondaryLockscreenEnabled:Z

.field mStatusBarDisabled:Z

.field mUserControlDisabledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final mUserId:I

.field mUserProvisioningState:I

.field mUserSetupComplete:Z


# direct methods
.method constructor <init>(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordValidAtLastCheckpoint:Z

    .line 109
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 110
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastMaximumTimeToLock:J

    .line 111
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    .line 123
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    .line 128
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    .line 131
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    .line 140
    const/16 v3, 0x10

    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    .line 142
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    .line 147
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    .line 149
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    .line 151
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    .line 153
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    .line 155
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    .line 157
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    .line 159
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    .line 161
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    .line 164
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    .line 167
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    .line 168
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    .line 170
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    .line 174
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    .line 178
    const-string/jumbo v1, "not_needed"

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    .line 184
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    .line 187
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    .line 188
    return-void
.end method

.method static factoryResetFlagsToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "flags"    # I

    .line 709
    const-string v0, "FACTORY_RESET_FLAG_"

    int-to-long v1, p0

    const-class v3, Lcom/android/server/devicepolicy/DevicePolicyData;

    invoke-static {v3, v0, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static load(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;Ljava/util/function/Function;Landroid/content/ComponentName;)V
    .locals 23
    .param p0, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyData;
    .param p1, "journaledFile"    # Lcom/android/internal/util/JournaledFile;
    .param p3, "ownerComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/devicepolicy/DevicePolicyData;",
            "Lcom/android/internal/util/JournaledFile;",
            "Ljava/util/function/Function<",
            "Landroid/content/ComponentName;",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .line 414
    .local p2, "adminInfoSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/ComponentName;Landroid/app/admin/DeviceAdminInfo;>;"
    move-object/from16 v1, p0

    const-string v2, "DevicePolicyManager"

    const/4 v3, 0x0

    .line 415
    .local v3, "stream":Ljava/io/FileInputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v4

    .line 417
    .local v4, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 419
    .local v5, "needsRewrite":Z
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_13

    move-object v3, v0

    .line 420
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    move-object v6, v0

    .line 423
    .local v6, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    :goto_0
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    move v7, v0

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v0, v8, :cond_0

    const/4 v0, 0x2

    if-eq v7, v0, :cond_0

    goto :goto_0

    .line 426
    :cond_0
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "tag":Ljava/lang/String;
    const-string/jumbo v9, "policies"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 433
    const-string/jumbo v9, "permission-provider"

    const/4 v10, 0x0

    invoke-interface {v6, v10, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_11

    .line 434
    .local v9, "permissionProvider":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 435
    nop

    .line 436
    :try_start_2
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 580
    .end local v0    # "tag":Ljava/lang/String;
    .end local v6    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v7    # "type":I
    .end local v9    # "permissionProvider":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v20, v5

    goto/16 :goto_e

    .line 578
    :catch_1
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v20, v5

    goto/16 :goto_f

    .line 438
    .restart local v0    # "tag":Ljava/lang/String;
    .restart local v6    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v7    # "type":I
    .restart local v9    # "permissionProvider":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_3
    const-string/jumbo v11, "setup-complete"

    invoke-interface {v6, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 439
    .local v11, "userSetupComplete":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_11

    if-eqz v12, :cond_2

    .line 441
    :try_start_4
    iput-boolean v8, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 443
    :cond_2
    :try_start_5
    const-string v12, "device-paired"

    invoke-interface {v6, v10, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 444
    .local v12, "paired":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_11

    if-eqz v13, :cond_3

    .line 445
    :try_start_6
    iput-boolean v8, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 447
    :cond_3
    :try_start_7
    const-string v13, "device-provisioning-config-applied"

    invoke-interface {v6, v10, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 449
    .local v13, "deviceProvisioningConfigApplied":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_11

    if-eqz v14, :cond_4

    .line 450
    :try_start_8
    iput-boolean v8, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    .line 452
    :cond_4
    :try_start_9
    const-string/jumbo v14, "provisioning-state"

    const/4 v15, -0x1

    invoke-interface {v6, v10, v14, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_11

    .line 453
    .local v14, "provisioningState":I
    if-eq v14, v15, :cond_5

    .line 454
    :try_start_a
    iput v14, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_0

    .line 456
    :cond_5
    :try_start_b
    const-string/jumbo v8, "permission-policy"

    invoke-interface {v6, v10, v8, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_11

    .line 457
    .local v8, "permissionPolicy":I
    if-eq v8, v15, :cond_6

    .line 458
    :try_start_c
    iput v8, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionPolicy:I
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_0

    .line 460
    :cond_6
    :try_start_d
    const-string/jumbo v15, "new-user-disclaimer"

    invoke-interface {v6, v10, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    .line 462
    const-string v15, "factory-reset-flags"
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_11

    move-object/from16 v17, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .local v17, "stream":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    :try_start_e
    invoke-interface {v6, v10, v15, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    iput v15, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 467
    const-string v15, "factory-reset-reason"

    invoke-interface {v6, v10, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    .line 469
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v15

    .line 470
    .local v15, "outerDepth":I
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 471
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 472
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 473
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 474
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 475
    iput-object v10, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 476
    :goto_2
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_f

    move v7, v3

    const/4 v10, 0x1

    if-eq v3, v10, :cond_27

    const/4 v3, 0x3

    if-ne v7, v3, :cond_8

    .line 477
    :try_start_f
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v10
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_2

    if-le v10, v15, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v18, v4

    move/from16 v20, v5

    goto/16 :goto_d

    .line 580
    .end local v0    # "tag":Ljava/lang/String;
    .end local v6    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v7    # "type":I
    .end local v8    # "permissionPolicy":I
    .end local v9    # "permissionProvider":Ljava/lang/String;
    .end local v11    # "userSetupComplete":Ljava/lang/String;
    .end local v12    # "paired":Ljava/lang/String;
    .end local v13    # "deviceProvisioningConfigApplied":Ljava/lang/String;
    .end local v14    # "provisioningState":I
    .end local v15    # "outerDepth":I
    :catch_2
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v20, v5

    move-object/from16 v3, v17

    goto/16 :goto_e

    .line 578
    :catch_3
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v20, v5

    move-object/from16 v3, v17

    goto/16 :goto_f

    .line 478
    .restart local v0    # "tag":Ljava/lang/String;
    .restart local v6    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v7    # "type":I
    .restart local v8    # "permissionPolicy":I
    .restart local v9    # "permissionProvider":Ljava/lang/String;
    .restart local v11    # "userSetupComplete":Ljava/lang/String;
    .restart local v12    # "paired":Ljava/lang/String;
    .restart local v13    # "deviceProvisioningConfigApplied":Ljava/lang/String;
    .restart local v14    # "provisioningState":I
    .restart local v15    # "outerDepth":I
    :cond_8
    :goto_3
    if-eq v7, v3, :cond_26

    const/4 v3, 0x4

    if-ne v7, v3, :cond_9

    .line 479
    move-object/from16 v18, v4

    move/from16 v20, v5

    move/from16 v21, v7

    move/from16 v19, v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_c

    .line 481
    :cond_9
    :try_start_10
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 482
    .end local v0    # "tag":Ljava/lang/String;
    .local v3, "tag":Ljava/lang/String;
    const-string v0, "admin"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_f

    const-string/jumbo v10, "name"

    if-eqz v0, :cond_c

    .line 483
    move-object/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "file":Ljava/io/File;
    .local v18, "file":Ljava/io/File;
    :try_start_11
    invoke-interface {v6, v4, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_c

    move-object v4, v0

    .line 485
    .local v4, "name":Ljava/lang/String;
    nop

    .line 486
    :try_start_12
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_e
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 485
    move-object/from16 v10, p2

    :try_start_13
    invoke-interface {v10, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo;
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    .line 488
    .local v0, "dai":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v0, :cond_b

    .line 492
    move-object/from16 v19, v4

    .end local v4    # "name":Ljava/lang/String;
    .local v19, "name":Ljava/lang/String;
    :try_start_14
    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    move/from16 v20, v5

    move-object/from16 v5, p3

    .end local v5    # "needsRewrite":Z
    .local v20, "needsRewrite":Z
    :try_start_15
    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    .line 493
    .local v4, "overwritePolicies":Z
    :goto_4
    new-instance v5, Lcom/android/server/devicepolicy/ActiveAdmin;
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_4
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_4

    move/from16 v21, v7

    const/4 v7, 0x0

    .end local v7    # "type":I
    .local v21, "type":I
    :try_start_16
    invoke-direct {v5, v0, v7}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    .line 494
    .local v5, "ap":Lcom/android/server/devicepolicy/ActiveAdmin;
    invoke-virtual {v5, v6, v4}, Lcom/android/server/devicepolicy/ActiveAdmin;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Z)V

    .line 495
    iget-object v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    move/from16 v22, v4

    .end local v4    # "overwritePolicies":Z
    .local v22, "overwritePolicies":Z
    iget-object v4, v5, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v7, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_4
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_4

    goto :goto_7

    .line 580
    .end local v0    # "dai":Landroid/app/admin/DeviceAdminInfo;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v5    # "ap":Lcom/android/server/devicepolicy/ActiveAdmin;
    .end local v6    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v8    # "permissionPolicy":I
    .end local v9    # "permissionProvider":Ljava/lang/String;
    .end local v11    # "userSetupComplete":Ljava/lang/String;
    .end local v12    # "paired":Ljava/lang/String;
    .end local v13    # "deviceProvisioningConfigApplied":Ljava/lang/String;
    .end local v14    # "provisioningState":I
    .end local v15    # "outerDepth":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v21    # "type":I
    .end local v22    # "overwritePolicies":Z
    :catch_4
    move-exception v0

    move-object/from16 v3, v17

    goto/16 :goto_e

    .line 578
    :catch_5
    move-exception v0

    move-object/from16 v3, v17

    goto/16 :goto_f

    .line 497
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v6    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v8    # "permissionPolicy":I
    .restart local v9    # "permissionProvider":Ljava/lang/String;
    .restart local v11    # "userSetupComplete":Ljava/lang/String;
    .restart local v12    # "paired":Ljava/lang/String;
    .restart local v13    # "deviceProvisioningConfigApplied":Ljava/lang/String;
    .restart local v14    # "provisioningState":I
    .restart local v15    # "outerDepth":I
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v21    # "type":I
    :catch_6
    move-exception v0

    goto :goto_9

    .end local v21    # "type":I
    .restart local v7    # "type":I
    :catch_7
    move-exception v0

    move/from16 v21, v7

    .end local v7    # "type":I
    .restart local v21    # "type":I
    goto :goto_9

    .line 580
    .end local v3    # "tag":Ljava/lang/String;
    .end local v6    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v8    # "permissionPolicy":I
    .end local v9    # "permissionProvider":Ljava/lang/String;
    .end local v11    # "userSetupComplete":Ljava/lang/String;
    .end local v12    # "paired":Ljava/lang/String;
    .end local v13    # "deviceProvisioningConfigApplied":Ljava/lang/String;
    .end local v14    # "provisioningState":I
    .end local v15    # "outerDepth":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "needsRewrite":Z
    .end local v21    # "type":I
    .local v5, "needsRewrite":Z
    :catch_8
    move-exception v0

    :goto_5
    move/from16 v20, v5

    move-object/from16 v3, v17

    .end local v5    # "needsRewrite":Z
    .restart local v20    # "needsRewrite":Z
    goto/16 :goto_e

    .line 578
    .end local v20    # "needsRewrite":Z
    .restart local v5    # "needsRewrite":Z
    :catch_9
    move-exception v0

    :goto_6
    move/from16 v20, v5

    move-object/from16 v3, v17

    .end local v5    # "needsRewrite":Z
    .restart local v20    # "needsRewrite":Z
    goto/16 :goto_f

    .line 497
    .end local v20    # "needsRewrite":Z
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v5    # "needsRewrite":Z
    .restart local v6    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v7    # "type":I
    .restart local v8    # "permissionPolicy":I
    .restart local v9    # "permissionProvider":Ljava/lang/String;
    .restart local v11    # "userSetupComplete":Ljava/lang/String;
    .restart local v12    # "paired":Ljava/lang/String;
    .restart local v13    # "deviceProvisioningConfigApplied":Ljava/lang/String;
    .restart local v14    # "provisioningState":I
    .restart local v15    # "outerDepth":I
    .restart local v19    # "name":Ljava/lang/String;
    :catch_a
    move-exception v0

    move/from16 v20, v5

    move/from16 v21, v7

    .end local v5    # "needsRewrite":Z
    .end local v7    # "type":I
    .restart local v20    # "needsRewrite":Z
    .restart local v21    # "type":I
    goto :goto_9

    .line 488
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "needsRewrite":Z
    .end local v21    # "type":I
    .restart local v0    # "dai":Landroid/app/admin/DeviceAdminInfo;
    .local v4, "name":Ljava/lang/String;
    .restart local v5    # "needsRewrite":Z
    .restart local v7    # "type":I
    :cond_b
    move-object/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v7

    .line 499
    .end local v0    # "dai":Landroid/app/admin/DeviceAdminInfo;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "needsRewrite":Z
    .end local v7    # "type":I
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v20    # "needsRewrite":Z
    .restart local v21    # "type":I
    :goto_7
    goto :goto_a

    .line 497
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "needsRewrite":Z
    .end local v21    # "type":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "needsRewrite":Z
    .restart local v7    # "type":I
    :catch_b
    move-exception v0

    :goto_8
    move-object/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v7

    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "needsRewrite":Z
    .end local v7    # "type":I
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v20    # "needsRewrite":Z
    .restart local v21    # "type":I
    goto :goto_9

    .line 580
    .end local v3    # "tag":Ljava/lang/String;
    .end local v6    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v8    # "permissionPolicy":I
    .end local v9    # "permissionProvider":Ljava/lang/String;
    .end local v11    # "userSetupComplete":Ljava/lang/String;
    .end local v12    # "paired":Ljava/lang/String;
    .end local v13    # "deviceProvisioningConfigApplied":Ljava/lang/String;
    .end local v14    # "provisioningState":I
    .end local v15    # "outerDepth":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "needsRewrite":Z
    .end local v21    # "type":I
    .restart local v5    # "needsRewrite":Z
    :catch_c
    move-exception v0

    move-object/from16 v10, p2

    goto :goto_5

    .line 578
    :catch_d
    move-exception v0

    move-object/from16 v10, p2

    goto :goto_6

    .line 497
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v7    # "type":I
    .restart local v8    # "permissionPolicy":I
    .restart local v9    # "permissionProvider":Ljava/lang/String;
    .restart local v11    # "userSetupComplete":Ljava/lang/String;
    .restart local v12    # "paired":Ljava/lang/String;
    .restart local v13    # "deviceProvisioningConfigApplied":Ljava/lang/String;
    .restart local v14    # "provisioningState":I
    .restart local v15    # "outerDepth":I
    :catch_e
    move-exception v0

    move-object/from16 v10, p2

    goto :goto_8

    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "needsRewrite":Z
    .end local v7    # "type":I
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v20    # "needsRewrite":Z
    .restart local v21    # "type":I
    :goto_9
    nop

    .line 498
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_17
    const-string v4, "Failed loading admin %s"

    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v0, v4, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v19    # "name":Ljava/lang/String;
    :goto_a
    move/from16 v19, v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    .end local v18    # "file":Ljava/io/File;
    .end local v20    # "needsRewrite":Z
    .end local v21    # "type":I
    .local v4, "file":Ljava/io/File;
    .restart local v5    # "needsRewrite":Z
    .restart local v7    # "type":I
    :cond_c
    move-object/from16 v18, v4

    move/from16 v20, v5

    move/from16 v21, v7

    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "needsRewrite":Z
    .end local v7    # "type":I
    .restart local v18    # "file":Ljava/io/File;
    .restart local v20    # "needsRewrite":Z
    .restart local v21    # "type":I
    const-string v0, "delegation"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 502
    const-string v0, "delegatePackage"

    const/4 v4, 0x0

    invoke-interface {v6, v4, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "delegatePackage":Ljava/lang/String;
    const-string/jumbo v5, "scope"

    invoke-interface {v6, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 507
    .local v5, "scope":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 509
    .local v4, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v4, :cond_d

    .line 510
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 511
    iget-object v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_d
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 515
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    .end local v0    # "delegatePackage":Ljava/lang/String;
    .end local v4    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "scope":Ljava/lang/String;
    :cond_e
    move/from16 v19, v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    :cond_f
    const-string v0, "failed-password-attempts"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_17} :catch_4

    const-string/jumbo v4, "value"

    if-eqz v0, :cond_10

    .line 518
    const/4 v5, 0x0

    :try_start_18
    invoke-interface {v6, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    move/from16 v19, v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    .line 519
    :cond_10
    const-string/jumbo v0, "password-owner"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 520
    const/4 v5, 0x0

    invoke-interface {v6, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    move/from16 v19, v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    .line 521
    :cond_11
    const-string v0, "accepted-ca-certificate"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 522
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    const/4 v4, 0x0

    invoke-interface {v6, v4, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move/from16 v19, v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    .line 523
    :cond_12
    const-string/jumbo v0, "lock-task-component"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 524
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v6, v4, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v19, v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    .line 525
    :cond_13
    const-string/jumbo v0, "lock-task-features"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 526
    const/4 v5, 0x0

    invoke-interface {v6, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    move/from16 v19, v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    .line 527
    :cond_14
    const-string/jumbo v0, "secondary-lock-screen"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 528
    nop

    .line 529
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-interface {v6, v5, v4, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    move/from16 v19, v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    .line 530
    :cond_15
    const-string/jumbo v0, "statusbar"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 531
    const-string v0, "disabled"

    .line 532
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-interface {v6, v4, v0, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    move/from16 v19, v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    .line 533
    :cond_16
    const-string v0, "do-not-ask-credentials-on-boot"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 534
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    move/from16 v19, v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    .line 535
    :cond_17
    const-string v0, "affiliation-id"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 536
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    const-string/jumbo v4, "id"

    const/4 v5, 0x0

    invoke-interface {v6, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v19, v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    .line 537
    :cond_18
    const-string/jumbo v0, "last-security-log-retrieval"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 538
    nop

    .line 539
    move/from16 v19, v8

    const/4 v5, 0x0

    .end local v8    # "permissionPolicy":I
    .local v19, "permissionPolicy":I
    invoke-interface {v6, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    .line 540
    .end local v19    # "permissionPolicy":I
    .restart local v8    # "permissionPolicy":I
    :cond_19
    move/from16 v19, v8

    .end local v8    # "permissionPolicy":I
    .restart local v19    # "permissionPolicy":I
    const-string/jumbo v0, "last-bug-report-request"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 541
    nop

    .line 542
    const/4 v5, 0x0

    invoke-interface {v6, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    .line 543
    :cond_1a
    const-string/jumbo v0, "last-network-log-retrieval"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 544
    nop

    .line 545
    const/4 v5, 0x0

    invoke-interface {v6, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    .line 546
    :cond_1b
    const-string v0, "admin-broadcast-pending"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 547
    const/4 v5, 0x0

    invoke-interface {v6, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "pending":Ljava/lang/String;
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    .line 549
    .end local v0    # "pending":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    :cond_1c
    const-string/jumbo v0, "initialization-bundle"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 550
    invoke-static {v6}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    .line 551
    :cond_1d
    const-string/jumbo v0, "password-token"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 552
    const/4 v5, 0x0

    invoke-interface {v6, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    .line 553
    :cond_1e
    const-string v0, "current-ime-set"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 554
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    .line 555
    :cond_1f
    const-string/jumbo v0, "owner-installed-ca-cert"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 556
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    const-string v4, "alias"

    const/4 v5, 0x0

    invoke-interface {v6, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto :goto_b

    .line 557
    :cond_20
    const-string v0, "apps-suspended"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 558
    nop

    .line 559
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-interface {v6, v5, v4, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto :goto_b

    .line 560
    :cond_21
    const-string v0, "bypass-role-qualifications"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 561
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    .line 562
    const/4 v7, 0x0

    invoke-interface {v6, v7, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentRoleHolder:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v8, 0x0

    goto :goto_b

    .line 563
    :cond_22
    const/4 v5, 0x1

    const-string/jumbo v0, "keep-profiles-running"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 564
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v6, v7, v4, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    const/4 v4, 0x0

    goto :goto_b

    .line 567
    :cond_23
    const/4 v8, 0x0

    const-string/jumbo v0, "protected-packages"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 568
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    if-nez v0, :cond_24

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 571
    :cond_24
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 572
    const/4 v4, 0x0

    invoke-interface {v6, v4, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 571
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 574
    :cond_25
    const/4 v4, 0x0

    const-string v0, "Unknown tag: %s"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v0, v7}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 476
    .end local v19    # "permissionPolicy":I
    .restart local v8    # "permissionPolicy":I
    :goto_b
    move-object v0, v3

    move-object v10, v4

    move-object/from16 v4, v18

    move/from16 v8, v19

    move/from16 v5, v20

    move/from16 v7, v21

    .end local v8    # "permissionPolicy":I
    .restart local v19    # "permissionPolicy":I
    goto/16 :goto_2

    .line 580
    .end local v3    # "tag":Ljava/lang/String;
    .end local v6    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v9    # "permissionProvider":Ljava/lang/String;
    .end local v11    # "userSetupComplete":Ljava/lang/String;
    .end local v12    # "paired":Ljava/lang/String;
    .end local v13    # "deviceProvisioningConfigApplied":Ljava/lang/String;
    .end local v14    # "provisioningState":I
    .end local v15    # "outerDepth":I
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "permissionPolicy":I
    .end local v20    # "needsRewrite":Z
    .end local v21    # "type":I
    .local v4, "file":Ljava/io/File;
    .local v5, "needsRewrite":Z
    :catch_f
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v20, v5

    move-object/from16 v3, v17

    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "needsRewrite":Z
    .restart local v18    # "file":Ljava/io/File;
    .restart local v20    # "needsRewrite":Z
    goto/16 :goto_e

    .line 578
    .end local v18    # "file":Ljava/io/File;
    .end local v20    # "needsRewrite":Z
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "needsRewrite":Z
    :catch_10
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v20, v5

    move-object/from16 v3, v17

    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "needsRewrite":Z
    .restart local v18    # "file":Ljava/io/File;
    .restart local v20    # "needsRewrite":Z
    goto/16 :goto_f

    .line 478
    .end local v18    # "file":Ljava/io/File;
    .end local v20    # "needsRewrite":Z
    .local v0, "tag":Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "needsRewrite":Z
    .restart local v6    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v7    # "type":I
    .restart local v8    # "permissionPolicy":I
    .restart local v9    # "permissionProvider":Ljava/lang/String;
    .restart local v11    # "userSetupComplete":Ljava/lang/String;
    .restart local v12    # "paired":Ljava/lang/String;
    .restart local v13    # "deviceProvisioningConfigApplied":Ljava/lang/String;
    .restart local v14    # "provisioningState":I
    .restart local v15    # "outerDepth":I
    :cond_26
    move-object/from16 v18, v4

    move/from16 v20, v5

    move/from16 v21, v7

    move/from16 v19, v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 476
    :goto_c
    move-object v10, v4

    move-object/from16 v4, v18

    move/from16 v8, v19

    move/from16 v5, v20

    move/from16 v7, v21

    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "needsRewrite":Z
    .end local v7    # "type":I
    .end local v8    # "permissionPolicy":I
    .restart local v18    # "file":Ljava/io/File;
    .restart local v19    # "permissionPolicy":I
    .restart local v20    # "needsRewrite":Z
    .restart local v21    # "type":I
    goto/16 :goto_2

    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "permissionPolicy":I
    .end local v20    # "needsRewrite":Z
    .end local v21    # "type":I
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "needsRewrite":Z
    .restart local v7    # "type":I
    .restart local v8    # "permissionPolicy":I
    :cond_27
    move-object/from16 v18, v4

    move/from16 v20, v5

    move/from16 v21, v7

    move/from16 v19, v8

    .line 583
    .end local v0    # "tag":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "needsRewrite":Z
    .end local v6    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v7    # "type":I
    .end local v8    # "permissionPolicy":I
    .end local v9    # "permissionProvider":Ljava/lang/String;
    .end local v11    # "userSetupComplete":Ljava/lang/String;
    .end local v12    # "paired":Ljava/lang/String;
    .end local v13    # "deviceProvisioningConfigApplied":Ljava/lang/String;
    .end local v14    # "provisioningState":I
    .end local v15    # "outerDepth":I
    .restart local v18    # "file":Ljava/io/File;
    .restart local v20    # "needsRewrite":Z
    :goto_d
    move-object/from16 v3, v17

    goto :goto_10

    .line 580
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .end local v18    # "file":Ljava/io/File;
    .end local v20    # "needsRewrite":Z
    .local v3, "stream":Ljava/io/FileInputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "needsRewrite":Z
    :catch_11
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v20, v5

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "needsRewrite":Z
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "file":Ljava/io/File;
    .restart local v20    # "needsRewrite":Z
    goto :goto_e

    .line 578
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .end local v18    # "file":Ljava/io/File;
    .end local v20    # "needsRewrite":Z
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "needsRewrite":Z
    :catch_12
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v20, v5

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "needsRewrite":Z
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "file":Ljava/io/File;
    .restart local v20    # "needsRewrite":Z
    goto :goto_f

    .line 428
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .end local v18    # "file":Ljava/io/File;
    .end local v20    # "needsRewrite":Z
    .restart local v0    # "tag":Ljava/lang/String;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "needsRewrite":Z
    .restart local v6    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v7    # "type":I
    :cond_28
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v20, v5

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "needsRewrite":Z
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "file":Ljava/io/File;
    .restart local v20    # "needsRewrite":Z
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings do not start with policies tag: found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v17    # "stream":Ljava/io/FileInputStream;
    .end local v18    # "file":Ljava/io/File;
    .end local v20    # "needsRewrite":Z
    .end local p0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyData;
    .end local p1    # "journaledFile":Lcom/android/internal/util/JournaledFile;
    .end local p2    # "adminInfoSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/ComponentName;Landroid/app/admin/DeviceAdminInfo;>;"
    .end local p3    # "ownerComponent":Landroid/content/ComponentName;
    throw v3
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_4
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_18} :catch_4

    .line 580
    .end local v0    # "tag":Ljava/lang/String;
    .end local v6    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v7    # "type":I
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "needsRewrite":Z
    .restart local p0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyData;
    .restart local p1    # "journaledFile":Lcom/android/internal/util/JournaledFile;
    .restart local p2    # "adminInfoSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/ComponentName;Landroid/app/admin/DeviceAdminInfo;>;"
    .restart local p3    # "ownerComponent":Landroid/content/ComponentName;
    :catch_13
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v20, v5

    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "needsRewrite":Z
    .restart local v18    # "file":Ljava/io/File;
    .restart local v20    # "needsRewrite":Z
    goto :goto_e

    .line 578
    .end local v18    # "file":Ljava/io/File;
    .end local v20    # "needsRewrite":Z
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "needsRewrite":Z
    :catch_14
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v20, v5

    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "needsRewrite":Z
    .restart local v18    # "file":Ljava/io/File;
    .restart local v20    # "needsRewrite":Z
    goto :goto_f

    .line 580
    :goto_e
    nop

    .line 582
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "failed parsing %s"

    filled-new-array/range {v18 .. v18}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v0, v4, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    .line 578
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f
    nop

    .line 583
    nop

    .line 585
    :goto_10
    if-eqz v3, :cond_29

    .line 586
    :try_start_19
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_15

    goto :goto_11

    .line 588
    :catch_15
    move-exception v0

    goto :goto_12

    .line 590
    :cond_29
    :goto_11
    nop

    .line 593
    :goto_12
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 594
    return-void
.end method

.method static store(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;)Z
    .locals 30
    .param p0, "policyData"    # Lcom/android/server/devicepolicy/DevicePolicyData;
    .param p1, "file"    # Lcom/android/internal/util/JournaledFile;

    .line 194
    move-object/from16 v1, p0

    const-string v0, "admin-broadcast-pending"

    const-string/jumbo v2, "last-network-log-retrieval"

    const-string/jumbo v3, "last-bug-report-request"

    const-string/jumbo v4, "last-security-log-retrieval"

    const-string v5, "affiliation-id"

    const-string v6, "do-not-ask-credentials-on-boot"

    const-string/jumbo v7, "statusbar"

    const-string/jumbo v8, "secondary-lock-screen"

    const-string/jumbo v9, "lock-task-features"

    const-string/jumbo v10, "lock-task-component"

    const-string v11, "accepted-ca-certificate"

    const-string v12, "failed-password-attempts"

    const-string/jumbo v13, "password-owner"

    const-string v14, "admin"

    const-string v15, "delegation"

    move-object/from16 v16, v0

    const-string/jumbo v0, "policies"

    const/16 v17, 0x0

    .line 195
    .local v17, "stream":Ljava/io/FileOutputStream;
    const/16 v18, 0x0

    .line 197
    .local v18, "chooseForWrite":Ljava/io/File;
    move-object/from16 v19, v2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v20
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v18, v20

    .line 201
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v4, v18

    const/4 v3, 0x0

    .end local v18    # "chooseForWrite":Ljava/io/File;
    .local v4, "chooseForWrite":Ljava/io/File;
    :try_start_2
    invoke-direct {v2, v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v17, v2

    .line 202
    invoke-static/range {v17 .. v17}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v2

    .line 203
    .local v2, "out":Lcom/android/modules/utils/TypedXmlSerializer;
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v23, v4

    .end local v4    # "chooseForWrite":Ljava/io/File;
    .local v23, "chooseForWrite":Ljava/io/File;
    const/4 v4, 0x0

    :try_start_3
    invoke-interface {v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 205
    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 207
    const-string/jumbo v3, "permission-provider"

    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    .line 208
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 207
    move-object/from16 v24, v0

    const/4 v0, 0x0

    invoke-interface {v2, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 393
    .end local v2    # "out":Lcom/android/modules/utils/TypedXmlSerializer;
    :catch_0
    move-exception v0

    move-object/from16 v18, v23

    goto/16 :goto_9

    .line 206
    .restart local v2    # "out":Lcom/android/modules/utils/TypedXmlSerializer;
    :cond_0
    move-object/from16 v24, v0

    .line 210
    :goto_0
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    if-eqz v0, :cond_1

    .line 212
    const-string/jumbo v0, "setup-complete"

    move/from16 v3, v18

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    :cond_1
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    if-eqz v0, :cond_2

    .line 215
    const-string v0, "device-paired"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    :cond_2
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    if-eqz v0, :cond_3

    .line 218
    const-string v0, "device-provisioning-config-applied"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    :cond_3
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    if-eqz v0, :cond_4

    .line 221
    const-string/jumbo v0, "provisioning-state"

    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    :cond_4
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionPolicy:I

    if-eqz v0, :cond_5

    .line 224
    const-string/jumbo v0, "permission-policy"

    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionPolicy:I

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    :cond_5
    const-string/jumbo v0, "needed"

    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 227
    const-string/jumbo v0, "new-user-disclaimer"

    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    :cond_6
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    if-eqz v0, :cond_7

    .line 235
    const-string v0, "factory-reset-flags"

    iget v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    :cond_7
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 238
    const-string v0, "factory-reset-reason"

    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 243
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 244
    .local v3, "delegatePackage":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 247
    .local v4, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v27, v26

    .line 248
    .local v27, "scope":Ljava/lang/String;
    move/from16 v26, v0

    const/4 v0, 0x0

    .end local v0    # "i":I
    .local v26, "i":I
    invoke-interface {v2, v0, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    const-string v0, "delegatePackage"

    move-object/from16 v28, v4

    const/4 v4, 0x0

    .end local v4    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v28, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v4, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 250
    const-string/jumbo v0, "scope"

    move-object/from16 v29, v3

    move-object/from16 v3, v27

    .end local v27    # "scope":Ljava/lang/String;
    .local v3, "scope":Ljava/lang/String;
    .local v29, "delegatePackage":Ljava/lang/String;
    invoke-interface {v2, v4, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 251
    invoke-interface {v2, v4, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    move/from16 v0, v26

    move-object/from16 v4, v28

    move-object/from16 v3, v29

    .end local v3    # "scope":Ljava/lang/String;
    goto :goto_2

    .line 247
    .end local v26    # "i":I
    .end local v28    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "delegatePackage":Ljava/lang/String;
    .restart local v0    # "i":I
    .local v3, "delegatePackage":Ljava/lang/String;
    .restart local v4    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    move/from16 v26, v0

    move-object/from16 v29, v3

    move-object/from16 v28, v4

    .line 242
    .end local v0    # "i":I
    .end local v3    # "delegatePackage":Ljava/lang/String;
    .end local v4    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "i":I
    add-int/lit8 v0, v26, 0x1

    .end local v26    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    :cond_a
    move/from16 v26, v0

    .line 255
    .end local v0    # "i":I
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 256
    .local v0, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    const-string/jumbo v4, "name"

    if-ge v3, v0, :cond_c

    .line 257
    :try_start_4
    iget-object v15, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 258
    .local v15, "ap":Lcom/android/server/devicepolicy/ActiveAdmin;
    if-eqz v15, :cond_b

    .line 259
    move/from16 v25, v0

    const/4 v0, 0x0

    .end local v0    # "n":I
    .local v25, "n":I
    invoke-interface {v2, v0, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    iget-object v0, v15, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    move/from16 v26, v3

    const/4 v3, 0x0

    .end local v3    # "i":I
    .restart local v26    # "i":I
    invoke-interface {v2, v3, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    invoke-virtual {v15, v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 262
    invoke-interface {v2, v3, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4

    .line 258
    .end local v25    # "n":I
    .end local v26    # "i":I
    .restart local v0    # "n":I
    .restart local v3    # "i":I
    :cond_b
    move/from16 v25, v0

    move/from16 v26, v3

    .line 256
    .end local v0    # "n":I
    .end local v3    # "i":I
    .end local v15    # "ap":Lcom/android/server/devicepolicy/ActiveAdmin;
    .restart local v25    # "n":I
    .restart local v26    # "i":I
    :goto_4
    add-int/lit8 v3, v26, 0x1

    move/from16 v0, v25

    .end local v26    # "i":I
    .restart local v3    # "i":I
    goto :goto_3

    .end local v25    # "n":I
    .restart local v0    # "n":I
    :cond_c
    move/from16 v25, v0

    move/from16 v26, v3

    .line 266
    .end local v0    # "n":I
    .end local v3    # "i":I
    .restart local v25    # "n":I
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const-string/jumbo v3, "value"

    if-ltz v0, :cond_d

    .line 267
    const/4 v0, 0x0

    :try_start_5
    invoke-interface {v2, v0, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    iget v14, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    invoke-interface {v2, v0, v3, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    invoke-interface {v2, v0, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 272
    :cond_d
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    if-eqz v0, :cond_e

    .line 273
    const/4 v0, 0x0

    invoke-interface {v2, v0, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    iget v13, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-interface {v2, v0, v3, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 275
    invoke-interface {v2, v0, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v12, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v12

    if-ge v0, v12, :cond_f

    .line 279
    const/4 v12, 0x0

    invoke-interface {v2, v12, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    iget-object v12, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    invoke-virtual {v12, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v2, v13, v4, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 281
    invoke-interface {v2, v13, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    nop

    .line 284
    .end local v0    # "i":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget-object v11, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v0, v11, :cond_10

    .line 285
    iget-object v11, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 286
    .local v11, "component":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-interface {v2, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 287
    invoke-interface {v2, v12, v4, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 288
    invoke-interface {v2, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 284
    nop

    .end local v11    # "component":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    nop

    .line 291
    .end local v0    # "i":I
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    if-eqz v0, :cond_11

    .line 292
    const/4 v4, 0x0

    invoke-interface {v2, v4, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    iget v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    invoke-interface {v2, v4, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    invoke-interface {v2, v4, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    :cond_11
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    if-eqz v0, :cond_12

    .line 298
    const/4 v4, 0x0

    invoke-interface {v2, v4, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 299
    const/4 v0, 0x1

    invoke-interface {v2, v4, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    invoke-interface {v2, v4, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    :cond_12
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    if-eqz v0, :cond_13

    .line 304
    const/4 v4, 0x0

    invoke-interface {v2, v4, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    const-string v0, "disabled"

    iget-boolean v8, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    invoke-interface {v2, v4, v0, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    invoke-interface {v2, v4, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 309
    :cond_13
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    if-eqz v0, :cond_14

    .line 310
    const/4 v4, 0x0

    invoke-interface {v2, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 311
    invoke-interface {v2, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    :cond_14
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 315
    .local v4, "id":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-interface {v2, v12, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    const-string/jumbo v6, "id"

    invoke-interface {v2, v12, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 317
    invoke-interface {v2, v12, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    nop

    .end local v4    # "id":Ljava/lang/String;
    goto :goto_7

    .line 320
    :cond_15
    iget-wide v4, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_16

    .line 321
    move-object/from16 v0, v22

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    iget-wide v8, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    invoke-interface {v2, v4, v3, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    :cond_16
    iget-wide v4, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_17

    .line 327
    move-object/from16 v0, v21

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    iget-wide v8, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    invoke-interface {v2, v4, v3, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 329
    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    :cond_17
    iget-wide v4, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_18

    .line 333
    move-object/from16 v0, v19

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    iget-wide v8, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    invoke-interface {v2, v4, v3, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    :cond_18
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    if-eqz v0, :cond_19

    .line 339
    move-object/from16 v0, v16

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 340
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    invoke-interface {v2, v4, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 341
    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    :cond_19
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1a

    .line 345
    const-string/jumbo v0, "initialization-bundle"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 346
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 347
    const-string/jumbo v0, "initialization-bundle"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 350
    :cond_1a
    iget-wide v4, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1b

    .line 351
    const-string/jumbo v0, "password-token"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 352
    iget-wide v5, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    invoke-interface {v2, v4, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    const-string/jumbo v0, "password-token"

    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    :cond_1b
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    if-eqz v0, :cond_1c

    .line 357
    const-string v0, "current-ime-set"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 358
    const-string v0, "current-ime-set"

    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    :cond_1c
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 362
    .local v4, "cert":Ljava/lang/String;
    const-string/jumbo v5, "owner-installed-ca-cert"

    const/4 v12, 0x0

    invoke-interface {v2, v12, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    const-string v5, "alias"

    invoke-interface {v2, v12, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 364
    const-string/jumbo v5, "owner-installed-ca-cert"

    invoke-interface {v2, v12, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    nop

    .end local v4    # "cert":Ljava/lang/String;
    goto :goto_8

    .line 367
    :cond_1d
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    if-eqz v0, :cond_1e

    .line 368
    const-string v0, "apps-suspended"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 369
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    invoke-interface {v2, v4, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 370
    const-string v0, "apps-suspended"

    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    :cond_1e
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    if-eqz v0, :cond_1f

    .line 374
    const-string v0, "bypass-role-qualifications"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 375
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentRoleHolder:Ljava/lang/String;

    invoke-interface {v2, v4, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 376
    const-string v0, "bypass-role-qualifications"

    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 379
    :cond_1f
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    if-eqz v0, :cond_20

    .line 380
    const-string/jumbo v0, "keep-profiles-running"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 381
    iget-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    invoke-interface {v2, v4, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 382
    const-string/jumbo v0, "keep-profiles-running"

    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 385
    :cond_20
    move-object/from16 v0, v24

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 387
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 388
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->flush()V

    .line 389
    invoke-static/range {v17 .. v17}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 390
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 392
    const/16 v18, 0x1

    return v18

    .line 393
    .end local v2    # "out":Lcom/android/modules/utils/TypedXmlSerializer;
    .end local v23    # "chooseForWrite":Ljava/io/File;
    .end local v25    # "n":I
    .local v4, "chooseForWrite":Ljava/io/File;
    :catch_1
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v18, v23

    .end local v4    # "chooseForWrite":Ljava/io/File;
    .restart local v23    # "chooseForWrite":Ljava/io/File;
    goto :goto_9

    .end local v23    # "chooseForWrite":Ljava/io/File;
    .restart local v18    # "chooseForWrite":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object/from16 v23, v18

    .end local v18    # "chooseForWrite":Ljava/io/File;
    .restart local v23    # "chooseForWrite":Ljava/io/File;
    goto :goto_9

    .end local v23    # "chooseForWrite":Ljava/io/File;
    .restart local v18    # "chooseForWrite":Ljava/io/File;
    :catch_3
    move-exception v0

    :goto_9
    move-object v2, v0

    .line 394
    .local v2, "e":Ljava/lang/Exception;
    const-string v0, "failed writing file %s"

    filled-new-array/range {v18 .. v18}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "DevicePolicyManager"

    invoke-static {v4, v2, v0, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    if-eqz v17, :cond_21

    .line 397
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_a

    .line 399
    :catch_4
    move-exception v0

    goto :goto_b

    .line 401
    :cond_21
    :goto_a
    nop

    .line 402
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 403
    const/16 v20, 0x0

    return v20
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;)V
    .locals 6
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 652
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabled Device Admins (User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", provisioningState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 656
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 657
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 658
    .local v2, "ap":Lcom/android/server/devicepolicy/ActiveAdmin;
    if-eqz v2, :cond_0

    .line 659
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 660
    iget-object v3, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 661
    const-string v3, ":"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 663
    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 664
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 665
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 656
    .end local v2    # "ap":Lcom/android/server/devicepolicy/ActiveAdmin;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 668
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 669
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing Device Admins (User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 673
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 674
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 675
    const-string/jumbo v1, "mPasswordOwner="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 676
    const-string/jumbo v1, "mPasswordTokenHandle="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 677
    const-string/jumbo v1, "mAppsSuspended="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 678
    const-string/jumbo v1, "mUserSetupComplete="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 679
    const-string/jumbo v1, "mAffiliationIds="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 680
    const-string/jumbo v1, "mNewUserDisclaimer="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 681
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    if-eqz v1, :cond_3

    .line 682
    const-string/jumbo v1, "mFactoryResetFlags="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 683
    const-string v1, " ("

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 684
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyData;->factoryResetFlagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 685
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(C)V

    .line 687
    :cond_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 688
    const-string/jumbo v1, "mFactoryResetReason="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 690
    :cond_4
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-eqz v1, :cond_7

    .line 691
    const-string/jumbo v1, "mDelegationMap="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 693
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 694
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 695
    .local v2, "delegationScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 698
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 699
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 698
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    nop

    .line 701
    .end local v3    # "j":I
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 693
    .end local v2    # "delegationScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    nop

    .line 703
    .end local v1    # "i":I
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 705
    :cond_7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 706
    return-void
.end method

.method isNewUserDisclaimerAcknowledged()Z
    .locals 5

    .line 630
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    const-string v1, "DevicePolicyManager"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 631
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    if-nez v0, :cond_0

    .line 632
    return v2

    .line 634
    :cond_0
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    .line 635
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 634
    const-string/jumbo v2, "isNewUserDisclaimerAcknowledged(%d): mNewUserDisclaimer is null"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    return v3

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v4, "acked"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "needed"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "not_needed"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 645
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "isNewUserDisclaimerAcknowledged(%d): invalid value %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    return v3

    .line 643
    :pswitch_0
    return v3

    .line 641
    :pswitch_1
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x49d9295f -> :sswitch_2
        -0x3e8c384b -> :sswitch_1
        0x58586e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setDelayedFactoryReset(Ljava/lang/String;ZZZ)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "wipeExtRequested"    # Z
    .param p3, "wipeEuicc"    # Z
    .param p4, "wipeResetProtectionData"    # Z

    .line 615
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    .line 617
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 618
    if-eqz p2, :cond_0

    .line 619
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 621
    :cond_0
    if-eqz p3, :cond_1

    .line 622
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 624
    :cond_1
    if-eqz p4, :cond_2

    .line 625
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 627
    :cond_2
    return-void
.end method

.method validatePasswordOwner()V
    .locals 4

    .line 597
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    if-ltz v0, :cond_2

    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "haveOwner":Z
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 600
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUid()I

    move-result v2

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    if-ne v2, v3, :cond_0

    .line 601
    const/4 v0, 0x1

    .line 602
    goto :goto_1

    .line 599
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 605
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 606
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 607
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 606
    const-string v2, "DevicePolicyManager"

    const-string v3, "Previous password owner %s no longer active; disabling"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    .line 611
    .end local v0    # "haveOwner":Z
    :cond_2
    return-void
.end method
