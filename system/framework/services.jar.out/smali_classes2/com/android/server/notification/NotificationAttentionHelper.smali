.class public final Lcom/android/server/notification/NotificationAttentionHelper;
.super Ljava/lang/Object;
.source "NotificationAttentionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;,
        Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;,
        Lcom/android/server/notification/NotificationAttentionHelper$StrategyPerApp;,
        Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;,
        Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;,
        Lcom/android/server/notification/NotificationAttentionHelper$Signals;,
        Lcom/android/server/notification/NotificationAttentionHelper$MuteReason;
    }
.end annotation


# static fields
.field private static final BUZZ_BEEP_BLINK_WAKELOCK:Ljava/lang/String; = "buzzBeepBlinkWakeLock"

.field static final DEBUG:Z

.field static final DEBUG_INTERRUPTIVENESS:Z

.field private static final DEFAULT_NOTIFICATION_COOLDOWN_ALL:I = 0x1

.field private static final DEFAULT_NOTIFICATION_COOLDOWN_ENABLED:I = 0x1

.field private static final DEFAULT_NOTIFICATION_COOLDOWN_ENABLED_FOR_WORK:I = 0x1

.field private static final DEFAULT_NOTIFICATION_COOLDOWN_VIBRATE_UNLOCKED:I = 0x0

.field private static final DEFAULT_VOLUME:F = 1.0f

.field private static final HOLD_BUZZ_BEEP_BLINK_WAKELOCK_DURATION:J = 0xbb8L

.field static final MUTE_REASON_COOLDOWN:I = 0x8000

.field static final MUTE_REASON_DND:I = 0x200

.field static final MUTE_REASON_FLAG_SILENT:I = 0x800

.field static final MUTE_REASON_GROUP_ALERT:I = 0x400

.field static final MUTE_REASON_LISTENER_HINT:I = 0x100

.field static final MUTE_REASON_NOT_AUDIBLE:I = 0x20

.field static final MUTE_REASON_NOT_MUTED:I = 0x0

.field static final MUTE_REASON_OTHER_INSISTENT_PLAYING:I = 0x2000

.field static final MUTE_REASON_POST_SILENTLY:I = 0x80

.field static final MUTE_REASON_RATE_LIMIT:I = 0x1000

.field static final MUTE_REASON_SILENT_UPDATE:I = 0x40

.field static final MUTE_REASON_SUPPRESSED_BUBBLE:I = 0x4000

.field static final NOTIFICATION_AVALANCHE_TRIGGER_EXTRAS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field static final NOTIFICATION_AVALANCHE_TRIGGER_INTENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "NotifAttentionHelper"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAttentionLight:Lcom/android/server/lights/LogicalLight;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBuzzBeepBlinkWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mCallNotificationToken:Landroid/os/Binder;

.field private mCallState:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentWorkProfileId:I

.field private mDisableNotificationEffects:Z

.field private final mEnableNotificationAccessibilityEvents:Z

.field private final mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

.field mHasLight:Z

.field private final mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

.field private final mInCallNotificationUri:Landroid/net/Uri;

.field private final mInCallNotificationVolume:F

.field private mInCallStateOffHook:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAutomotive:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mNMP:Lcom/android/server/notification/NotificationManagerPrivate;

.field private mNotificationCooldownApplyToAll:Z

.field private mNotificationCooldownEnabled:Z

.field private mNotificationCooldownForWorkEnabled:Z

.field private mNotificationCooldownVibrateUnlocked:Z

.field private mNotificationEffectsEnabledForAutomotive:Z

.field private mNotificationLight:Lcom/android/server/lights/LogicalLight;

.field private mNotificationPulseEnabled:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenOn:Z

.field private final mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

.field private mSoundNotificationKey:Ljava/lang/String;

.field private final mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

.field private mSystemReady:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUm:Landroid/os/UserManager;

.field private final mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private final mUseAttentionLight:Z

.field private mUserPresent:Z

.field private mVibrateNotificationKey:Ljava/lang/String;

.field private mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

