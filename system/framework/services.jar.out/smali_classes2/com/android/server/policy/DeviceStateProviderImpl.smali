.class public final Lcom/android/server/policy/DeviceStateProviderImpl;
.super Ljava/lang/Object;
.source "DeviceStateProviderImpl.java"

# interfaces
.implements Lcom/android/server/devicestate/DeviceStateProvider;
.implements Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/os/PowerManager$OnThermalStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;,
        Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;,
        Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;,
        Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;,
        Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "device_state_configuration.xml"

.field private static final DATA_CONFIG_FILE_PATH:Ljava/lang/String; = "system/devicestate/"

.field private static final DEBUG:Z = false

.field static final DEFAULT_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

.field private static final FALSE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

.field private static final FLAG_APP_INACCESSIBLE:Ljava/lang/String; = "FLAG_APP_INACCESSIBLE"

.field private static final FLAG_CANCEL_OVERRIDE_REQUESTS:Ljava/lang/String; = "FLAG_CANCEL_OVERRIDE_REQUESTS"

.field private static final FLAG_CANCEL_WHEN_REQUESTER_NOT_ON_TOP:Ljava/lang/String; = "FLAG_CANCEL_WHEN_REQUESTER_NOT_ON_TOP"

.field private static final FLAG_EMULATED_ONLY:Ljava/lang/String; = "FLAG_EMULATED_ONLY"

.field private static final FLAG_UNSUPPORTED_WHEN_POWER_SAVE_MODE:Ljava/lang/String; = "FLAG_UNSUPPORTED_WHEN_POWER_SAVE_MODE"

.field private static final FLAG_UNSUPPORTED_WHEN_THERMAL_STATUS_CRITICAL:Ljava/lang/String; = "FLAG_UNSUPPORTED_WHEN_THERMAL_STATUS_CRITICAL"

.field private static final PROPERTY_APP_INACCESSIBLE:Ljava/lang/String; = "com.android.server.policy.PROPERTY_APP_INACCESSIBLE"

.field private static final PROPERTY_EMULATED_ONLY:Ljava/lang/String; = "com.android.server.policy.PROPERTY_EMULATED_ONLY"

.field private static final PROPERTY_EXTENDED_DEVICE_STATE_EXTERNAL_DISPLAY:Ljava/lang/String; = "com.android.server.policy.PROPERTY_EXTENDED_DEVICE_STATE_EXTERNAL_DISPLAY"

.field private static final PROPERTY_FEATURE_DUAL_DISPLAY_INTERNAL_DEFAULT:Ljava/lang/String; = "com.android.server.policy.PROPERTY_FEATURE_DUAL_DISPLAY_INTERNAL_DEFAULT"

.field private static final PROPERTY_FEATURE_REAR_DISPLAY:Ljava/lang/String; = "com.android.server.policy.PROPERTY_FEATURE_REAR_DISPLAY"

.field private static final PROPERTY_FEATURE_REAR_DISPLAY_OUTER_DEFAULT:Ljava/lang/String; = "com.android.server.policy.PROPERTY_FEATURE_REAR_DISPLAY_OUTER_DEFAULT"

.field private static final PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_INNER_PRIMARY:Ljava/lang/String; = "com.android.server.policy.PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_INNER_PRIMARY"

.field private static final PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_OUTER_PRIMARY:Ljava/lang/String; = "com.android.server.policy.PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_OUTER_PRIMARY"

.field private static final PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_CLOSED:Ljava/lang/String; = "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_CLOSED"

.field private static final PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_HALF_OPEN:Ljava/lang/String; = "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_HALF_OPEN"

.field private static final PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_OPEN:Ljava/lang/String; = "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_OPEN"

.field private static final PROPERTY_POLICY_AVAILABLE_FOR_APP_REQUEST:Ljava/lang/String; = "com.android.server.policy.PROPERTY_POLICY_AVAILABLE_FOR_APP_REQUEST"

.field private static final PROPERTY_POLICY_CANCEL_OVERRIDE_REQUESTS:Ljava/lang/String; = "com.android.server.policy.PROPERTY_POLICY_CANCEL_OVERRIDE_REQUESTS"

.field private static final PROPERTY_POLICY_CANCEL_WHEN_REQUESTER_NOT_ON_TOP:Ljava/lang/String; = "com.android.server.policy.PROPERTY_POLICY_CANCEL_WHEN_REQUESTER_NOT_ON_TOP"

.field private static final PROPERTY_POLICY_UNSUPPORTED_WHEN_POWER_SAVE_MODE:Ljava/lang/String; = "com.android.server.policy.PROPERTY_POLICY_UNSUPPORTED_WHEN_POWER_SAVE_MODE"

.field private static final PROPERTY_POLICY_UNSUPPORTED_WHEN_THERMAL_STATUS_CRITICAL:Ljava/lang/String; = "com.android.server.policy.PROPERTY_POLICY_UNSUPPORTED_WHEN_THERMAL_STATUS_CRITICAL"

