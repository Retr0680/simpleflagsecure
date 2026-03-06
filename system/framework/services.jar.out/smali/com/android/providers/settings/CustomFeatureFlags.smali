.class public Lcom/android/providers/settings/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/providers/settings/FeatureFlags;


# instance fields
.field private mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/providers/settings/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/BiPredicate;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/providers/settings/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/providers/settings/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/HashSet;

    const-string v11, "com.android.providers.settings.use_new_storage_value"

    const-string v12, ""

    const-string v1, "com.android.providers.settings.check_root_and_read_only"

    const-string v2, "com.android.providers.settings.ignore_xml_for_read_only_flags"

    const-string v3, "com.android.providers.settings.load_aconfig_defaults"

    const-string v4, "com.android.providers.settings.load_apex_aconfig_protobufs"

    const-string v5, "com.android.providers.settings.notify_individual_aconfig_sysprop_changed"

    const-string v6, "com.android.providers.settings.stage_all_aconfig_flags"

    const-string v7, "com.android.providers.settings.storage_test_mission_1"

    const-string v8, "com.android.providers.settings.support_local_overrides_sysprops"

    const-string v9, "com.android.providers.settings.support_overrides"

    const-string v10, "com.android.providers.settings.sync_local_overrides_removal_new_storage"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/providers/settings/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Lcom/android/providers/settings/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private isOptimizationEnabled()Z
    .locals 1

    .line 106
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public checkRootAndReadOnly()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.providers.settings.check_root_and_read_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/settings/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public getFlagNames()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    const-string v9, "com.android.providers.settings.sync_local_overrides_removal_new_storage"

    const-string v10, "com.android.providers.settings.use_new_storage_value"

    const-string v0, "com.android.providers.settings.check_root_and_read_only"

    const-string v1, "com.android.providers.settings.ignore_xml_for_read_only_flags"

    const-string v2, "com.android.providers.settings.load_aconfig_defaults"

    const-string v3, "com.android.providers.settings.load_apex_aconfig_protobufs"

    const-string v4, "com.android.providers.settings.notify_individual_aconfig_sysprop_changed"

    const-string v5, "com.android.providers.settings.stage_all_aconfig_flags"

    const-string v6, "com.android.providers.settings.storage_test_mission_1"

    const-string v7, "com.android.providers.settings.support_local_overrides_sysprops"

    const-string v8, "com.android.providers.settings.support_overrides"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/providers/settings/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 110
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/providers/settings/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/providers/settings/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ignoreXmlForReadOnlyFlags()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.providers.settings.ignore_xml_for_read_only_flags"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/settings/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/android/providers/settings/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    nop

    .line 99
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAconfigDefaults()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.providers.settings.load_aconfig_defaults"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/settings/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public loadApexAconfigProtobufs()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.providers.settings.load_apex_aconfig_protobufs"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/settings/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notifyIndividualAconfigSyspropChanged()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.providers.settings.notify_individual_aconfig_sysprop_changed"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/settings/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public stageAllAconfigFlags()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.providers.settings.stage_all_aconfig_flags"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/settings/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public storageTestMission1()Z
    .locals 2

    .line 64
    new-instance v0, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.providers.settings.storage_test_mission_1"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/settings/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public supportLocalOverridesSysprops()Z
    .locals 2

    .line 71
    new-instance v0, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.providers.settings.support_local_overrides_sysprops"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/settings/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public supportOverrides()Z
    .locals 2

    .line 78
    new-instance v0, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.providers.settings.support_overrides"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/settings/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public syncLocalOverridesRemovalNewStorage()Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.providers.settings.sync_local_overrides_removal_new_storage"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/settings/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public useNewStorageValue()Z
    .locals 2

    .line 92
    new-instance v0, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/providers/settings/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.providers.settings.use_new_storage_value"

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/settings/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
