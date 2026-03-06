.class public final Lcom/android/providers/settings/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/providers/settings/FeatureFlags; = null

.field public static final FLAG_CHECK_ROOT_AND_READ_ONLY:Ljava/lang/String; = "com.android.providers.settings.check_root_and_read_only"

.field public static final FLAG_IGNORE_XML_FOR_READ_ONLY_FLAGS:Ljava/lang/String; = "com.android.providers.settings.ignore_xml_for_read_only_flags"

.field public static final FLAG_LOAD_ACONFIG_DEFAULTS:Ljava/lang/String; = "com.android.providers.settings.load_aconfig_defaults"

.field public static final FLAG_LOAD_APEX_ACONFIG_PROTOBUFS:Ljava/lang/String; = "com.android.providers.settings.load_apex_aconfig_protobufs"

.field public static final FLAG_NOTIFY_INDIVIDUAL_ACONFIG_SYSPROP_CHANGED:Ljava/lang/String; = "com.android.providers.settings.notify_individual_aconfig_sysprop_changed"

.field public static final FLAG_STAGE_ALL_ACONFIG_FLAGS:Ljava/lang/String; = "com.android.providers.settings.stage_all_aconfig_flags"

.field public static final FLAG_STORAGE_TEST_MISSION_1:Ljava/lang/String; = "com.android.providers.settings.storage_test_mission_1"

.field public static final FLAG_SUPPORT_LOCAL_OVERRIDES_SYSPROPS:Ljava/lang/String; = "com.android.providers.settings.support_local_overrides_sysprops"

.field public static final FLAG_SUPPORT_OVERRIDES:Ljava/lang/String; = "com.android.providers.settings.support_overrides"

.field public static final FLAG_SYNC_LOCAL_OVERRIDES_REMOVAL_NEW_STORAGE:Ljava/lang/String; = "com.android.providers.settings.sync_local_overrides_removal_new_storage"

.field public static final FLAG_USE_NEW_STORAGE_VALUE:Ljava/lang/String; = "com.android.providers.settings.use_new_storage_value"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Lcom/android/providers/settings/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/providers/settings/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/providers/settings/Flags;->FEATURE_FLAGS:Lcom/android/providers/settings/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRootAndReadOnly()Z
    .locals 1

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public static ignoreXmlForReadOnlyFlags()Z
    .locals 1

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public static loadAconfigDefaults()Z
    .locals 1

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public static loadApexAconfigProtobufs()Z
    .locals 1

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public static notifyIndividualAconfigSyspropChanged()Z
    .locals 1

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public static stageAllAconfigFlags()Z
    .locals 1

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public static storageTestMission1()Z
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public static supportLocalOverridesSysprops()Z
    .locals 1

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public static supportOverrides()Z
    .locals 1

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public static syncLocalOverridesRemovalNewStorage()Z
    .locals 1

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public static useNewStorageValue()Z
    .locals 1

    .line 104
    const/4 v0, 0x0

    return v0
.end method
