.class public Lcom/android/aconfig_new_storage/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/aconfig_new_storage/FeatureFlags;


# instance fields
.field private mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/aconfig_new_storage/FeatureFlags;",
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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/aconfig_new_storage/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/aconfig_new_storage/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashSet;

    const-string v6, "com.android.aconfig_new_storage.support_immediate_local_overrides"

    const-string v7, ""

    const-string v1, "com.android.aconfig_new_storage.bluetooth_flag_value_bug_fix"

    const-string v2, "com.android.aconfig_new_storage.enable_aconfig_storage_daemon"

    const-string v3, "com.android.aconfig_new_storage.enable_aconfigd_from_mainline"

    const-string v4, "com.android.aconfig_new_storage.enable_full_rust_system_aconfigd"

    const-string v5, "com.android.aconfig_new_storage.support_clear_local_overrides_immediately"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/aconfig_new_storage/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Lcom/android/aconfig_new_storage/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private isOptimizationEnabled()Z
    .locals 1

    .line 71
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public bluetoothFlagValueBugFix()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/aconfig_new_storage/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/aconfig_new_storage/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.aconfig_new_storage.bluetooth_flag_value_bug_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/aconfig_new_storage/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableAconfigStorageDaemon()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/aconfig_new_storage/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/aconfig_new_storage/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.aconfig_new_storage.enable_aconfig_storage_daemon"

    invoke-virtual {p0, v1, v0}, Lcom/android/aconfig_new_storage/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableAconfigdFromMainline()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/aconfig_new_storage/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/aconfig_new_storage/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.aconfig_new_storage.enable_aconfigd_from_mainline"

    invoke-virtual {p0, v1, v0}, Lcom/android/aconfig_new_storage/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableFullRustSystemAconfigd()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/aconfig_new_storage/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/aconfig_new_storage/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.aconfig_new_storage.enable_full_rust_system_aconfigd"

    invoke-virtual {p0, v1, v0}, Lcom/android/aconfig_new_storage/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public getFlagNames()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    const-string v4, "com.android.aconfig_new_storage.support_clear_local_overrides_immediately"

    const-string v5, "com.android.aconfig_new_storage.support_immediate_local_overrides"

    const-string v0, "com.android.aconfig_new_storage.bluetooth_flag_value_bug_fix"

    const-string v1, "com.android.aconfig_new_storage.enable_aconfig_storage_daemon"

    const-string v2, "com.android.aconfig_new_storage.enable_aconfigd_from_mainline"

    const-string v3, "com.android.aconfig_new_storage.enable_full_rust_system_aconfigd"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

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
            "Lcom/android/aconfig_new_storage/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 75
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/aconfig_new_storage/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/aconfig_new_storage/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/android/aconfig_new_storage/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    nop

    .line 64
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public supportClearLocalOverridesImmediately()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/aconfig_new_storage/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/aconfig_new_storage/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.aconfig_new_storage.support_clear_local_overrides_immediately"

    invoke-virtual {p0, v1, v0}, Lcom/android/aconfig_new_storage/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public supportImmediateLocalOverrides()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/aconfig_new_storage/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/aconfig_new_storage/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.aconfig_new_storage.support_immediate_local_overrides"

    invoke-virtual {p0, v1, v0}, Lcom/android/aconfig_new_storage/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