.field public mVibratorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public static synthetic $r8$lambda$5Nu20XY6rJFYF_iVI639OcBJ3oY(Lcom/android/server/notification/NotificationAttentionHelper;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationAttentionHelper;->lambda$playVibration$2(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Cy9buvrT-4h45p_F-2dQOykc8I(Lcom/android/server/notification/NotificationAttentionHelper;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->lambda$createPolitenessStrategy$0(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/media/AudioManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallNotificationToken(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/os/Binder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallNotificationToken:Landroid/os/Binder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallState(Lcom/android/server/notification/NotificationAttentionHelper;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentWorkProfileId(Lcom/android/server/notification/NotificationAttentionHelper;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInCallNotificationAudioAttributes(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/media/AudioAttributes;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInCallNotificationUri(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/net/Uri;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInCallNotificationVolume(Lcom/android/server/notification/NotificationAttentionHelper;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationVolume:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/notification/NotificationAttentionHelper;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationCooldownApplyToAll(Lcom/android/server/notification/NotificationAttentionHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownApplyToAll:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationLight(Lcom/android/server/notification/NotificationAttentionHelper;)Lcom/android/server/lights/LogicalLight;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationPulseEnabled(Lcom/android/server/notification/NotificationAttentionHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStrategy(Lcom/android/server/notification/NotificationAttentionHelper;)Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCallNotificationToken(Lcom/android/server/notification/NotificationAttentionHelper;Landroid/os/Binder;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallNotificationToken:Landroid/os/Binder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCallState(Lcom/android/server/notification/NotificationAttentionHelper;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInCallStateOffHook(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNotificationCooldownApplyToAll(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownApplyToAll:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNotificationCooldownEnabled(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNotificationCooldownForWorkEnabled(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownForWorkEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNotificationPulseEnabled(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScreenOn(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUserPresent(Lcom/android/server/notification/NotificationAttentionHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUserPresent:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadUserSettings(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->loadUserSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smcallStateToString(I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->callStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 109
    const-string v0, "NotifAttentionHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    .line 110
    const-string v0, "debug.notification.interruptiveness"

    const/4 v1, 0x0

    .line 130
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 110
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG_INTERRUPTIVENESS:Z

    .line 121
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const-string v3, "android.intent.action.USER_SWITCHED"

    const-string v4, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-static {v0, v1, v3, v4}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/android/server/notification/NotificationAttentionHelper;->NOTIFICATION_AVALANCHE_TRIGGER_INTENTS:Ljava/util/Set;

    .line 129
    new-instance v1, Landroid/util/Pair;

    .line 130
    const-string/jumbo v3, "state"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    .line 131
    const-string v5, "android.intent.extra.QUIET_MODE"

    invoke-direct {v3, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    invoke-static {v0, v1, v4, v3}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationAttentionHelper;->NOTIFICATION_AVALANCHE_TRIGGER_EXTRAS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/lights/LightsManager;Landroid/view/accessibility/AccessibilityManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Lcom/android/server/notification/NotificationUsageStats;Lcom/android/server/notification/NotificationManagerPrivate;Lcom/android/server/notification/ZenModeHelper;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "lightsManager"    # Lcom/android/server/lights/LightsManager;
    .param p4, "accessibilityManager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p5, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p6, "userManager"    # Landroid/os/UserManager;
    .param p7, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;
    .param p8, "notificationManagerPrivate"    # Lcom/android/server/notification/NotificationManagerPrivate;
    .param p9, "zenModeHelper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p10, "flagResolver"    # Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    .line 199
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    .line 200
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    .line 202
    iput-boolean v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mUserPresent:Z

    .line 208
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallNotificationToken:Landroid/os/Binder;

    .line 217
    const/16 v6, -0x2710

    iput v6, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    .line 220
    iput-object v5, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mBuzzBeepBlinkWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 225
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorList:Ljava/util/ArrayList;

    .line 1800
    new-instance v5, Lcom/android/server/notification/NotificationAttentionHelper$3;

    invoke-direct {v5, v0}, Lcom/android/server/notification/NotificationAttentionHelper$3;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    iput-object v5, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 233
    iput-object v1, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 234
    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    .line 235
    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 236
    const-class v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 237
    move-object/from16 v7, p4

    iput-object v7, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 238
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mUm:Landroid/os/UserManager;

    .line 239
    move-object/from16 v9, p8

    iput-object v9, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerPrivate;

    .line 240
    move-object/from16 v10, p7

    iput-object v10, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 241
    move-object/from16 v11, p9

    iput-object v11, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 242
    move-object/from16 v12, p10

    iput-object v12, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 244
    new-instance v13, Lcom/android/server/notification/VibratorHelper;

    invoke-direct {v13, v1}, Lcom/android/server/notification/VibratorHelper;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    .line 246
    const/4 v13, 0x4

    invoke-virtual {v2, v13}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object v14

    iput-object v14, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    .line 247
    const/4 v14, 0x5

    invoke-virtual {v2, v14}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object v14

    iput-object v14, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    .line 249
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 250
    .local v14, "resources":Landroid/content/res/Resources;
    const v15, 0x111028b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    iput-boolean v15, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mUseAttentionLight:Z

    .line 251
    nop

    .line 252
    const v15, 0x11101c9

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    iput-boolean v15, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mHasLight:Z

    .line 253
    nop

    .line 254
    const v15, 0x1110185

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    iput-boolean v15, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mEnableNotificationAccessibilityEvents:Z

    .line 261
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v13, "device_provisioned"

    invoke-static {v15, v13, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 263
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    .line 266
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file://"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const v13, 0x104028d

    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationUri:Landroid/net/Uri;

    .line 268
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 269
    const/4 v13, 0x4

    invoke-virtual {v3, v13}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 270
    const/4 v13, 0x2

    invoke-virtual {v3, v13}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 271
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    .line 272
    const v3, 0x10500ee

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationVolume:F

    .line 274
    nop

    .line 275
    invoke-direct {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->createPolitenessStrategy()Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    .line 280
    new-instance v3, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    invoke-direct {v3, v0}, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    iput-object v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    .line 281
    invoke-direct {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->loadUserSettings()V

    .line 284
    iget-object v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "power"

    invoke-virtual {v3, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 285
    iget-object v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mPowerManager:Landroid/os/PowerManager;

    const-string v13, "buzzBeepBlinkWakeLock"

    invoke-virtual {v3, v4, v13}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mBuzzBeepBlinkWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 287
    return-void
.end method

.method private static callStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 1190
    packed-switch p0, :pswitch_data_0

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALL_STATE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1193
    :pswitch_0
    const-string v0, "CALL_STATE_OFFHOOK"

    return-object v0

    .line 1192
    :pswitch_1
    const-string v0, "CALL_STATE_RINGING"

    return-object v0

    .line 1191
    :pswitch_2
    const-string v0, "CALL_STATE_IDLE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private clearLightsLocked()V
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1026
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 1027
    return-void
.end method

.method private createPolitenessStrategy()Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;
    .locals 9

    .line 290
    nop

    .line 291
    new-instance v0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyPerApp;

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v2, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_COOLDOWN_T1:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 292
    invoke-interface {v1, v2}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v3, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_COOLDOWN_T2:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 293
    invoke-interface {v2, v3}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v4, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_VOLUME1:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 294
    invoke-interface {v3, v4}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v5, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_VOLUME2:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 295
    invoke-interface {v4, v5}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v6, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_COOLDOWN_COUNTER_RESET:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 296
    invoke-interface {v5, v6}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v5

    new-instance v6, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyPerApp;-><init>(IIIIILcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;)V

    move-object v7, v0

    .line 309
    .local v7, "appStrategy":Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;
    new-instance v1, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v2, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_COOLDOWN_T1:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 310
    invoke-interface {v0, v2}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v2

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v3, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_COOLDOWN_T2:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 311
    invoke-interface {v0, v3}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v3

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v4, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_VOLUME1:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 312
    invoke-interface {v0, v4}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v4

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v5, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_VOLUME2:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 313
    invoke-interface {v0, v5}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v5

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v6, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NOTIF_AVALANCHE_TIMEOUT:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 314
    invoke-interface {v0, v6}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I

    move-result v6

    iget-object v8, v7, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mExemptionProvider:Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;

    invoke-direct/range {v1 .. v8}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;-><init>(IIIIILcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;)V

    .line 309
    return-object v1
.end method

.method private disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;I)Ljava/lang/String;
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "listenerHints"    # I

    .line 1139
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    if-eqz v0, :cond_0

    .line 1140
    const-string v0, "booleanState"

    return-object v0

    .line 1143
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 1144
    const-string/jumbo v0, "listenerHints"

    return-object v0

    .line 1146
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1147
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x6

    if-eqz v0, :cond_2

    .line 1148
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 1150
    const-string/jumbo v0, "listenerNoti"

    return-object v0

    .line 1153
    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    .line 1154
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1156
    const-string/jumbo v0, "listenerCall"

    return-object v0

    .line 1160
    :cond_3
    iget v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1161
    const-string v0, "callState"

    return-object v0

    .line 1164
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private getManagedProfileId(I)I
    .locals 4
    .param p1, "parentUserId"    # I

    .line 1217
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 1218
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1219
    .local v2, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1220
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 1221
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    return v1

    .line 1223
    .end local v2    # "profile":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 1224
    :cond_1
    const/16 v1, -0x2710

    return v1
.end method

.method private getPoliteBit(Lcom/android/server/notification/NotificationRecord;)I
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 662
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 668
    const/4 v0, 0x0

    return v0

    .line 666
    :pswitch_0
    const/16 v0, 0x10

    return v0

    .line 664
    :pswitch_1
    const/16 v0, 0x8

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 673
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isPoliteNotificationFeatureEnabled(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    const/4 v0, 0x0

    return v0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0
.end method

.method private getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 847
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isPoliteNotificationFeatureEnabled(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F

    move-result v0

    return v0
.end method

.method private getVibrationIntensity(Lcom/android/server/notification/NotificationRecord;)F
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 855
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isPoliteNotificationFeatureEnabled(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->-$$Nest$mgetVibrationIntensity(Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;Lcom/android/server/notification/NotificationRecord;)F

    move-result v0

    return v0
.end method

.method private isInCall()Z
    .locals 3

    .line 1178
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1179
    return v1

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 1182
    .local v0, "audioMode":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    goto :goto_0

    .line 1186
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 1184
    :goto_0
    return v1
.end method

.method private isLoopingRingtoneNotification(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p1, "playingRecord"    # Lcom/android/server/notification/NotificationRecord;

    .line 772
    if-eqz p1, :cond_0

    .line 773
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 774
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 775
    const/4 v0, 0x1

    return v0

    .line 778
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z
    .locals 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "signals"    # Lcom/android/server/notification/NotificationAttentionHelper$Signals;

    .line 1201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1203
    .local v0, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    .local v2, "currentUser":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1206
    nop

    .line 1207
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-static {p2}, Lcom/android/server/notification/NotificationAttentionHelper$Signals;->-$$Nest$fgetisCurrentProfile(Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 1205
    .end local v2    # "currentUser":I
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1206
    throw v2
.end method

.method private isNotificationForWorkProfile(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1212
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPoliteNotificationFeatureEnabled(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 823
    nop

    .line 828
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 829
    return v1

    .line 833
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForWorkProfile(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownForWorkEnabled:Z

    if-nez v0, :cond_1

    .line 834
    return v1

    .line 839
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownApplyToAll:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 840
    return v1

    .line 843
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$createPolitenessStrategy$0(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 298
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 299
    .local v0, "category":Ljava/lang/String;
    const-string v1, "alarm"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    nop

    if-nez v1, :cond_2

    .line 300
    const-string v1, "car_emergency"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_2

    .line 301
    const-string v1, "car_warning"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 306
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 304
    const-string v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 302
    :cond_2
    :goto_1
    return v2
.end method

.method private synthetic lambda$createPolitenessStrategy$1(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 324
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 325
    .local v0, "category":Ljava/lang/String;
    const-string v1, "alarm"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    nop

    if-nez v1, :cond_2

    .line 326
    const-string v1, "car_emergency"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_2

    .line 327
    const-string v1, "car_warning"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 332
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 330
    const-string v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 328
    :cond_2
    :goto_1
    return v2
.end method

.method private synthetic lambda$playVibration$2(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V
    .locals 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "scaledEffect"    # Landroid/os/VibrationEffect;

    .line 881
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 883
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 881
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    .line 884
    .local v0, "waitMs":I
    sget-boolean v1, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    const-string v2, "NotifAttentionHelper"

    if-eqz v1, :cond_0

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delaying vibration for notification "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 885
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_0
    int-to-long v3, v0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 893
    :goto_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerPrivate;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/server/notification/NotificationManagerPrivate;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 894
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/notification/NotificationAttentionHelper;->vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V

    goto :goto_2

    .line 897
    :cond_1
    sget-boolean v1, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No vibration for notification "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": a new notification is vibrating, or effects were cleared while waiting"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 898
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 904
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No vibration for canceled notification "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 904
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_3
    :goto_2
    return-void
.end method

.method private loadUserSettings()V
    .locals 7

    .line 400
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_light_pulse"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 402
    .local v0, "pulseEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 403
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    if-eq v5, v0, :cond_1

    .line 404
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    .line 405
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    goto :goto_1

    .line 407
    :catchall_0
    move-exception v1

    goto/16 :goto_7

    :cond_1
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    nop

    .line 411
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/notification/NotificationAttentionHelper;->getManagedProfileId(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    .line 413
    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 414
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_cooldown_enabled"

    invoke-static {v4, v5, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iput-boolean v4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownEnabled:Z

    .line 417
    iget v4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_4

    .line 418
    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 419
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_cooldown_enabled"

    iget v6, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCurrentWorkProfileId:I

    .line 418
    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    iput-boolean v4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownForWorkEnabled:Z

    goto :goto_4

    .line 438
    :catch_0
    move-exception v1

    goto :goto_5

    .line 424
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownForWorkEnabled:Z

    .line 426
    :goto_4
    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 427
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_cooldown_all"

    .line 426
    invoke-static {v4, v5, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_5

    move v2, v1

    :cond_5
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownApplyToAll:Z

    .line 430
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownApplyToAll:Z

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->setApplyCooldownPerPackage(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 431
    nop

    .line 440
    goto :goto_6

    .line 438
    :goto_5
    nop

    .line 439
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NotifAttentionHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read Settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6
    return-void

    .line 407
    :goto_7
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)Z
    .locals 13
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "soundUri"    # Landroid/net/Uri;

    .line 783
    nop

    .line 785
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->shouldNotificationSoundPlay(Landroid/media/AudioAttributes;)Z

    move-result v1

    .line 795
    .local v1, "shouldPlay":Z
    const/4 v2, 0x0

    const-string v3, "NotifAttentionHelper"

    if-nez v1, :cond_1

    .line 796
    sget-boolean v0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not playing sound "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " due to focus/volume"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_0
    return v2

    .line 800
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    move v8, v0

    .line 801
    .local v8, "looping":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 803
    .local v11, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v5

    .line 804
    .local v5, "player":Landroid/media/IRingtonePlayer;
    if-eqz v5, :cond_4

    .line 805
    sget-boolean v0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_3

    .line 806
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playing sound "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with attributes "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 806
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 816
    .end local v5    # "player":Landroid/media/IRingtonePlayer;
    :catchall_0
    move-exception v0

    move-object v6, p2

    goto :goto_5

    .line 813
    :catch_0
    move-exception v0

    move-object v6, p2

    goto :goto_3

    .line 809
    .restart local v5    # "player":Landroid/media/IRingtonePlayer;
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    .line 810
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F

    move-result v10
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 809
    move-object v6, p2

    .end local p2    # "soundUri":Landroid/net/Uri;
    .local v6, "soundUri":Landroid/net/Uri;
    :try_start_3
    invoke-interface/range {v5 .. v10}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;F)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 811
    nop

    .line 816
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 811
    return v4

    .line 816
    .end local v5    # "player":Landroid/media/IRingtonePlayer;
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 813
    :catch_1
    move-exception v0

    goto :goto_3

    .line 816
    .end local v6    # "soundUri":Landroid/net/Uri;
    .restart local p2    # "soundUri":Landroid/net/Uri;
    :catchall_2
    move-exception v0

    move-object v6, p2

    .end local p2    # "soundUri":Landroid/net/Uri;
    .restart local v6    # "soundUri":Landroid/net/Uri;
    goto :goto_5

    .line 813
    .end local v6    # "soundUri":Landroid/net/Uri;
    .restart local p2    # "soundUri":Landroid/net/Uri;
    :catch_2
    move-exception v0

    move-object v6, p2

    .end local p2    # "soundUri":Landroid/net/Uri;
    .restart local v6    # "soundUri":Landroid/net/Uri;
    goto :goto_3

    .line 804
    .end local v6    # "soundUri":Landroid/net/Uri;
    .restart local v5    # "player":Landroid/media/IRingtonePlayer;
    .restart local p2    # "soundUri":Landroid/net/Uri;
    :cond_4
    move-object v6, p2

    .line 816
    .end local v5    # "player":Landroid/media/IRingtonePlayer;
    .end local p2    # "soundUri":Landroid/net/Uri;
    .restart local v6    # "soundUri":Landroid/net/Uri;
    nop

    :goto_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 817
    goto :goto_4

    .line 813
    :goto_3
    nop

    .line 814
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed playSound: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 816
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 818
    :goto_4
    return v2

    .line 816
    :goto_5
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 817
    throw v0
.end method

.method private playVibration(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)Z
    .locals 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "effect"    # Landroid/os/VibrationEffect;
    .param p3, "delayVibForSound"    # Z

    .line 866
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 870
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 871
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 872
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 873
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/VibratorHelper;->cancelVibration()V

    goto :goto_0

    .line 913
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 875
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getVibrationIntensity(Lcom/android/server/notification/NotificationRecord;)F

    move-result v2

    .line 876
    .local v2, "scale":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    .line 877
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {v3, p2, v2}, Lcom/android/server/notification/VibratorHelper;->scale(Landroid/os/VibrationEffect;F)Landroid/os/VibrationEffect;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, p2

    .line 878
    .local v3, "scaledEffect":Landroid/os/VibrationEffect;
    :goto_1
    if-eqz p3, :cond_2

    .line 879
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, p1, v3}, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 907
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 909
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/notification/NotificationAttentionHelper;->vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    :goto_2
    nop

    .line 913
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 911
    const/4 v4, 0x1

    return v4

    .line 913
    .end local v2    # "scale":F
    .end local v3    # "scaledEffect":Landroid/os/VibrationEffect;
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 914
    throw v2
.end method

.method private registerBroadcastListeners()V
    .locals 7

    .line 356
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/android/server/notification/NotificationAttentionHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationAttentionHelper$1;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 367
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v0

    .line 368
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    nop

    .line 377
    sget-object v0, Lcom/android/server/notification/NotificationAttentionHelper;->NOTIFICATION_AVALANCHE_TRIGGER_INTENTS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 378
    .local v1, "avalancheIntent":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    .end local v1    # "avalancheIntent":Ljava/lang/String;
    goto :goto_0

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 383
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->-$$Nest$sfgetNOTIFICATION_LIGHT_PULSE_URI()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    const/4 v3, 0x0

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 386
    nop

    .line 387
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->-$$Nest$sfgetNOTIFICATION_COOLDOWN_ENABLED_URI()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 390
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->-$$Nest$sfgetNOTIFICATION_COOLDOWN_ALL_URI()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 393
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->-$$Nest$sfgetNOTIFICATION_COOLDOWN_VIBRATE_UNLOCKED_URI()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 397
    return-void
.end method

.method private vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "effect"    # Landroid/os/VibrationEffect;
    .param p3, "delayed"    # Z

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string v1, "(Delayed)"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "reason":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isLoopingRingtoneNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 931
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, p2, v2, v0}, Lcom/android/server/notification/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V

    goto :goto_1

    .line 932
    :cond_1
    sget-object v1, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_NM_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v1}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/INtNotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-interface {v1, p1, v0, p2, v2}, Lcom/android/server/notification/INtNotificationManagerService;->vibrate(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;Landroid/os/VibrationEffect;Lcom/android/server/notification/VibratorHelper;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 933
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, p2, v2, v0}, Lcom/android/server/notification/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V

    .line 936
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)I
    .locals 29
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "signals"    # Lcom/android/server/notification/NotificationAttentionHelper$Signals;

    .line 451
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mIsAutomotive:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationEffectsEnabledForAutomotive:Z

    if-nez v3, :cond_0

    .line 452
    return v4

    .line 456
    :cond_0
    sget-object v3, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_NM_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v3}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/INtNotificationManagerService;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result v5

    iget-boolean v6, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    invoke-interface {v3, v1, v5, v6}, Lcom/android/server/notification/INtNotificationManagerService;->playGlyphEffect(Lcom/android/server/notification/NotificationRecord;ZZ)V

    .line 458
    const/4 v3, 0x0

    .line 459
    .local v3, "buzz":Z
    const/4 v5, 0x0

    .line 460
    .local v5, "beep":Z
    const/4 v6, 0x0

    .line 461
    .local v6, "blink":Z
    const/4 v7, 0x0

    .line 463
    .local v7, "shouldMuteReason":I
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 465
    .local v8, "key":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    const-string v10, "NotifAttentionHelper"

    if-eqz v9, :cond_1

    .line 466
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "buzzBeepBlinkLocked "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_1
    iget-boolean v9, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mIsAutomotive:Z

    const/4 v11, 0x3

    const/4 v14, 0x1

    if-eqz v9, :cond_3

    .line 472
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v9

    if-le v9, v11, :cond_2

    move v9, v14

    goto :goto_0

    :cond_2
    move v9, v4

    goto :goto_0

    .line 473
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v9

    if-lt v9, v11, :cond_4

    move v9, v14

    goto :goto_0

    :cond_4
    move v9, v4

    :goto_0
    move v15, v9

    .line 475
    .local v15, "aboveThreshold":Z
    if-eqz v8, :cond_5

    iget-object v9, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v14

    goto :goto_1

    :cond_5
    move v9, v4

    :goto_1
    move/from16 v16, v9

    .line 476
    .local v16, "wasBeep":Z
    if-eqz v8, :cond_6

    iget-object v9, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v14

    goto :goto_2

    :cond_6
    move v9, v4

    :goto_2
    move/from16 v17, v9

    .line 478
    .local v17, "wasBuzz":Z
    const/4 v9, 0x0

    .line 479
    .local v9, "hasValidVibrate":Z
    const/4 v12, 0x0

    .line 480
    .local v12, "hasValidSound":Z
    const/4 v13, 0x0

    .line 483
    .local v13, "sentAccessibilityEvent":Z
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 484
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v18

    and-int/lit8 v18, v18, 0x20

    if-eqz v18, :cond_7

    move/from16 v18, v14

    goto :goto_3

    :cond_7
    move/from16 v18, v4

    :goto_3
    nop

    .line 485
    .local v18, "suppressedByDnd":Z
    iget-boolean v4, v1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-nez v4, :cond_8

    .line 486
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v4

    if-le v4, v14, :cond_8

    if-nez v18, :cond_8

    .line 488
    invoke-direct/range {p0 .. p2}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 489
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V

    .line 490
    const/4 v13, 0x1

    .line 493
    :cond_8
    if-eqz v15, :cond_1e

    invoke-direct/range {p0 .. p2}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 494
    const/16 v19, 0x4

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_1d

    .line 501
    sget-object v4, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_NM_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v4}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/INtNotificationManagerService;

    invoke-interface {v4, v1}, Lcom/android/server/notification/INtNotificationManagerService;->getSound(Lcom/android/server/notification/NotificationRecord;)Landroid/net/Uri;

    move-result-object v4

    .line 503
    .local v4, "soundUri":Landroid/net/Uri;
    if-eqz v4, :cond_9

    sget-object v11, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v11, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    move v11, v14

    goto :goto_4

    :cond_9
    const/4 v11, 0x0

    :goto_4
    move v12, v11

    .line 504
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getVibration()Landroid/os/VibrationEffect;

    move-result-object v11

    .line 506
    .local v11, "vibration":Landroid/os/VibrationEffect;
    if-nez v11, :cond_b

    if-eqz v12, :cond_b

    iget-object v14, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 508
    invoke-virtual {v14}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v14

    move/from16 v21, v3

    const/4 v3, 0x1

    .end local v3    # "buzz":Z
    .local v21, "buzz":Z
    nop

    if-ne v14, v3, :cond_c

    iget-object v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 511
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v14

    invoke-static {v14}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v14

    .line 510
    invoke-virtual {v3, v14}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-nez v3, :cond_c

    .line 512
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    .line 513
    .local v3, "insistent":Z
    :goto_5
    iget-object v14, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {v14, v3}, Lcom/android/server/notification/VibratorHelper;->createFallbackVibration(Z)Landroid/os/VibrationEffect;

    move-result-object v11

    goto :goto_6

    .line 506
    .end local v21    # "buzz":Z
    .local v3, "buzz":Z
    :cond_b
    move/from16 v21, v3

    .line 515
    .end local v3    # "buzz":Z
    .restart local v21    # "buzz":Z
    :cond_c
    :goto_6
    if-eqz v11, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    move v9, v3

    .line 517
    if-eqz v9, :cond_e

    iget-boolean v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationCooldownVibrateUnlocked:Z

    if-eqz v3, :cond_e

    iget-boolean v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mUserPresent:Z

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    .line 519
    .local v3, "vibrateOnly":Z
    :goto_8
    if-nez v12, :cond_f

    if-eqz v9, :cond_10

    :cond_f
    goto :goto_9

    :cond_10
    const/4 v14, 0x0

    goto :goto_a

    :goto_9
    const/4 v14, 0x1

    .line 520
    .local v14, "hasAudibleAlert":Z
    :goto_a
    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/notification/NotificationAttentionHelper;->shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;Z)I

    move-result v7

    .line 521
    if-nez v7, :cond_1b

    .line 522
    if-nez v13, :cond_11

    .line 523
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V

    .line 524
    const/4 v13, 0x1

    .line 526
    :cond_11
    sget-boolean v22, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz v22, :cond_12

    move/from16 v22, v5

    .end local v5    # "beep":Z
    .local v22, "beep":Z
    const-string v5, "Interrupting!"

    invoke-static {v10, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .end local v22    # "beep":Z
    .restart local v5    # "beep":Z
    :cond_12
    move/from16 v22, v5

    .line 527
    .end local v5    # "beep":Z
    .restart local v22    # "beep":Z
    :goto_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v5

    .line 528
    .local v5, "isInsistentUpdate":Z
    if-eqz v12, :cond_15

    if-nez v3, :cond_15

    .line 529
    if-eqz v5, :cond_13

    .line 531
    const/16 v22, 0x1

    move-object/from16 v23, v4

    move/from16 v4, v22

    goto :goto_d

    .line 533
    :cond_13
    invoke-direct {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result v23

    if-eqz v23, :cond_14

    .line 534
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->playInCallNotification()V

    .line 535
    const/16 v22, 0x1

    goto :goto_c

    .line 537
    :cond_14
    invoke-direct {v0, v1, v4}, Lcom/android/server/notification/NotificationAttentionHelper;->playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)Z

    move-result v22

    .line 539
    :goto_c
    if-eqz v22, :cond_15

    .line 540
    iput-object v8, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    .line 545
    :cond_15
    move-object/from16 v23, v4

    move/from16 v4, v22

    .end local v22    # "beep":Z
    .local v4, "beep":Z
    .local v23, "soundUri":Landroid/net/Uri;
    :goto_d
    move/from16 v24, v6

    .end local v6    # "blink":Z
    .local v24, "blink":Z
    iget-object v6, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 546
    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v6

    if-nez v6, :cond_16

    const/4 v6, 0x1

    goto :goto_e

    :cond_16
    const/4 v6, 0x0

    .line 548
    .local v6, "ringerModeSilent":Z
    :goto_e
    invoke-direct {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result v22

    if-nez v22, :cond_1a

    if-eqz v9, :cond_1a

    if-nez v6, :cond_1a

    .line 549
    if-eqz v5, :cond_17

    .line 550
    const/16 v21, 0x1

    move/from16 v25, v7

    move-object/from16 v26, v11

    move/from16 v7, v21

    goto :goto_11

    .line 552
    :cond_17
    if-eqz v12, :cond_18

    if-nez v3, :cond_18

    move/from16 v25, v7

    const/4 v7, 0x1

    goto :goto_f

    :cond_18
    move/from16 v25, v7

    const/4 v7, 0x0

    .end local v7    # "shouldMuteReason":I
    .local v25, "shouldMuteReason":I
    :goto_f
    invoke-direct {v0, v1, v11, v7}, Lcom/android/server/notification/NotificationAttentionHelper;->playVibration(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)Z

    move-result v7

    .line 553
    .end local v21    # "buzz":Z
    .local v7, "buzz":Z
    if-eqz v7, :cond_19

    .line 554
    iput-object v8, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 557
    move/from16 v21, v7

    .end local v7    # "buzz":Z
    .restart local v21    # "buzz":Z
    iget-object v7, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v11

    .end local v11    # "vibration":Landroid/os/VibrationEffect;
    .local v26, "vibration":Landroid/os/VibrationEffect;
    const-string v11, " playVibration:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " key:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 553
    .end local v21    # "buzz":Z
    .end local v26    # "vibration":Landroid/os/VibrationEffect;
    .restart local v7    # "buzz":Z
    .restart local v11    # "vibration":Landroid/os/VibrationEffect;
    :cond_19
    move/from16 v21, v7

    move-object/from16 v26, v11

    .line 566
    .end local v7    # "buzz":Z
    .end local v11    # "vibration":Landroid/os/VibrationEffect;
    .restart local v21    # "buzz":Z
    .restart local v26    # "vibration":Landroid/os/VibrationEffect;
    :goto_10
    move/from16 v7, v21

    goto :goto_11

    .line 548
    .end local v25    # "shouldMuteReason":I
    .end local v26    # "vibration":Landroid/os/VibrationEffect;
    .local v7, "shouldMuteReason":I
    .restart local v11    # "vibration":Landroid/os/VibrationEffect;
    :cond_1a
    move/from16 v25, v7

    move-object/from16 v26, v11

    .end local v7    # "shouldMuteReason":I
    .end local v11    # "vibration":Landroid/os/VibrationEffect;
    .restart local v25    # "shouldMuteReason":I
    .restart local v26    # "vibration":Landroid/os/VibrationEffect;
    goto :goto_10

    .line 566
    .end local v21    # "buzz":Z
    .local v7, "buzz":Z
    :goto_11
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v13

    .end local v13    # "sentAccessibilityEvent":Z
    .local v27, "sentAccessibilityEvent":Z
    const-string v13, "buzzBeepBlinkLocked key = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", beep = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", buzz = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isInsistentUpdate = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", hasValidSound = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", vibrateOnly = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isInCall = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-direct {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", ringerModeSilent = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", hasValidVibrate = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 566
    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v11, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v13, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 576
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v21

    move/from16 v28, v3

    .end local v3    # "vibrateOnly":Z
    .local v28, "vibrateOnly":Z
    invoke-virtual/range {v21 .. v21}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 574
    move/from16 v22, v4

    const/4 v4, 0x3

    .end local v4    # "beep":Z
    .restart local v22    # "beep":Z
    invoke-virtual {v11, v13, v4, v3}, Landroid/view/accessibility/AccessibilityManager;->startFlashNotificationEvent(Landroid/content/Context;ILjava/lang/String;)Z

    .line 578
    .end local v5    # "isInsistentUpdate":Z
    .end local v6    # "ringerModeSilent":Z
    move v3, v9

    move v4, v12

    move/from16 v5, v22

    move/from16 v13, v25

    move v9, v7

    goto :goto_13

    .end local v22    # "beep":Z
    .end local v23    # "soundUri":Landroid/net/Uri;
    .end local v24    # "blink":Z
    .end local v25    # "shouldMuteReason":I
    .end local v26    # "vibration":Landroid/os/VibrationEffect;
    .end local v27    # "sentAccessibilityEvent":Z
    .end local v28    # "vibrateOnly":Z
    .restart local v3    # "vibrateOnly":Z
    .local v4, "soundUri":Landroid/net/Uri;
    .local v5, "beep":Z
    .local v6, "blink":Z
    .local v7, "shouldMuteReason":I
    .restart local v11    # "vibration":Landroid/os/VibrationEffect;
    .restart local v13    # "sentAccessibilityEvent":Z
    .restart local v21    # "buzz":Z
    :cond_1b
    move/from16 v28, v3

    move-object/from16 v23, v4

    move/from16 v22, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v26, v11

    .end local v3    # "vibrateOnly":Z
    .end local v4    # "soundUri":Landroid/net/Uri;
    .end local v5    # "beep":Z
    .end local v6    # "blink":Z
    .end local v7    # "shouldMuteReason":I
    .end local v11    # "vibration":Landroid/os/VibrationEffect;
    .restart local v22    # "beep":Z
    .restart local v23    # "soundUri":Landroid/net/Uri;
    .restart local v24    # "blink":Z
    .restart local v25    # "shouldMuteReason":I
    .restart local v26    # "vibration":Landroid/os/VibrationEffect;
    .restart local v28    # "vibrateOnly":Z
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1c

    .line 579
    const/4 v12, 0x0

    .line 580
    const/4 v9, 0x0

    move v3, v9

    move v4, v12

    move/from16 v27, v13

    move/from16 v9, v21

    move/from16 v5, v22

    move/from16 v13, v25

    goto :goto_13

    .line 578
    :cond_1c
    move v3, v9

    move v4, v12

    move/from16 v27, v13

    move/from16 v9, v21

    move/from16 v5, v22

    move/from16 v13, v25

    goto :goto_13

    .line 494
    .end local v14    # "hasAudibleAlert":Z
    .end local v21    # "buzz":Z
    .end local v22    # "beep":Z
    .end local v23    # "soundUri":Landroid/net/Uri;
    .end local v24    # "blink":Z
    .end local v25    # "shouldMuteReason":I
    .end local v26    # "vibration":Landroid/os/VibrationEffect;
    .end local v28    # "vibrateOnly":Z
    .local v3, "buzz":Z
    .restart local v5    # "beep":Z
    .restart local v6    # "blink":Z
    .restart local v7    # "shouldMuteReason":I
    :cond_1d
    move/from16 v21, v3

    move/from16 v22, v5

    move/from16 v24, v6

    .end local v3    # "buzz":Z
    .end local v5    # "beep":Z
    .end local v6    # "blink":Z
    .restart local v21    # "buzz":Z
    .restart local v22    # "beep":Z
    .restart local v24    # "blink":Z
    goto :goto_12

    .line 493
    .end local v21    # "buzz":Z
    .end local v22    # "beep":Z
    .end local v24    # "blink":Z
    .restart local v3    # "buzz":Z
    .restart local v5    # "beep":Z
    .restart local v6    # "blink":Z
    :cond_1e
    move/from16 v21, v3

    move/from16 v22, v5

    move/from16 v24, v6

    const/16 v19, 0x4

    .line 586
    .end local v3    # "buzz":Z
    .end local v5    # "beep":Z
    .end local v6    # "blink":Z
    .restart local v21    # "buzz":Z
    .restart local v22    # "beep":Z
    .restart local v24    # "blink":Z
    :goto_12
    move v3, v9

    move v4, v12

    move/from16 v27, v13

    move/from16 v9, v21

    move/from16 v5, v22

    move v13, v7

    .end local v7    # "shouldMuteReason":I
    .end local v12    # "hasValidSound":Z
    .end local v21    # "buzz":Z
    .end local v22    # "beep":Z
    .local v3, "hasValidVibrate":Z
    .local v4, "hasValidSound":Z
    .restart local v5    # "beep":Z
    .local v9, "buzz":Z
    .local v13, "shouldMuteReason":I
    .restart local v27    # "sentAccessibilityEvent":Z
    :goto_13
    if-eqz v16, :cond_1f

    if-nez v4, :cond_1f

    .line 587
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearSoundLocked()V

    .line 589
    :cond_1f
    if-eqz v17, :cond_20

    if-nez v3, :cond_20

    .line 590
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearVibrateLocked()V

    .line 595
    :cond_20
    iget-object v6, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 596
    .local v6, "wasShowLights":Z
    invoke-virtual {v0, v1, v2, v15}, Lcom/android/server/notification/NotificationAttentionHelper;->canShowLightsLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;Z)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 597
    iget-object v7, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 599
    iget-boolean v7, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mUseAttentionLight:Z

    if-eqz v7, :cond_21

    iget-object v7, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    if-eqz v7, :cond_21

    .line 600
    iget-object v7, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {v7}, Lcom/android/server/lights/LogicalLight;->pulse()V

    .line 602
    :cond_21
    const/4 v7, 0x1

    move v11, v7

    .end local v24    # "blink":Z
    .local v7, "blink":Z
    goto :goto_14

    .line 603
    .end local v7    # "blink":Z
    .restart local v24    # "blink":Z
    :cond_22
    if-eqz v6, :cond_23

    .line 604
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 606
    :cond_23
    move/from16 v11, v24

    .end local v24    # "blink":Z
    .local v11, "blink":Z
    :goto_14
    if-nez v9, :cond_24

    if-nez v5, :cond_24

    if-eqz v11, :cond_29

    .line 608
    :cond_24
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v7

    const-string v12, "INTERRUPTIVENESS: "

    if-eqz v7, :cond_25

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 609
    sget-boolean v7, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v7, :cond_29

    .line 610
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is not interruptive: summary"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 610
    invoke-static {v10, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 613
    :cond_25
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v7

    if-eqz v7, :cond_26

    .line 614
    sget-boolean v7, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v7, :cond_29

    .line 615
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is not interruptive: bubble"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 615
    invoke-static {v10, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 619
    :cond_26
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 620
    sget-boolean v7, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v7, :cond_27

    .line 621
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is interruptive: alerted"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 621
    invoke-static {v10, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_27
    nop

    .line 625
    if-nez v9, :cond_28

    if-eqz v5, :cond_29

    .line 626
    :cond_28
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->resetRankingTime()V

    .line 632
    :cond_29
    :goto_15
    if-eqz v5, :cond_2a

    const/4 v10, 0x2

    goto :goto_16

    :cond_2a
    const/4 v10, 0x0

    :goto_16
    or-int/2addr v10, v9

    if-eqz v11, :cond_2b

    goto :goto_17

    :cond_2b
    const/16 v19, 0x0

    :goto_17
    or-int v10, v10, v19

    .line 633
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getPoliteBit(Lcom/android/server/notification/NotificationRecord;)I

    move-result v12

    or-int/2addr v10, v12

    or-int v14, v10, v13

    .line 634
    .local v14, "buzzBeepBlinkLoggingCode":I
    if-lez v14, :cond_2c

    .line 635
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v10

    .line 636
    const/16 v12, 0xc7

    invoke-virtual {v10, v12}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v10

    .line 637
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v10

    .line 638
    invoke-virtual {v10, v14}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v10

    .line 635
    invoke-static {v10}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 639
    nop

    .line 640
    move/from16 v20, v12

    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result v12

    .line 639
    move v10, v5

    .end local v5    # "beep":Z
    .local v10, "beep":Z
    invoke-static/range {v8 .. v13}, Lcom/android/server/EventLogTags;->writeNotificationAlert(Ljava/lang/String;IIIII)V

    .line 643
    iget-object v5, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mBuzzBeepBlinkWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v8

    .end local v8    # "key":Ljava/lang/String;
    .local v19, "key":Ljava/lang/String;
    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_18

    .line 634
    .end local v10    # "beep":Z
    .end local v19    # "key":Ljava/lang/String;
    .restart local v5    # "beep":Z
    .restart local v8    # "key":Ljava/lang/String;
    :cond_2c
    move v10, v5

    move-object/from16 v19, v8

    const/16 v20, 0x1

    .line 647
    .end local v5    # "beep":Z
    .end local v8    # "key":Ljava/lang/String;
    .restart local v10    # "beep":Z
    .restart local v19    # "key":Ljava/lang/String;
    :goto_18
    nop

    .line 649
    if-nez v9, :cond_2d

    if-eqz v10, :cond_2e

    .line 650
    :cond_2d
    iget-object v5, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v1, v7, v8}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->setLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;J)V

    .line 653
    :cond_2e
    if-nez v9, :cond_2f

    if-eqz v10, :cond_30

    .line 654
    :cond_2f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result v5

    const/4 v12, 0x2

    if-eq v5, v12, :cond_30

    move/from16 v5, v20

    goto :goto_19

    :cond_30
    const/4 v5, 0x0

    .line 653
    :goto_19
    invoke-virtual {v1, v5}, Lcom/android/server/notification/NotificationRecord;->setAudiblyAlerted(Z)V

    .line 658
    return v14
.end method

.method canShowLightsLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;Z)Z
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "signals"    # Lcom/android/server/notification/NotificationAttentionHelper$Signals;
    .param p3, "aboveThreshold"    # Z

    .line 1094
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1095
    return v1

    .line 1098
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mHasLight:Z

    if-nez v0, :cond_1

    .line 1099
    return v1

    .line 1102
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    if-nez v0, :cond_2

    .line 1103
    return v1

    .line 1106
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1107
    return v1

    .line 1110
    :cond_3
    if-nez p3, :cond_4

    .line 1111
    return v1

    .line 1114
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 1115
    return v1

    .line 1118
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 1119
    .local v0, "notification":Landroid/app/Notification;
    iget-boolean v2, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v2, :cond_6

    iget v2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6

    .line 1120
    return v1

    .line 1123
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1124
    return v1

    .line 1127
    :cond_7
    invoke-direct {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1128
    return v1

    .line 1131
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1132
    return v1

    .line 1135
    :cond_9
    const/4 v1, 0x1

    return v1
.end method

.method public clearAttentionEffects()V
    .locals 0

    .line 1058
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearSoundLocked()V

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearVibrateLocked()V

    .line 1060
    invoke-direct {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearLightsLocked()V

    .line 1061
    return-void
.end method

.method public clearEffectsLocked(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 1030
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearSoundLocked()V

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorList:Ljava/util/ArrayList;

    .line 1042
    .local v0, "vibratorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 1043
    .local v2, "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " clearVibrateLocked key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotifAttentionHelper"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearVibrateLocked()V

    .line 1047
    return-void

    .line 1045
    :cond_1
    nop

    .line 1049
    .end local v2    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    goto :goto_0

    .line 1051
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 1052
    .local v1, "removed":Z
    if-eqz v1, :cond_3

    .line 1053
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 1055
    :cond_3
    return-void
.end method

.method clearSoundLocked()V
    .locals 6

    .line 970
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    .line 971
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 973
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    .line 974
    .local v2, "player":Landroid/media/IRingtonePlayer;
    if-eqz v2, :cond_0

    .line 975
    invoke-interface {v2}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 980
    .end local v2    # "player":Landroid/media/IRingtonePlayer;
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 977
    :catch_0
    move-exception v2

    goto :goto_2

    .line 980
    :cond_0
    :goto_0
    nop

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 981
    goto :goto_3

    .line 977
    :goto_2
    nop

    .line 978
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "NotifAttentionHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed clearSoundLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 980
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 982
    :goto_3
    return-void

    .line 980
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 981
    throw v2
.end method

.method clearVibrateLocked()V
    .locals 11

    .line 985
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 986
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 997
    .local v0, "identity":J
    const/4 v2, 0x0

    .line 998
    .local v2, "withNormalVibrator":Z
    const/4 v3, 0x0

    .line 999
    .local v3, "withNTVibrator":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorList:Ljava/util/ArrayList;

    .line 1000
    .local v4, "vibratorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1002
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/notification/NotificationRecord;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1003
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 1004
    .local v6, "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    sget-object v7, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_NM_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v7}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/INtNotificationManagerService;

    iget-object v8, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-interface {v7, v8, v6}, Lcom/android/server/notification/INtNotificationManagerService;->cancelVibration(Lcom/android/server/notification/VibratorHelper;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v7

    .line 1006
    .local v7, "cancelable":Z
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 1008
    if-eqz v7, :cond_0

    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationAttentionHelper;->isLoopingRingtoneNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    goto :goto_1

    .line 1019
    .end local v2    # "withNormalVibrator":Z
    .end local v3    # "withNTVibrator":Z
    .end local v4    # "vibratorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v6    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .end local v7    # "cancelable":Z
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1009
    .restart local v2    # "withNormalVibrator":Z
    .restart local v3    # "withNTVibrator":Z
    .restart local v4    # "vibratorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v6    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v7    # "cancelable":Z
    :goto_1
    const/4 v2, 0x1

    .line 1011
    :cond_1
    const-string v8, "NotifAttentionHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cancelVibration:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " withNormalVibrator:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    nop

    .end local v6    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .end local v7    # "cancelable":Z
    goto :goto_0

    .line 1014
    :cond_2
    if-eqz v2, :cond_3

    .line 1015
    iget-object v6, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    invoke-virtual {v6}, Lcom/android/server/notification/VibratorHelper;->cancelVibration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    .end local v2    # "withNormalVibrator":Z
    .end local v3    # "withNTVibrator":Z
    .end local v4    # "vibratorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/notification/NotificationRecord;>;"
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1020
    nop

    .line 1021
    return-void

    .line 1019
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1020
    throw v2
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1270
    const-string v0, "\n  Notification attention state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSoundNotificationKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mVibrateNotificationKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisableNotificationEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1277
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCallState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    invoke-static {v1}, Lcom/android/server/notification/NotificationAttentionHelper;->callStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSystemReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNotificationPulseEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1284
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1285
    .local v0, "N":I
    if-lez v0, :cond_2

    .line 1286
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1287
    const-string v1, "  Lights List:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1289
    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    .line 1290
    const-string v2, "  > "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1292
    :cond_0
    const-string v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1294
    :goto_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1296
    .end local v1    # "i":I
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1300
    :cond_2
    sget-object v1, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_NM_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v1}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/INtNotificationManagerService;

    invoke-interface {v1, p1, p2}, Lcom/android/server/notification/INtNotificationManagerService;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1302
    return-void
.end method

.method getPolitenessStrategy()Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    return-object v0
.end method

.method getVibratorHelper()Lcom/android/server/notification/VibratorHelper;
    .locals 1

    .line 1965
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    return-object v0
.end method

.method isCurrentlyInsistent()Z
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerPrivate;

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/server/notification/NotificationManagerPrivate;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationAttentionHelper;->isLoopingRingtoneNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    nop

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerPrivate;

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 688
    invoke-interface {v0, v1}, Lcom/android/server/notification/NotificationManagerPrivate;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    .line 687
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationAttentionHelper;->isLoopingRingtoneNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 686
    :goto_1
    return v0
.end method

.method isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 680
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->isCurrentlyInsistent()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 680
    :goto_0
    return v0
.end method

.method public onSystemReady()V
    .locals 3

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    .line 345
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.type.automotive"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIsAutomotive:Z

    .line 346
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111018d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationEffectsEnabledForAutomotive:Z

    .line 349
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 350
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 352
    invoke-direct {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->registerBroadcastListeners()V

    .line 353
    return-void
.end method

.method public onUserInteraction(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1263
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isPoliteNotificationFeatureEnabled(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->onUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 1266
    :cond_0
    return-void
.end method

.method playInCallNotification()V
    .locals 4

    .line 940
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 941
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    const/4 v2, 0x2

    nop

    if-ne v1, v2, :cond_0

    .line 943
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    .line 942
    const-string/jumbo v2, "in_call_notification_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 944
    new-instance v1, Lcom/android/server/notification/NotificationAttentionHelper$2;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationAttentionHelper$2;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    .line 965
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 967
    :cond_0
    return-void
.end method

.method sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V
    .locals 9
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1228
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mEnableNotificationAccessibilityEvents:Z

    if-nez v0, :cond_1

    :cond_0
    goto :goto_3

    .line 1232
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 1233
    .local v0, "notification":Landroid/app/Notification;
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1234
    .local v1, "packageName":Ljava/lang/CharSequence;
    nop

    .line 1235
    const/16 v2, 0x40

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 1236
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1237
    const-class v3, Landroid/app/Notification;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1238
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v3

    .line 1239
    .local v3, "visibilityOverride":I
    const/16 v4, -0x3e8

    if-ne v3, v4, :cond_2

    .line 1240
    iget v4, v0, Landroid/app/Notification;->visibility:I

    goto :goto_0

    :cond_2
    move v4, v3

    .line 1241
    .local v4, "notifVisibility":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1242
    .local v5, "userId":I
    const/4 v6, 0x1

    if-ltz v5, :cond_3

    iget-object v7, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v7, v5}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 1243
    .local v7, "needPublic":Z
    :goto_1
    if-eqz v7, :cond_4

    if-eq v4, v6, :cond_4

    .line 1246
    iget-object v6, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    goto :goto_2

    .line 1248
    :cond_4
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 1250
    :goto_2
    iget-object v6, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1251
    .local v6, "tickerText":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1252
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1255
    :cond_5
    iget-object v8, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1256
    return-void

    .line 1229
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v1    # "packageName":Ljava/lang/CharSequence;
    .end local v2    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "visibilityOverride":I
    .end local v4    # "notifVisibility":I
    .end local v5    # "userId":I
    .end local v6    # "tickerText":Ljava/lang/CharSequence;
    .end local v7    # "needPublic":Z
    :goto_3
    return-void
.end method

.method setAccessibilityManager(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0
    .param p1, "am"    # Landroid/view/accessibility/AccessibilityManager;

    .line 1960
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1961
    return-void
.end method

.method setAudioManager(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    .line 1993
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 1994
    return-void
.end method

.method setInCallStateOffHook(Z)V
    .locals 0
    .param p1, "inCallStateOffHook"    # Z

    .line 1998
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    .line 1999
    return-void
.end method

.method setIsAutomotive(Z)V
    .locals 0
    .param p1, "isAutomotive"    # Z

    .line 1940
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIsAutomotive:Z

    .line 1941
    return-void
.end method

.method setKeyguardManager(Landroid/app/KeyguardManager;)V
    .locals 0
    .param p1, "keyguardManager"    # Landroid/app/KeyguardManager;

    .line 1955
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1956
    return-void
.end method

.method setLights(Lcom/android/server/lights/LogicalLight;)V
    .locals 0
    .param p1, "light"    # Lcom/android/server/lights/LogicalLight;

    .line 1987
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    .line 1988
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    .line 1989
    return-void
.end method

.method setNotificationEffectsEnabledForAutomotive(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 1945
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationEffectsEnabledForAutomotive:Z

    .line 1946
    return-void
.end method

.method setScreenOn(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 1975
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1976
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    .line 1977
    monitor-exit v0

    .line 1978
    return-void

    .line 1977
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setSystemReady(Z)V
    .locals 0
    .param p1, "systemReady"    # Z

    .line 1950
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    .line 1951
    return-void
.end method

.method setUserPresent(Z)V
    .locals 0
    .param p1, "userPresent"    # Z

    .line 1982
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUserPresent:Z

    .line 1983
    return-void
.end method

.method setVibratorHelper(Lcom/android/server/notification/VibratorHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/server/notification/VibratorHelper;

    .line 1970
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    .line 1971
    return-void
.end method

.method shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;Z)I
    .locals 7
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "signals"    # Lcom/android/server/notification/NotificationAttentionHelper$Signals;
    .param p3, "hasAudibleAlert"    # Z

    .line 694
    if-nez p3, :cond_0

    .line 695
    const/16 v0, 0x20

    return v0

    .line 698
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 699
    .local v0, "notification":Landroid/app/Notification;
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 700
    const/16 v1, 0x40

    return v1

    .line 704
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->shouldPostSilently()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 705
    const/16 v1, 0x80

    return v1

    .line 709
    :cond_2
    invoke-static {p2}, Lcom/android/server/notification/NotificationAttentionHelper$Signals;->-$$Nest$fgetlistenerHints(Lcom/android/server/notification/NotificationAttentionHelper$Signals;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/notification/NotificationAttentionHelper;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;I)Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, "disableEffects":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 711
    invoke-static {p1, v1}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 712
    const/16 v2, 0x100

    return v2

    .line 716
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 717
    const/16 v2, 0x200

    return v2

    .line 721
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 722
    invoke-virtual {v0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 723
    const/16 v2, 0x400

    return v2

    .line 728
    :cond_5
    nop

    .line 729
    invoke-virtual {v0}, Landroid/app/Notification;->isSilent()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 730
    const/16 v2, 0x800

    return v2

    .line 735
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 736
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v3, v2}, Lcom/android/server/notification/NotificationUsageStats;->isAlertRateLimited(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 737
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Muting recently noisy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotifAttentionHelper"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/16 v3, 0x1000

    return v3

    .line 742
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->isCurrentlyInsistent()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 743
    const/16 v3, 0x2000

    return v3

    .line 747
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v3

    const/4 v4, 0x0

    nop

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isFlagBubbleRemoved()Z

    move-result v3

    if-nez v3, :cond_9

    .line 748
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const/4 v3, 0x1

    goto :goto_0

    :cond_a
    move v3, v4

    :goto_0
    nop

    .line 749
    .local v3, "isBubbleOrOverflowed":Z
    iget-boolean v5, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v5, :cond_b

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v5

    if-nez v5, :cond_b

    if-eqz v3, :cond_b

    .line 750
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 751
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 752
    const/16 v4, 0x4000

    return v4

    .line 756
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isPoliteNotificationFeatureEnabled(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 758
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 759
    iget-object v5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {v5, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->onNotificationPosted(Lcom/android/server/notification/NotificationRecord;)V

    .line 763
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    .line 764
    const v4, 0x8000

    return v4

    .line 768
    :cond_d
    return v4
.end method

.method public updateDisableNotificationEffectsLocked(I)V
    .locals 1
    .param p1, "status"    # I

    .line 1168
    const/high16 v0, 0x40000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    .line 1171
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    if-eqz v0, :cond_1

    .line 1173
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearAttentionEffects()V

    .line 1175
    :cond_1
    return-void
.end method

.method updateLightsLocked()V
    .locals 7

    .line 1064
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    if-nez v0, :cond_0

    .line 1065
    return-void

    .line 1069
    :cond_0
    const/4 v0, 0x0

    .line 1070
    .local v0, "ledNotification":Lcom/android/server/notification/NotificationRecord;
    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1071
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1072
    .local v1, "owner":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerPrivate;

    invoke-interface {v2, v1}, Lcom/android/server/notification/NotificationManagerPrivate;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    .line 1073
    if-nez v0, :cond_1

    .line 1074
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LED Notification does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotifAttentionHelper"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1077
    .end local v1    # "owner":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1080
    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    if-eqz v2, :cond_4

    :cond_3
    goto :goto_1

    .line 1083
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v2

    .line 1084
    .local v2, "light":Lcom/android/server/notification/NotificationRecord$Light;
    if-eqz v2, :cond_5

    iget-boolean v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    if-eqz v3, :cond_5

    .line 1086
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    iget v4, v2, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    iget v5, v2, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    iget v6, v2, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    goto :goto_2

    .line 1081
    .end local v2    # "light":Lcom/android/server/notification/NotificationRecord$Light;
    :goto_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {v1}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    .line 1090
    :cond_5
    :goto_2
    return-void
.end method