.field private static final PROPERTY_POWER_CONFIGURATION_TRIGGER_SLEEP:Ljava/lang/String; = "com.android.server.policy.PROPERTY_POWER_CONFIGURATION_TRIGGER_SLEEP"

.field private static final PROPERTY_POWER_CONFIGURATION_TRIGGER_WAKE:Ljava/lang/String; = "com.android.server.policy.PROPERTY_POWER_CONFIGURATION_TRIGGER_WAKE"

.field private static final TAG:Ljava/lang/String; = "DeviceStateProviderImpl"

.field private static final TRUE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

.field private static final VENDOR_CONFIG_FILE_PATH:Ljava/lang/String; = "etc/devicestate/"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsLidOpen:Ljava/lang/Boolean;

.field private mLastReportedState:I

.field private final mLatestSensorEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/Sensor;",
            "Landroid/hardware/SensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

.field private final mLock:Ljava/lang/Object;

.field private final mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

.field private mPowerSaveModeEnabled:Z

.field private final mStateConditions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/function/BooleanSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private mThermalStatus:I


# direct methods
.method public static synthetic $r8$lambda$bgz4Cv-Vfw4TPvy7PVfVmwLTs14()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/policy/DeviceStateProviderImpl;->lambda$static$1()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$t8JSrrBv0J146lhB0w0iIONBa0A()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/policy/DeviceStateProviderImpl;->lambda$static$0()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLidOpen(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mIsLidOpen:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestSensorEvent(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 96
    new-instance v0, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->TRUE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    .line 97
    new-instance v0, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->FALSE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    .line 100
    new-instance v0, Landroid/hardware/devicestate/DeviceState;

    new-instance v1, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    const/4 v2, 0x0

    const-string v3, "DEFAULT"

    invoke-direct {v1, v2, v3}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;-><init>(ILjava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->build()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/devicestate/DeviceState;-><init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V

    sput-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->DEFAULT_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    .line 100
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/policy/devicestate/config/Conditions;",
            ">;)V"
        }
    .end annotation

    .line 374
    .local p2, "deviceStates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/devicestate/DeviceState;>;"
    .local p3, "stateConditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/policy/devicestate/config/Conditions;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    .line 354
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    .line 359
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    .line 364
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    .line 375
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "Number of device states must be equal to the number of device state conditions."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 378
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    .line 380
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/devicestate/DeviceState;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/devicestate/DeviceState;

    .line 381
    .local v0, "orderedStates":[Landroid/hardware/devicestate/DeviceState;
    new-instance v1, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 382
    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

    .line 384
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/DeviceStateProviderImpl;->setStateConditions(Ljava/util/List;Ljava/util/List;)V

    .line 386
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 387
    .local v1, "powerManager":Landroid/os/PowerManager;
    if-eqz v1, :cond_2

    .line 391
    invoke-static {p2}, Lcom/android/server/policy/DeviceStateProviderImpl;->hasThermalSensitiveState(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    invoke-virtual {v1, p0}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    .line 398
    :cond_1
    invoke-static {p2}, Lcom/android/server/policy/DeviceStateProviderImpl;->hasPowerSaveSensitiveState(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 401
    .local v2, "filter":Landroid/content/IntentFilter;
    new-instance v3, Lcom/android/server/policy/DeviceStateProviderImpl$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl$1;-><init>(Lcom/android/server/policy/DeviceStateProviderImpl;Landroid/os/PowerManager;)V

    .line 410
    .local v3, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v4, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 413
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "receiver":Landroid/content/BroadcastReceiver;
    :cond_2
    return-void
.end method

.method private static addFlagByString(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .param p0, "flagString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 321
    .local p1, "systemProperties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x5

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "FLAG_UNSUPPORTED_WHEN_THERMAL_STATUS_CRITICAL"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "FLAG_UNSUPPORTED_WHEN_POWER_SAVE_MODE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "FLAG_CANCEL_WHEN_REQUESTER_NOT_ON_TOP"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "FLAG_CANCEL_OVERRIDE_REQUESTS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "FLAG_APP_INACCESSIBLE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "FLAG_EMULATED_ONLY"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsed unknown flag with name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStateProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 338
    :pswitch_0
    nop

    .line 339
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 338
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 340
    goto :goto_2

    .line 335
    :pswitch_1
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 336
    goto :goto_2

    .line 332
    :pswitch_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 333
    goto :goto_2

    .line 329
    :pswitch_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 330
    goto :goto_2

    .line 326
    :pswitch_4
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    goto :goto_2

    .line 323
    :pswitch_5
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    nop

    .line 345
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4445fa39 -> :sswitch_5
        -0x439e3374 -> :sswitch_4
        -0x3ed3563b -> :sswitch_3
        -0x35acdc89 -> :sswitch_2
        0x223e2ba3 -> :sswitch_1
        0x639d1bdc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static addPropertyByString(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 21
    .param p0, "propertyString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 244
    .local p1, "systemProperties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "physicalProperties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/16 v4, 0x8

    const/16 v5, 0x9

    const/4 v6, 0x2

    const/16 v7, 0xc

    const/16 v8, 0x11

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/16 v11, 0x10

    const/16 v12, 0xd

    const/16 v13, 0xb

    const/4 v14, 0x1

    const/4 v15, 0x7

    const/16 v16, 0xe

    const/16 v17, 0x6

    const/16 v18, 0xf

    const/16 v19, 0x3

    const/16 v20, 0xa

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v3, "com.android.server.policy.PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_OUTER_PRIMARY"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v3, v20

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "com.android.server.policy.PROPERTY_POLICY_CANCEL_OVERRIDE_REQUESTS"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v3, v19

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "com.android.server.policy.PROPERTY_FEATURE_REAR_DISPLAY"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v3, v18

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "com.android.server.policy.PROPERTY_POLICY_UNSUPPORTED_WHEN_POWER_SAVE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v3, v17

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "com.android.server.policy.PROPERTY_EXTENDED_DEVICE_STATE_EXTERNAL_DISPLAY"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v3, v16

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "com.android.server.policy.PROPERTY_POLICY_AVAILABLE_FOR_APP_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v15

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_HALF_OPEN"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v14

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "com.android.server.policy.PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_INNER_PRIMARY"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v13

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "com.android.server.policy.PROPERTY_POWER_CONFIGURATION_TRIGGER_WAKE"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v12

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "com.android.server.policy.PROPERTY_FEATURE_DUAL_DISPLAY_INTERNAL_DEFAULT"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v11

    goto :goto_1

    :sswitch_a
    const-string v3, "com.android.server.policy.PROPERTY_POLICY_CANCEL_WHEN_REQUESTER_NOT_ON_TOP"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v10

    goto :goto_1

    :sswitch_b
    const-string v3, "com.android.server.policy.PROPERTY_POLICY_UNSUPPORTED_WHEN_THERMAL_STATUS_CRITICAL"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v9

    goto :goto_1

    :sswitch_c
    const-string v3, "com.android.server.policy.PROPERTY_FEATURE_REAR_DISPLAY_OUTER_DEFAULT"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v8

    goto :goto_1

    :sswitch_d
    const-string v3, "com.android.server.policy.PROPERTY_POWER_CONFIGURATION_TRIGGER_SLEEP"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v7

    goto :goto_1

    :sswitch_e
    const-string v3, "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_OPEN"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_1

    :sswitch_f
    const-string v3, "com.android.server.policy.PROPERTY_EMULATED_ONLY"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_1

    :sswitch_10
    const-string v3, "com.android.server.policy.PROPERTY_APP_INACCESSIBLE"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :sswitch_11
    const-string v3, "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_CLOSED"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :goto_0
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsed unknown flag with name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DeviceStateProviderImpl"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 311
    :pswitch_0
    const/16 v3, 0x3e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    goto/16 :goto_2

    .line 308
    :pswitch_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 309
    goto/16 :goto_2

    .line 305
    :pswitch_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 306
    goto/16 :goto_2

    .line 301
    :pswitch_3
    nop

    .line 302
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 301
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 303
    goto/16 :goto_2

    .line 297
    :pswitch_4
    nop

    .line 298
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 297
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    goto/16 :goto_2

    .line 293
    :pswitch_5
    nop

    .line 294
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 293
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    goto/16 :goto_2

    .line 289
    :pswitch_6
    nop

    .line 290
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 289
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    goto :goto_2

    .line 285
    :pswitch_7
    nop

    .line 286
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 285
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    goto :goto_2

    .line 282
    :pswitch_8
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    goto :goto_2

    .line 279
    :pswitch_9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    goto :goto_2

    .line 275
    :pswitch_a
    nop

    .line 276
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 275
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    goto :goto_2

    .line 271
    :pswitch_b
    nop

    .line 272
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 271
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    goto :goto_2

    .line 267
    :pswitch_c
    nop

    .line 268
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 267
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    goto :goto_2

    .line 263
    :pswitch_d
    nop

    .line 264
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 263
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 265
    goto :goto_2

    .line 259
    :pswitch_e
    nop

    .line 260
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 259
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    goto :goto_2

    .line 255
    :pswitch_f
    nop

    .line 256
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 255
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    goto :goto_2

    .line 251
    :pswitch_10
    nop

    .line 252
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 251
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    goto :goto_2

    .line 247
    :pswitch_11
    nop

    .line 248
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 247
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    nop

    .line 317
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a23b2cf -> :sswitch_11
        -0x72bbce1a -> :sswitch_10
        -0x66b0d153 -> :sswitch_f
        -0x61123cb1 -> :sswitch_e
        -0x57ea94e0 -> :sswitch_d
        -0x4e29ef65 -> :sswitch_c
        -0x42b4de97 -> :sswitch_b
        -0x11adf9fc -> :sswitch_a
        -0xb013857 -> :sswitch_9
        -0x2d45be5 -> :sswitch_8
        0x2aae3dfc -> :sswitch_7
        0x3af6fcf1 -> :sswitch_6
        0x3bcf1d05 -> :sswitch_5
        0x411507cc -> :sswitch_4
        0x463d0e30 -> :sswitch_3
        0x5b67cf1d -> :sswitch_2
        0x68a96952 -> :sswitch_1
        0x74f81b21 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/policy/DeviceStateProviderImpl;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 167
    invoke-static {}, Lcom/android/server/policy/DeviceStateProviderImpl;->getConfigurationFile()Ljava/io/File;

    move-result-object v0

    .line 168
    .local v0, "configFile":Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 169
    invoke-static {p0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;

    move-result-object v1

    return-object v1

    .line 171
    :cond_0
    new-instance v2, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;

    invoke-direct {v2, v0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;-><init>(Ljava/io/File;Lcom/android/server/policy/DeviceStateProviderImpl-IA;)V

    invoke-static {p0, v2}, Lcom/android/server/policy/DeviceStateProviderImpl;->createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;

    move-result-object v1

    return-object v1
.end method

.method static createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "readableConfig"    # Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, "deviceStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/devicestate/DeviceState;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v1, "conditionsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/policy/devicestate/config/Conditions;>;"
    if-eqz p1, :cond_3

    .line 187
    invoke-static {p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->parseConfig(Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/devicestate/config/DeviceStateConfig;

    move-result-object v2

    .line 188
    .local v2, "config":Lcom/android/server/policy/devicestate/config/DeviceStateConfig;
    if-eqz v2, :cond_3

    .line 190
    invoke-virtual {v2}, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->getDeviceState()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/devicestate/config/DeviceState;

    .line 191
    .local v4, "stateConfig":Lcom/android/server/policy/devicestate/config/DeviceState;
    invoke-virtual {v4}, Lcom/android/server/policy/devicestate/config/DeviceState;->getIdentifier()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 192
    .local v5, "state":I
    invoke-virtual {v4}, Lcom/android/server/policy/devicestate/config/DeviceState;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v6, ""

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/server/policy/devicestate/config/DeviceState;->getName()Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, "name":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 196
    .local v7, "systemProperties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 198
    .local v8, "physicalProperties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Lcom/android/server/policy/devicestate/config/DeviceState;->getProperties()Lcom/android/server/policy/devicestate/config/Properties;

    move-result-object v9

    .line 199
    .local v9, "configProperties":Lcom/android/server/policy/devicestate/config/Properties;
    if-eqz v9, :cond_1

    .line 200
    invoke-virtual {v9}, Lcom/android/server/policy/devicestate/config/Properties;->getProperty()Ljava/util/List;

    move-result-object v10

    .line 201
    .local v10, "configPropertyStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 202
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 203
    .local v12, "configPropertyString":Ljava/lang/String;
    invoke-static {v12, v7, v8}, Lcom/android/server/policy/DeviceStateProviderImpl;->addPropertyByString(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 201
    .end local v12    # "configPropertyString":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 209
    .end local v10    # "configPropertyStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i":I
    :cond_1
    nop

    .line 211
    invoke-virtual {v4}, Lcom/android/server/policy/devicestate/config/DeviceState;->getFlags()Lcom/android/server/policy/devicestate/config/Flags;

    move-result-object v10

    .line 212
    .local v10, "configFlags":Lcom/android/server/policy/devicestate/config/Flags;
    if-eqz v10, :cond_2

    .line 213
    invoke-virtual {v10}, Lcom/android/server/policy/devicestate/config/Flags;->getFlag()Ljava/util/List;

    move-result-object v11

    .line 214
    .local v11, "configFlagStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_2

    .line 215
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 216
    .local v13, "configFlagString":Ljava/lang/String;
    invoke-static {v13, v7}, Lcom/android/server/policy/DeviceStateProviderImpl;->addFlagByString(Ljava/lang/String;Ljava/util/Set;)V

    .line 214
    .end local v13    # "configFlagString":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 221
    .end local v10    # "configFlags":Lcom/android/server/policy/devicestate/config/Flags;
    .end local v11    # "configFlagStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "i":I
    :cond_2
    new-instance v10, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    invoke-direct {v10, v5, v6}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;-><init>(ILjava/lang/String;)V

    .line 223
    invoke-virtual {v10, v7}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->setSystemProperties(Ljava/util/Set;)Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    move-result-object v10

    .line 224
    invoke-virtual {v10, v8}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->setPhysicalProperties(Ljava/util/Set;)Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    move-result-object v10

    .line 225
    invoke-virtual {v10}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->build()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v10

    .line 226
    .local v10, "deviceStateConfiguration":Landroid/hardware/devicestate/DeviceState$Configuration;
    new-instance v11, Landroid/hardware/devicestate/DeviceState;

    invoke-direct {v11, v10}, Landroid/hardware/devicestate/DeviceState;-><init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {v4}, Lcom/android/server/policy/devicestate/config/DeviceState;->getConditions()Lcom/android/server/policy/devicestate/config/Conditions;

    move-result-object v11

    .line 229
    .local v11, "condition":Lcom/android/server/policy/devicestate/config/Conditions;
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v4    # "stateConfig":Lcom/android/server/policy/devicestate/config/DeviceState;
    .end local v5    # "state":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "systemProperties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v8    # "physicalProperties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v9    # "configProperties":Lcom/android/server/policy/devicestate/config/Properties;
    .end local v10    # "deviceStateConfiguration":Landroid/hardware/devicestate/DeviceState$Configuration;
    .end local v11    # "condition":Lcom/android/server/policy/devicestate/config/Conditions;
    goto/16 :goto_0

    .line 234
    .end local v2    # "config":Lcom/android/server/policy/devicestate/config/DeviceStateConfig;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 235
    sget-object v2, Lcom/android/server/policy/DeviceStateProviderImpl;->DEFAULT_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_4
    new-instance v2, Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method private dumpSensorValues()V
    .locals 5

    .line 836
    const-string v0, "Sensor values:"

    const-string v1, "DeviceStateProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 838
    .local v2, "sensor":Landroid/hardware/Sensor;
    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorEvent;

    .line 839
    .local v3, "sensorEvent":Landroid/hardware/SensorEvent;
    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/DeviceStateProviderImpl;->toSensorValueString(Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    .end local v3    # "sensorEvent":Landroid/hardware/SensorEvent;
    goto :goto_0

    .line 841
    :cond_0
    return-void
.end method

.method private findSensor(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 521
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 522
    .local v1, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v2, 0x0

    .local v2, "sensorIndex":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 523
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 524
    .local v3, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v4

    .line 525
    .local v4, "sensorType":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    .line 527
    .local v5, "sensorName":Ljava/lang/String;
    nop

    nop

    if-eqz v4, :cond_1

    if-nez v5, :cond_0

    .line 528
    goto :goto_1

    .line 531
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 532
    return-object v3

    .line 522
    .end local v3    # "sensor":Landroid/hardware/Sensor;
    .end local v4    # "sensorType":Ljava/lang/String;
    .end local v5    # "sensorName":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 535
    .end local v2    # "sensorIndex":I
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getConfigurationFile()Ljava/io/File;
    .locals 4

    .line 819
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system/devicestate/"

    const-string v2, "device_state_configuration.xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 821
    .local v0, "configFileFromDataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    return-object v0

    .line 825
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    const-string v3, "etc/devicestate/"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 827
    .local v1, "configFileFromVendorDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 828
    return-object v1

    .line 831
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static hasPowerSaveSensitiveState(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;)Z"
        }
    .end annotation

    .line 935
    .local p0, "deviceStates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/devicestate/DeviceState;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 936
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceState;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    const/4 v1, 0x1

    return v1

    .line 935
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 941
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method

.method private static hasThermalSensitiveState(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;)Z"
        }
    .end annotation

    .line 925
    .local p0, "deviceStates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/devicestate/DeviceState;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 926
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceState;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 928
    const/4 v1, 0x1

    return v1

    .line 925
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 931
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method

.method private static isThermalStatusCriticalOrAbove(I)Z
    .locals 1
    .param p0, "thermalStatus"    # I

    .line 914
    packed-switch p0, :pswitch_data_0

    .line 920
    const/4 v0, 0x0

    return v0

    .line 918
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$static$0()Z
    .locals 1

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$static$1()Z
    .locals 1

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method private notifySupportedStatesChanged(I)V
    .locals 8
    .param p1, "reason"    # I

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .local v0, "supportedStates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/devicestate/DeviceState;>;"
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 555
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    if-nez v2, :cond_0

    .line 556
    monitor-exit v1

    return-void

    .line 571
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 558
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    .line 559
    .local v2, "listener":Lcom/android/server/devicestate/DeviceStateProvider$Listener;
    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 560
    .local v6, "deviceState":Landroid/hardware/devicestate/DeviceState;
    iget v7, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    invoke-static {v7}, Lcom/android/server/policy/DeviceStateProviderImpl;->isThermalStatusCriticalOrAbove(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 563
    goto :goto_1

    .line 565
    :cond_1
    iget-boolean v7, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 567
    goto :goto_1

    .line 569
    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    .end local v6    # "deviceState":Landroid/hardware/devicestate/DeviceState;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 571
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    nop

    .line 574
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/devicestate/DeviceState;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/devicestate/DeviceState;

    .line 573
    invoke-interface {v2, v1, p1}, Lcom/android/server/devicestate/DeviceStateProvider$Listener;->onSupportedDeviceStatesChanged([Landroid/hardware/devicestate/DeviceState;I)V

    .line 576
    return-void

    .line 571
    .end local v2    # "listener":Lcom/android/server/devicestate/DeviceStateProvider$Listener;
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static parseConfig(Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/devicestate/config/DeviceStateConfig;
    .locals 4
    .param p0, "readableConfig"    # Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;

    .line 855
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;->openRead()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    .local v0, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 857
    .local v1, "bin":Ljava/io/InputStream;
    :try_start_2
    invoke-static {v1}, Lcom/android/server/policy/devicestate/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/policy/devicestate/config/DeviceStateConfig;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 858
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "bin":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 857
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "bin":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v2

    .line 855
    .end local v1    # "bin":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    goto :goto_2

    .restart local v1    # "bin":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p0    # "readableConfig":Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;
    :goto_1
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v1    # "bin":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "readableConfig":Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;
    :goto_2
    if-eqz v0, :cond_1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    nop

    .end local p0    # "readableConfig":Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0

    .line 858
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "readableConfig":Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;
    :goto_4
    nop

    .line 859
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceStateProviderImpl"

    const-string v2, "Encountered an error while reading device state config"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private setStateConditions(Ljava/util/List;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/policy/devicestate/config/Conditions;",
            ">;)V"
        }
    .end annotation

    .line 420
    .local p1, "deviceStates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/devicestate/DeviceState;>;"
    .local p2, "stateConditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/policy/devicestate/config/Conditions;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 423
    .local v2, "shouldListenToLidSwitch":Z
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 425
    .local v3, "sensorsToListenTo":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/Sensor;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 426
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v5}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v5

    .line 431
    .local v5, "state":I
    move-object/from16 v7, p2

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/policy/devicestate/config/Conditions;

    .line 432
    .local v8, "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    if-nez v8, :cond_1

    .line 435
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/devicestate/DeviceState;

    const/16 v9, 0xa

    invoke-virtual {v6, v9}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 436
    iget-object v6, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    sget-object v9, Lcom/android/server/policy/DeviceStateProviderImpl;->FALSE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    invoke-virtual {v6, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v16, v2

    move/from16 v17, v4

    goto/16 :goto_4

    .line 438
    :cond_0
    iget-object v6, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    sget-object v9, Lcom/android/server/policy/DeviceStateProviderImpl;->TRUE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    invoke-virtual {v6, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    move/from16 v16, v2

    move/from16 v17, v4

    goto/16 :goto_4

    .line 445
    :cond_1
    const/4 v9, 0x1

    .line 447
    .local v9, "allRequiredComponentsFound":Z
    const/4 v10, 0x0

    .line 449
    .local v10, "lidSwitchRequired":Z
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 451
    .local v11, "sensorsRequired":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/Sensor;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v12, "suppliers":Ljava/util/List;, "Ljava/util/List<Ljava/util/function/BooleanSupplier;>;"
    invoke-virtual {v8}, Lcom/android/server/policy/devicestate/config/Conditions;->getLidSwitch()Lcom/android/server/policy/devicestate/config/LidSwitchCondition;

    move-result-object v13

    .line 454
    .local v13, "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    if-eqz v13, :cond_2

    .line 455
    new-instance v14, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;

    invoke-virtual {v13}, Lcom/android/server/policy/devicestate/config/LidSwitchCondition;->getOpen()Z

    move-result v15

    invoke-direct {v14, v0, v15}, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;-><init>(Lcom/android/server/policy/DeviceStateProviderImpl;Z)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    const/4 v10, 0x1

    .line 462
    :cond_2
    invoke-virtual {v8}, Lcom/android/server/policy/devicestate/config/Conditions;->getSensor()Ljava/util/List;

    move-result-object v14

    .line 463
    .local v14, "sensorConditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/policy/devicestate/config/SensorCondition;>;"
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    if-ge v15, v6, :cond_4

    .line 464
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/devicestate/config/SensorCondition;

    .line 465
    .local v6, "sensorCondition":Lcom/android/server/policy/devicestate/config/SensorCondition;
    invoke-virtual {v6}, Lcom/android/server/policy/devicestate/config/SensorCondition;->getType()Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "expectedSensorType":Ljava/lang/String;
    move/from16 v16, v2

    .end local v2    # "shouldListenToLidSwitch":Z
    .local v16, "shouldListenToLidSwitch":Z
    invoke-virtual {v6}, Lcom/android/server/policy/devicestate/config/SensorCondition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "expectedSensorName":Ljava/lang/String;
    move/from16 v17, v4

    .end local v4    # "i":I
    .local v17, "i":I
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/DeviceStateProviderImpl;->findSensor(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v4

    .line 469
    .local v4, "foundSensor":Landroid/hardware/Sensor;
    if-nez v4, :cond_3

    .line 470
    move-object/from16 v18, v6

    .end local v6    # "sensorCondition":Lcom/android/server/policy/devicestate/config/SensorCondition;
    .local v18, "sensorCondition":Lcom/android/server/policy/devicestate/config/SensorCondition;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find Sensor with type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DeviceStateProviderImpl"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v9, 0x0

    .line 473
    goto :goto_2

    .line 481
    .end local v18    # "sensorCondition":Lcom/android/server/policy/devicestate/config/SensorCondition;
    .restart local v6    # "sensorCondition":Lcom/android/server/policy/devicestate/config/SensorCondition;
    :cond_3
    move-object/from16 v18, v6

    .end local v6    # "sensorCondition":Lcom/android/server/policy/devicestate/config/SensorCondition;
    .restart local v18    # "sensorCondition":Lcom/android/server/policy/devicestate/config/SensorCondition;
    new-instance v6, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/policy/devicestate/config/SensorCondition;->getValue()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v0, v4, v7}, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;-><init>(Lcom/android/server/policy/DeviceStateProviderImpl;Landroid/hardware/Sensor;Ljava/util/List;)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-virtual {v11, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 463
    .end local v1    # "expectedSensorType":Ljava/lang/String;
    .end local v2    # "expectedSensorName":Ljava/lang/String;
    .end local v4    # "foundSensor":Landroid/hardware/Sensor;
    .end local v18    # "sensorCondition":Lcom/android/server/policy/devicestate/config/SensorCondition;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v2, v16

    move/from16 v4, v17

    goto :goto_1

    .end local v16    # "shouldListenToLidSwitch":Z
    .end local v17    # "i":I
    .local v2, "shouldListenToLidSwitch":Z
    .local v4, "i":I
    :cond_4
    move/from16 v16, v2

    move/from16 v17, v4

    .line 485
    .end local v2    # "shouldListenToLidSwitch":Z
    .end local v4    # "i":I
    .end local v15    # "j":I
    .restart local v16    # "shouldListenToLidSwitch":Z
    .restart local v17    # "i":I
    :goto_2
    if-eqz v9, :cond_7

    .line 486
    or-int v1, v16, v10

    .line 487
    .end local v16    # "shouldListenToLidSwitch":Z
    .local v1, "shouldListenToLidSwitch":Z
    invoke-virtual {v3, v11}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 489
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_5

    .line 490
    iget-object v2, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;

    invoke-direct {v4, v12}, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 491
    :cond_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 493
    iget-object v2, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/BooleanSupplier;

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 496
    :cond_6
    iget-object v2, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    sget-object v4, Lcom/android/server/policy/DeviceStateProviderImpl;->TRUE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 425
    .end local v5    # "state":I
    .end local v8    # "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    .end local v9    # "allRequiredComponentsFound":Z
    .end local v10    # "lidSwitchRequired":Z
    .end local v11    # "sensorsRequired":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/Sensor;>;"
    .end local v12    # "suppliers":Ljava/util/List;, "Ljava/util/List<Ljava/util/function/BooleanSupplier;>;"
    .end local v13    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    .end local v14    # "sensorConditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/policy/devicestate/config/SensorCondition;>;"
    :goto_3
    move v2, v1

    goto :goto_5

    .line 501
    .end local v1    # "shouldListenToLidSwitch":Z
    .restart local v5    # "state":I
    .restart local v8    # "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    .restart local v9    # "allRequiredComponentsFound":Z
    .restart local v10    # "lidSwitchRequired":Z
    .restart local v11    # "sensorsRequired":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/Sensor;>;"
    .restart local v12    # "suppliers":Ljava/util/List;, "Ljava/util/List<Ljava/util/function/BooleanSupplier;>;"
    .restart local v13    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    .restart local v14    # "sensorConditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/policy/devicestate/config/SensorCondition;>;"
    .restart local v16    # "shouldListenToLidSwitch":Z
    :cond_7
    iget-object v1, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/server/policy/DeviceStateProviderImpl;->FALSE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 425
    .end local v5    # "state":I
    .end local v8    # "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    .end local v9    # "allRequiredComponentsFound":Z
    .end local v10    # "lidSwitchRequired":Z
    .end local v11    # "sensorsRequired":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/Sensor;>;"
    .end local v12    # "suppliers":Ljava/util/List;, "Ljava/util/List<Ljava/util/function/BooleanSupplier;>;"
    .end local v13    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    .end local v14    # "sensorConditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/policy/devicestate/config/SensorCondition;>;"
    .end local v16    # "shouldListenToLidSwitch":Z
    .end local v17    # "i":I
    .restart local v2    # "shouldListenToLidSwitch":Z
    .restart local v4    # "i":I
    :goto_4
    move/from16 v2, v16

    .end local v4    # "i":I
    .restart local v17    # "i":I
    :goto_5
    add-int/lit8 v4, v17, 0x1

    move-object/from16 v1, p1

    .end local v17    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_0

    :cond_8
    move/from16 v16, v2

    move/from16 v17, v4

    .line 505
    .end local v2    # "shouldListenToLidSwitch":Z
    .end local v4    # "i":I
    .restart local v16    # "shouldListenToLidSwitch":Z
    if-eqz v16, :cond_9

    .line 506
    const-class v1, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerInternal;

    .line 508
    .local v1, "inputManager":Lcom/android/server/input/InputManagerInternal;
    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerInternal;->registerLidSwitchCallback(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V

    .line 511
    .end local v1    # "inputManager":Lcom/android/server/input/InputManagerInternal;
    :cond_9
    iget-object v1, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 512
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 513
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 514
    .local v4, "sensor":Landroid/hardware/Sensor;
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 512
    .end local v4    # "sensor":Landroid/hardware/Sensor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    nop

    .line 516
    .end local v2    # "i":I
    return-void
.end method

.method private toSensorValueString(Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Ljava/lang/String;
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "event"    # Landroid/hardware/SensorEvent;

    .line 844
    const-string/jumbo v0, "null"

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, "sensorString":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p2, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, "eventValues":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 657
    const-string v0, "DeviceStateProviderImpl"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastReportedState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPowerSaveModeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mThermalStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsLidOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mIsLidOpen:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    const-string v1, "  Sensor values:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 667
    .local v2, "sensor":Landroid/hardware/Sensor;
    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorEvent;

    .line 668
    .local v3, "sensorEvent":Landroid/hardware/SensorEvent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/DeviceStateProviderImpl;->toSensorValueString(Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    .end local v3    # "sensorEvent":Landroid/hardware/SensorEvent;
    goto :goto_0

    .line 670
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    .line 671
    return-void

    .line 670
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyDeviceStateChangedIfNeeded()V
    .locals 6

    .line 580
    const/4 v0, -0x1

    .line 581
    .local v0, "stateToReport":I
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 582
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    if-nez v2, :cond_0

    .line 583
    monitor-exit v1

    return-void

    .line 624
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 586
    :cond_0
    const/4 v2, -0x1

    .line 587
    .local v2, "newState":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 588
    iget-object v4, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    .local v4, "state":I
    :try_start_1
    iget-object v5, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/function/BooleanSupplier;

    invoke-interface {v5}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    .local v5, "conditionSatisfied":Z
    nop

    .line 607
    if-eqz v5, :cond_1

    .line 611
    move v2, v4

    .line 612
    goto :goto_1

    .line 596
    .end local v5    # "conditionSatisfied":Z
    :catch_0
    move-exception v5

    nop

    .line 604
    .local v5, "e":Ljava/lang/IllegalStateException;
    nop

    .line 587
    .end local v4    # "state":I
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 615
    .end local v3    # "i":I
    :cond_2
    :goto_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 616
    :try_start_2
    const-string v4, "DeviceStateProviderImpl"

    const-string v5, "No declared device states match any of the required conditions."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-direct {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->dumpSensorValues()V

    .line 620
    :cond_3
    if-eq v2, v3, :cond_4

    iget v4, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    if-eq v2, v4, :cond_4

    .line 621
    iput v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    .line 622
    move v0, v2

    .line 624
    .end local v2    # "newState":I
    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 626
    if-eq v0, v3, :cond_5

    .line 627
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    invoke-interface {v1, v0}, Lcom/android/server/devicestate/DeviceStateProvider$Listener;->onStateChanged(I)V

    .line 629
    :cond_5
    return-void

    .line 624
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 2
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .line 633
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mIsLidOpen:Ljava/lang/Boolean;

    .line 635
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    .line 640
    return-void

    .line 635
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 653
    return-void
.end method

.method onPowerSaveModeChanged(Z)V
    .locals 2
    .param p1, "isPowerSaveModeEnabled"    # Z

    .line 881
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 882
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    if-eq v1, p1, :cond_1

    .line 883
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    .line 884
    nop

    .line 885
    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    .line 886
    :cond_0
    const/4 v1, 0x5

    .line 884
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifySupportedStatesChanged(I)V

    goto :goto_1

    .line 888
    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    .line 889
    return-void

    .line 888
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 644
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 645
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    .line 648
    return-void

    .line 646
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onThermalStatusChanged(I)V
    .locals 6
    .param p1, "thermalStatus"    # I

    .line 894
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 895
    :try_start_0
    iget v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    .line 896
    .local v1, "previousThermalStatus":I
    iput p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    .line 897
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    invoke-static {p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->isThermalStatusCriticalOrAbove(I)Z

    move-result v0

    .line 900
    .local v0, "isThermalStatusCriticalOrAbove":Z
    nop

    .line 901
    invoke-static {v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->isThermalStatusCriticalOrAbove(I)Z

    move-result v2

    .line 902
    .local v2, "isPreviousThermalStatusCriticalOrAbove":Z
    if-eq v0, v2, :cond_1

    .line 903
    const-string v3, "DeviceStateProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating supported device states due to thermal status change. isThermalStatusCriticalOrAbove: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    nop

    .line 906
    if-eqz v0, :cond_0

    .line 907
    const/4 v3, 0x3

    goto :goto_0

    .line 908
    :cond_0
    const/4 v3, 0x2

    .line 905
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifySupportedStatesChanged(I)V

    .line 910
    :cond_1
    return-void

    .line 897
    .end local v0    # "isThermalStatusCriticalOrAbove":Z
    .end local v1    # "previousThermalStatus":I
    .end local v2    # "isPreviousThermalStatusCriticalOrAbove":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setListener(Lcom/android/server/devicestate/DeviceStateProvider$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    .line 540
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    if-nez v1, :cond_0

    .line 544
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    .line 545
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifySupportedStatesChanged(I)V

    .line 547
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    .line 548
    return-void

    .line 545
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 542
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Provider already has a listener set."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/policy/DeviceStateProviderImpl;
    .end local p1    # "listener":Lcom/android/server/devicestate/DeviceStateProvider$Listener;
    throw v1

    .line 545
    .restart local p0    # "this":Lcom/android/server/policy/DeviceStateProviderImpl;
    .restart local p1    # "listener":Lcom/android/server/devicestate/DeviceStateProvider$Listener;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
