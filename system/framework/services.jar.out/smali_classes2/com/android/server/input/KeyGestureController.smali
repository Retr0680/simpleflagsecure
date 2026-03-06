.class final Lcom/android/server/input/KeyGestureController;
.super Ljava/lang/Object;
.source "KeyGestureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/KeyGestureController$Injector;,
        Lcom/android/server/input/KeyGestureController$SettingsObserver;,
        Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;,
        Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LAST_SEARCH_KEY_BEHAVIOR:I = 0x1

.field private static final LAST_SETTINGS_KEY_BEHAVIOR:I = 0x2

.field private static final MAX_TRACKED_EVENTS:I = 0xa

.field private static final MSG_ACCESSIBILITY_SHORTCUT:I = 0x4

.field private static final MSG_LOAD_CUSTOM_GESTURES:I = 0x3

.field private static final MSG_NOTIFY_KEY_GESTURE_EVENT:I = 0x1

.field private static final MSG_PERSIST_CUSTOM_GESTURES:I = 0x2

.field static final POWER_VOLUME_UP_BEHAVIOR_GLOBAL_ACTIONS:I = 0x2

.field static final POWER_VOLUME_UP_BEHAVIOR_MUTE:I = 0x1

.field static final POWER_VOLUME_UP_BEHAVIOR_NOTHING:I = 0x0

.field private static final SEARCH_KEY_BEHAVIOR_DEFAULT_SEARCH:I = 0x0

.field private static final SEARCH_KEY_BEHAVIOR_TARGET_ACTIVITY:I = 0x1

.field private static final SETTINGS_KEY_BEHAVIOR_NOTHING:I = 0x2

.field private static final SETTINGS_KEY_BEHAVIOR_NOTIFICATION_PANEL:I = 0x1

.field private static final SETTINGS_KEY_BEHAVIOR_SETTINGS_ACTIVITY:I = 0x0

.field private static final SHORTCUT_META_MASK:I = 0x11003

.field private static final TAG:Ljava/lang/String; = "KeyGestureController"

.field private static final mUserLock:Ljava/lang/Object;


# instance fields
.field final mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field private final mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

.field private final mConsumedKeysForDevice:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHasFeatureLeanback:Z

.field private mHasFeatureWatch:Z

.field private final mInputDataStore:Lcom/android/server/input/InputDataStore;

.field private final mInputGestureManager:Lcom/android/server/input/InputGestureManager;

.field private final mIoHandler:Landroid/os/Handler;

.field private final mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

.field private final mKeyGestureEventListenerRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyGestureHandlerRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastHandledEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/hardware/input/KeyGestureEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCapsLockToggle:Z

.field private mPendingHideRecentSwitcher:Z

.field private mPendingMetaAction:Z

.field private mPowerVolUpBehavior:I

.field private mRingerToggleChord:I

.field private mSearchKeyBehavior:I

.field private mSettingsKeyBehavior:I

.field private final mSettingsObserver:Lcom/android/server/input/KeyGestureController$SettingsObserver;

.field private final mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

.field private final mSystemPid:I

.field private final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field private final mVisibleBackgroundUsersEnabled:Z

.field private mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# direct methods
.method public static synthetic $r8$lambda$4PRjtj8OHRdlnwn5_WqXshoVPTQ(Lcom/android/server/input/KeyGestureController;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/KeyGestureController;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Sf1Es3TGUz0CYGsl4UYFi8RH0Fw(Lcom/android/server/input/KeyGestureController;Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->lambda$initKeyGestures$0(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SkZtDf-juTn1Sesg7AZpQ5YVzto(Lcom/android/server/input/KeyGestureController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/input/KeyGestureController;->initBehaviorsFromSettings()V

    return-void
.end method

.method public static synthetic $r8$lambda$mbUjwi2JsgUBPoJ0pQ_Q0JJY3EI(Lcom/android/server/input/KeyGestureController;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/KeyGestureController;->handleIoMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/input/KeyGestureController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerVolUpBehavior(Lcom/android/server/input/KeyGestureController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/KeyGestureController;->mPowerVolUpBehavior:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRingerToggleChord(Lcom/android/server/input/KeyGestureController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/KeyGestureController;->mRingerToggleChord:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowManagerCallbacks(Lcom/android/server/input/KeyGestureController;)Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/input/KeyGestureController;->handleMultiKeyGesture([IIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitBehaviorsFromSettings(Lcom/android/server/input/KeyGestureController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/input/KeyGestureController;->initBehaviorsFromSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monKeyGestureEventListenerDied(Lcom/android/server/input/KeyGestureController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/KeyGestureController;->onKeyGestureEventListenerDied(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monKeyGestureHandlerRemoved(Lcom/android/server/input/KeyGestureController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/KeyGestureController;->onKeyGestureHandlerRemoved(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 106
    const-string v0, "KeyGestureController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/server/input/InputDataStore;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "ioLooper"    # Landroid/os/Looper;
    .param p4, "inputDataStore"    # Lcom/android/server/input/InputDataStore;

    .line 197
    new-instance v5, Lcom/android/server/input/KeyGestureController$Injector;

    invoke-direct {v5}, Lcom/android/server/input/KeyGestureController$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "looper":Landroid/os/Looper;
    .end local p3    # "ioLooper":Landroid/os/Looper;
    .end local p4    # "inputDataStore":Lcom/android/server/input/InputDataStore;
    .local v1, "context":Landroid/content/Context;
    .local v2, "looper":Landroid/os/Looper;
    .local v3, "ioLooper":Landroid/os/Looper;
    .local v4, "inputDataStore":Lcom/android/server/input/InputDataStore;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/KeyGestureController;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/server/input/InputDataStore;Lcom/android/server/input/KeyGestureController$Injector;)V

    .line 198
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/server/input/InputDataStore;Lcom/android/server/input/KeyGestureController$Injector;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "ioLooper"    # Landroid/os/Looper;
    .param p4, "inputDataStore"    # Lcom/android/server/input/InputDataStore;
    .param p5, "injector"    # Lcom/android/server/input/KeyGestureController$Injector;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    .line 168
    iput v0, p0, Lcom/android/server/input/KeyGestureController;->mRingerToggleChord:I

    .line 173
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    .line 178
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    .line 183
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    .line 186
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    .line 189
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    .line 193
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/input/KeyGestureController;->mVisibleBackgroundUsersEnabled:Z

    .line 203
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    .line 204
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/KeyGestureController;)V

    invoke-direct {v0, p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    .line 205
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/KeyGestureController;)V

    invoke-direct {v0, p3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    .line 206
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/input/KeyGestureController;->mSystemPid:I

    .line 207
    new-instance v0, Lcom/android/server/policy/KeyCombinationManager;

    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 208
    new-instance v0, Lcom/android/server/input/KeyGestureController$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/input/KeyGestureController$SettingsObserver;-><init>(Lcom/android/server/input/KeyGestureController;Landroid/os/Handler;Lcom/android/server/input/KeyGestureController-IA;)V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mSettingsObserver:Lcom/android/server/input/KeyGestureController$SettingsObserver;

    .line 209
    new-instance v0, Lcom/android/server/input/AppLaunchShortcutManager;

    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/input/AppLaunchShortcutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    .line 210
    new-instance v0, Lcom/android/server/input/InputGestureManager;

    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/input/InputGestureManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    .line 211
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p5, v0, v1}, Lcom/android/server/input/KeyGestureController$Injector;->getAccessibilityShortcutController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/internal/accessibility/AccessibilityShortcutController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 213
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 214
    iput-object p4, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    .line 215
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 216
    invoke-direct {p0}, Lcom/android/server/input/KeyGestureController;->initBehaviors()V

    .line 217
    invoke-direct {p0}, Lcom/android/server/input/KeyGestureController;->initKeyCombinationRules()V

    .line 218
    return-void
.end method

.method private createKeyGestureEvent(I[IIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;
    .locals 3
    .param p1, "deviceId"    # I
    .param p2, "keycodes"    # [I
    .param p3, "modifierState"    # I
    .param p4, "gestureType"    # I
    .param p5, "action"    # I
    .param p6, "displayId"    # I
    .param p7, "flags"    # I
    .param p8, "appLaunchData"    # Landroid/hardware/input/AppLaunchData;

    .line 1450
    new-instance v0, Landroid/hardware/input/AidlKeyGestureEvent;

    invoke-direct {v0}, Landroid/hardware/input/AidlKeyGestureEvent;-><init>()V

    .line 1451
    .local v0, "event":Landroid/hardware/input/AidlKeyGestureEvent;
    iput p1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    .line 1452
    iput-object p2, v0, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    .line 1453
    iput p3, v0, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    .line 1454
    iput p4, v0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    .line 1455
    iput p5, v0, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    .line 1456
    iput p6, v0, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    .line 1457
    iput p7, v0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    .line 1458
    if-eqz p8, :cond_3

    .line 1459
    instance-of v1, p8, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz v1, :cond_0

    move-object v1, p8

    check-cast v1, Landroid/hardware/input/AppLaunchData$CategoryData;

    .line 1460
    .local v1, "categoryData":Landroid/hardware/input/AppLaunchData$CategoryData;
    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    goto :goto_0

    .line 1461
    .end local v1    # "categoryData":Landroid/hardware/input/AppLaunchData$CategoryData;
    :cond_0
    instance-of v1, p8, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v1, :cond_1

    move-object v1, p8

    check-cast v1, Landroid/hardware/input/AppLaunchData$RoleData;

    .line 1462
    .local v1, "roleData":Landroid/hardware/input/AppLaunchData$RoleData;
    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    goto :goto_0

    .line 1463
    .end local v1    # "roleData":Landroid/hardware/input/AppLaunchData$RoleData;
    :cond_1
    instance-of v1, p8, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz v1, :cond_2

    move-object v1, p8

    check-cast v1, Landroid/hardware/input/AppLaunchData$ComponentData;

    .line 1464
    .local v1, "componentData":Landroid/hardware/input/AppLaunchData$ComponentData;
    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$ComponentData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    .line 1465
    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$ComponentData;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    goto :goto_0

    .line 1467
    .end local v1    # "componentData":Landroid/hardware/input/AppLaunchData$ComponentData;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "AppLaunchData type is invalid!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1470
    :cond_3
    :goto_0
    return-object v0
.end method

.method private getAccessibilityShortcutTimeout()J
    .locals 8

    .line 1474
    sget-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1475
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 1476
    .local v1, "config":Landroid/view/ViewConfiguration;
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    .line 1477
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_shortcut_dialog_shown"

    iget v4, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    .line 1476
    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v5

    .line 1479
    .local v2, "hasDialogShown":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    .line 1480
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "skip_accessibility_shortcut_dialog_timeout_restriction"

    iget v7, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    invoke-static {v4, v6, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1

    move v5, v3

    .line 1486
    .local v5, "skipTimeoutRestriction":Z
    :cond_1
    if-nez v2, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    goto :goto_1

    .line 1488
    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    move-result-wide v3

    goto :goto_2

    .line 1489
    .end local v1    # "config":Landroid/view/ViewConfiguration;
    .end local v2    # "hasDialogShown":Z
    .end local v5    # "skipTimeoutRestriction":Z
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1487
    .restart local v1    # "config":Landroid/view/ViewConfiguration;
    .restart local v2    # "hasDialogShown":Z
    .restart local v5    # "skipTimeoutRestriction":Z
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeoutAfterConfirmation()J

    move-result-wide v3

    .line 1488
    :goto_2
    monitor-exit v0

    .line 1486
    return-wide v3

    .line 1489
    .end local v1    # "config":Landroid/view/ViewConfiguration;
    .end local v2    # "hasDialogShown":Z
    .end local v5    # "skipTimeoutRestriction":Z
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getInputDevice(I)Landroid/view/InputDevice;
    .locals 2
    .param p1, "deviceId"    # I

    .line 1443
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 1444
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private handleIoMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 1126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1133
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1134
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/input/KeyGestureController;->loadInputGestures(I)V

    .line 1135
    goto :goto_0

    .line 1128
    .end local v0    # "userId":I
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1129
    .restart local v0    # "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/input/KeyGestureController;->persistInputGestures(I)V

    .line 1130
    nop

    .line 1138
    .end local v0    # "userId":I
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/input/AidlKeyGestureEvent;
    .param p2, "focusedToken"    # Landroid/os/IBinder;

    .line 989
    iget-boolean v0, p0, Lcom/android/server/input/KeyGestureController;->mVisibleBackgroundUsersEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    iget v1, p1, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    .line 990
    invoke-direct {p0, v0, v1}, Lcom/android/server/input/KeyGestureController;->shouldIgnoreGestureEventForVisibleBackgroundUser(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    return-void

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 995
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    iget v2, p1, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 996
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 997
    const-string v2, "KeyGestureController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key gesture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    monitor-exit v0

    return-void

    .line 1004
    .end local v1    # "index":I
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1000
    .restart local v1    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 1001
    .local v2, "pid":I
    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V

    .line 1002
    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1003
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1004
    nop

    .end local v1    # "index":I
    .end local v2    # "pid":I
    .end local v3    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 1005
    return-void

    .line 1004
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 1113
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1119
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performAccessibilityShortcut()V

    goto :goto_0

    .line 1115
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/input/AidlKeyGestureEvent;

    .line 1116
    .local v0, "event":Landroid/hardware/input/AidlKeyGestureEvent;
    invoke-direct {p0, v0}, Lcom/android/server/input/KeyGestureController;->notifyKeyGestureEvent(Landroid/hardware/input/AidlKeyGestureEvent;)V

    .line 1117
    nop

    .line 1122
    .end local v0    # "event":Landroid/hardware/input/AidlKeyGestureEvent;
    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleMultiKeyGesture([IIII)V
    .locals 10
    .param p1, "keycodes"    # [I
    .param p2, "gestureType"    # I
    .param p3, "action"    # I
    .param p4, "flags"    # I

    .line 967
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v8, p4

    .end local p1    # "keycodes":[I
    .end local p2    # "gestureType":I
    .end local p3    # "action":I
    .end local p4    # "flags":I
    .local v2, "keycodes":[I
    .local v4, "gestureType":I
    .local v5, "action":I
    .local v8, "flags":I
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 970
    return-void
.end method

.method private handleTouchpadGesture(ILandroid/hardware/input/AppLaunchData;)V
    .locals 11
    .param p1, "keyGestureType"    # I
    .param p2, "appLaunchData"    # Landroid/hardware/input/AppLaunchData;

    .line 974
    const/4 v0, 0x0

    new-array v3, v0, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move v5, p1

    move-object v10, p2

    .end local p1    # "keyGestureType":I
    .end local p2    # "appLaunchData":Landroid/hardware/input/AppLaunchData;
    .local v5, "keyGestureType":I
    .local v10, "appLaunchData":Landroid/hardware/input/AppLaunchData;
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 977
    return-void
.end method

.method private initBehaviors()V
    .locals 5

    .line 221
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 222
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mHasFeatureWatch:Z

    .line 223
    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mHasFeatureLeanback:Z

    .line 225
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 226
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x10e0133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/input/KeyGestureController;->mSearchKeyBehavior:I

    .line 227
    iget v2, p0, Lcom/android/server/input/KeyGestureController;->mSearchKeyBehavior:I

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/input/KeyGestureController;->mSearchKeyBehavior:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    .line 229
    :cond_0
    iput v3, p0, Lcom/android/server/input/KeyGestureController;->mSearchKeyBehavior:I

    .line 231
    :cond_1
    const v2, 0x10e0135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    .line 232
    iget v2, p0, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    const/4 v4, 0x2

    if-le v2, v4, :cond_3

    .line 234
    :cond_2
    iput v3, p0, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    .line 237
    :cond_3
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/KeyGestureController;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method private initBehaviorsFromSettings()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 242
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string/jumbo v3, "volume_hush_gesture"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/input/KeyGestureController;->mRingerToggleChord:I

    .line 246
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    .line 248
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 246
    const-string/jumbo v2, "key_chord_power_volume_up"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/input/KeyGestureController;->mPowerVolUpBehavior:I

    .line 250
    return-void
.end method

.method private initKeyCombinationRules()V
    .locals 6

    .line 253
    invoke-static {}, Landroid/hardware/input/InputSettings;->doesKeyGestureEventHandlerSupportMultiKeyGestures()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 261
    .local v0, "screenshotChordEnabled":Z
    const/16 v1, 0x19

    const/16 v2, 0x1a

    if-eqz v0, :cond_1

    .line 262
    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v4, Lcom/android/server/input/KeyGestureController$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/input/KeyGestureController$1;-><init>(Lcom/android/server/input/KeyGestureController;II)V

    invoke-virtual {v3, v4}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 291
    iget-boolean v3, p0, Lcom/android/server/input/KeyGestureController;->mHasFeatureWatch:Z

    if-eqz v3, :cond_1

    .line 292
    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v4, Lcom/android/server/input/KeyGestureController$2;

    const/16 v5, 0x108

    invoke-direct {v4, p0, v2, v5}, Lcom/android/server/input/KeyGestureController$2;-><init>(Lcom/android/server/input/KeyGestureController;II)V

    invoke-virtual {v3, v4}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 314
    :cond_1
    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v4, Lcom/android/server/input/KeyGestureController$3;

    const/16 v5, 0x18

    invoke-direct {v4, p0, v1, v5}, Lcom/android/server/input/KeyGestureController$3;-><init>(Lcom/android/server/input/KeyGestureController;II)V

    invoke-virtual {v3, v4}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 344
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v3, Lcom/android/server/input/KeyGestureController$4;

    invoke-direct {v3, p0, v5, v2}, Lcom/android/server/input/KeyGestureController$4;-><init>(Lcom/android/server/input/KeyGestureController;II)V

    invoke-virtual {v1, v3}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 394
    iget-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_2

    .line 395
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v2, Lcom/android/server/input/KeyGestureController$5;

    const/16 v3, 0x14

    const/4 v4, 0x4

    invoke-direct {v2, p0, v4, v3}, Lcom/android/server/input/KeyGestureController$5;-><init>(Lcom/android/server/input/KeyGestureController;II)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 432
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v2, Lcom/android/server/input/KeyGestureController$6;

    const/16 v3, 0x17

    invoke-direct {v2, p0, v4, v3}, Lcom/android/server/input/KeyGestureController$6;-><init>(Lcom/android/server/input/KeyGestureController;II)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 456
    :cond_2
    return-void
.end method

.method private initKeyGestures()V
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    .local v0, "im":Landroid/hardware/input/InputManager;
    nop

    .line 476
    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/KeyGestureController;)V

    .line 475
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V

    .line 493
    return-void
.end method

.method private interceptSystemKeysAndShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .locals 20
    .param p1, "focusedToken"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 576
    move-object/from16 v1, p0

    move-object/from16 v11, p2

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    .line 577
    .local v12, "keyCode":I
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v13

    .line 578
    .local v13, "repeatCount":I
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    const v2, 0x11003

    and-int v4, v0, v2

    .line 579
    .local v4, "metaState":I
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v10, 0x0

    const/4 v14, 0x1

    if-nez v0, :cond_0

    move v0, v14

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    move v15, v0

    .line 580
    .local v15, "down":Z
    invoke-virtual {v11}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v16

    .line 581
    .local v16, "canceled":Z
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v7

    .line 582
    .local v7, "displayId":I
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    .line 583
    .local v2, "deviceId":I
    if-eqz v15, :cond_1

    if-nez v13, :cond_1

    move v0, v14

    goto :goto_1

    :cond_1
    move v0, v10

    :goto_1
    move/from16 v17, v0

    .line 587
    .local v17, "firstDown":Z
    iget-boolean v0, v1, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    if-eqz v0, :cond_2

    invoke-static {v12}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 588
    iput-boolean v10, v1, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    .line 591
    :cond_2
    iget-boolean v0, v1, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    if-eqz v0, :cond_3

    invoke-static {v12}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v12}, Landroid/view/KeyEvent;->isAltKey(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 592
    iput-boolean v10, v1, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    .line 596
    :cond_3
    iget-object v0, v1, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v0, v11}, Lcom/android/server/input/AppLaunchShortcutManager;->interceptKey(Landroid/view/KeyEvent;)Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    move-result-object v18

    .line 598
    .local v18, "result":Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->consumed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 599
    return v14

    .line 601
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 602
    filled-new-array {v12}, [I

    move-result-object v3

    .line 605
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v10

    .line 602
    const/16 v5, 0x33

    const/4 v6, 0x2

    const/4 v9, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 606
    return v14

    .line 610
    :cond_5
    if-eqz v17, :cond_7

    .line 611
    iget-object v0, v1, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v0, v11}, Lcom/android/server/input/InputGestureManager;->getSystemShortcutForKeyEvent(Landroid/view/KeyEvent;)Landroid/hardware/input/InputGestureData;

    move-result-object v0

    .line 613
    .local v0, "systemShortcut":Landroid/hardware/input/InputGestureData;
    if-eqz v0, :cond_6

    .line 614
    filled-new-array {v12}, [I

    move-result-object v3

    .line 615
    invoke-virtual {v0}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/input/InputGestureData$Action;->keyGestureType()I

    move-result v5

    .line 617
    invoke-virtual {v0}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v10

    .line 614
    const/4 v6, 0x2

    const/4 v9, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 618
    move/from16 v19, v4

    .end local v4    # "metaState":I
    .local v19, "metaState":I
    return v14

    .line 613
    .end local v19    # "metaState":I
    .restart local v4    # "metaState":I
    :cond_6
    move/from16 v19, v4

    .end local v4    # "metaState":I
    .restart local v19    # "metaState":I
    goto :goto_2

    .line 610
    .end local v0    # "systemShortcut":Landroid/hardware/input/InputGestureData;
    .end local v19    # "metaState":I
    .restart local v4    # "metaState":I
    :cond_7
    move/from16 v19, v4

    .line 623
    .end local v4    # "metaState":I
    .restart local v19    # "metaState":I
    :goto_2
    const/16 v0, 0x39

    const/16 v1, 0x75

    sparse-switch v12, :sswitch_data_0

    move-object/from16 v1, p0

    goto/16 :goto_8

    .line 849
    :sswitch_0
    nop

    .line 850
    if-eqz v17, :cond_8

    .line 851
    const/16 v0, 0x145

    filled-new-array {v0}, [I

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x35

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 858
    :cond_8
    return v14

    .line 838
    :sswitch_1
    nop

    .line 839
    if-eqz v17, :cond_9

    .line 840
    const/16 v0, 0x144

    filled-new-array {v0}, [I

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x20

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 847
    :cond_9
    return v14

    .line 874
    :sswitch_2
    nop

    .line 875
    if-eqz v17, :cond_a

    .line 876
    const/16 v0, 0x142

    filled-new-array {v0}, [I

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x4b

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 883
    :cond_a
    return v14

    .line 748
    :sswitch_3
    if-eqz v17, :cond_b

    .line 749
    filled-new-array {v12}, [I

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 754
    :cond_b
    return v14

    .line 625
    :sswitch_4
    if-eqz v17, :cond_c

    .line 626
    filled-new-array {v12}, [I

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 631
    :cond_c
    return v14

    .line 870
    :sswitch_5
    const-string v0, "KeyGestureController"

    const-string v1, "KEYCODE_STYLUS_BUTTON_* should be handled in interceptKeyBeforeQueueing"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return v14

    .line 675
    :sswitch_6
    if-nez v15, :cond_d

    .line 676
    filled-new-array {v12}, [I

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x11

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 681
    :cond_d
    return v14

    .line 666
    :sswitch_7
    if-eqz v15, :cond_e

    .line 667
    filled-new-array {v12}, [I

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 672
    :cond_e
    return v14

    .line 658
    :sswitch_8
    if-eqz v15, :cond_f

    .line 659
    filled-new-array {v12}, [I

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 664
    :cond_f
    return v14

    .line 683
    :sswitch_9
    if-eqz v17, :cond_10

    .line 684
    filled-new-array {v12}, [I

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x15

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 689
    :cond_10
    return v14

    .line 863
    :sswitch_a
    const-string v0, "KeyGestureController"

    const-string v1, "KEYCODE_VOICE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return v14

    .line 648
    :sswitch_b
    if-eqz v15, :cond_12

    .line 649
    filled-new-array {v12}, [I

    move-result-object v3

    .line 650
    const/16 v0, 0xdd

    if-ne v12, v0, :cond_11

    .line 651
    const/16 v0, 0xd

    move v5, v0

    goto :goto_3

    .line 652
    :cond_11
    const/16 v0, 0xe

    move v5, v0

    :goto_3
    nop

    .line 649
    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 656
    :cond_12
    return v14

    .line 860
    :sswitch_c
    const-string v0, "KeyGestureController"

    const-string v1, "KEYCODE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    return v14

    .line 725
    :sswitch_d
    if-eqz v17, :cond_13

    .line 726
    filled-new-array {v12}, [I

    move-result-object v3

    .line 727
    invoke-virtual {v11}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    .line 726
    const/16 v5, 0x17

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 732
    :cond_13
    return v14

    .line 633
    :sswitch_e
    if-eqz v17, :cond_14

    .line 634
    filled-new-array {v12}, [I

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_4

    .line 638
    :cond_14
    if-nez v15, :cond_15

    .line 639
    filled-new-array {v12}, [I

    move-result-object v3

    .line 642
    nop

    .line 639
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, v16

    .end local v16    # "canceled":Z
    .local v9, "canceled":Z
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .end local v9    # "canceled":Z
    .restart local v16    # "canceled":Z
    goto :goto_4

    .line 638
    :cond_15
    move-object/from16 v1, p0

    .line 645
    :goto_4
    return v14

    .line 708
    :sswitch_f
    move-object/from16 v1, p0

    if-eqz v17, :cond_18

    .line 709
    iget v0, v1, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    if-nez v0, :cond_16

    .line 710
    filled-new-array {v12}, [I

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x2

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    move v3, v2

    move-object v2, v1

    goto :goto_5

    .line 715
    :cond_16
    iget v0, v1, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    if-ne v0, v14, :cond_17

    .line 716
    filled-new-array {v12}, [I

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x2

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    move v3, v2

    move-object v2, v1

    .end local v2    # "deviceId":I
    .local v3, "deviceId":I
    goto :goto_5

    .line 715
    .end local v3    # "deviceId":I
    .restart local v2    # "deviceId":I
    :cond_17
    move v3, v2

    move-object v2, v1

    .end local v2    # "deviceId":I
    .restart local v3    # "deviceId":I
    goto :goto_5

    .line 708
    .end local v3    # "deviceId":I
    .restart local v2    # "deviceId":I
    :cond_18
    move v3, v2

    move-object v2, v1

    .line 723
    .end local v2    # "deviceId":I
    .restart local v3    # "deviceId":I
    :goto_5
    return v14

    .line 757
    .end local v3    # "deviceId":I
    .restart local v2    # "deviceId":I
    :sswitch_10
    move v3, v2

    move-object/from16 v2, p0

    .end local v2    # "deviceId":I
    .restart local v3    # "deviceId":I
    if-eqz v15, :cond_1a

    .line 758
    invoke-virtual {v11}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 759
    iput-boolean v14, v2, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    .line 760
    iput-boolean v10, v2, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    move v2, v3

    goto :goto_6

    .line 762
    :cond_19
    iput-boolean v10, v2, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    .line 763
    iput-boolean v14, v2, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    move v2, v3

    goto :goto_6

    .line 767
    :cond_1a
    iget-boolean v4, v2, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    if-eqz v4, :cond_1b

    .line 768
    iput-boolean v10, v2, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    .line 769
    move v2, v3

    .end local v3    # "deviceId":I
    .restart local v2    # "deviceId":I
    filled-new-array {v1, v0}, [I

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x19

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_6

    .line 775
    .end local v2    # "deviceId":I
    .restart local v3    # "deviceId":I
    :cond_1b
    move-object v1, v2

    move v2, v3

    .end local v3    # "deviceId":I
    .restart local v2    # "deviceId":I
    iget-boolean v0, v1, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    if-eqz v0, :cond_1c

    .line 776
    iput-boolean v10, v1, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    .line 777
    if-nez v16, :cond_1c

    .line 778
    filled-new-array {v12}, [I

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x15

    const/4 v6, 0x2

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 786
    :cond_1c
    :goto_6
    return v14

    .line 736
    :sswitch_11
    if-nez v15, :cond_1d

    .line 737
    filled-new-array {v12}, [I

    move-result-object v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v5, 0x19

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move/from16 v4, v19

    .end local v19    # "metaState":I
    .restart local v4    # "metaState":I
    invoke-direct/range {v1 .. v9}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[IIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object v0

    .line 742
    .end local v4    # "metaState":I
    .local v0, "eventToNotify":Landroid/hardware/input/AidlKeyGestureEvent;
    .restart local v19    # "metaState":I
    iget-object v3, v1, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v14, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 744
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 745
    .end local v0    # "eventToNotify":Landroid/hardware/input/AidlKeyGestureEvent;
    .end local v3    # "msg":Landroid/os/Message;
    goto/16 :goto_8

    .line 736
    :cond_1d
    move-object/from16 v1, p0

    goto/16 :goto_8

    .line 699
    :sswitch_12
    move-object/from16 v1, p0

    if-eqz v17, :cond_1e

    iget v0, v1, Lcom/android/server/input/KeyGestureController;->mSearchKeyBehavior:I

    if-ne v0, v14, :cond_1e

    .line 700
    filled-new-array {v12}, [I

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x16

    const/4 v6, 0x2

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 704
    return v14

    .line 699
    :cond_1e
    move-object/from16 v1, p0

    goto/16 :goto_8

    .line 691
    :sswitch_13
    if-nez v15, :cond_1f

    .line 692
    filled-new-array {v12}, [I

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_7

    .line 691
    :cond_1f
    move-object/from16 v1, p0

    .line 697
    :goto_7
    return v14

    .line 788
    :sswitch_14
    move-object/from16 v1, p0

    if-eqz v17, :cond_22

    .line 789
    iget-boolean v0, v1, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    if-nez v0, :cond_21

    .line 790
    nop

    .line 791
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, -0xc2

    .line 792
    .local v0, "shiftlessModifiers":I
    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 794
    iput-boolean v14, v1, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    .line 795
    filled-new-array {v12}, [I

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x36

    const/4 v6, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 800
    move v3, v2

    move-object v2, v1

    .end local v2    # "deviceId":I
    .local v3, "deviceId":I
    return v14

    .line 792
    .end local v3    # "deviceId":I
    .restart local v2    # "deviceId":I
    :cond_20
    move v3, v2

    move-object v2, v1

    .line 802
    .end local v0    # "shiftlessModifiers":I
    .end local v2    # "deviceId":I
    .restart local v3    # "deviceId":I
    move v2, v3

    goto/16 :goto_8

    .line 789
    .end local v3    # "deviceId":I
    .restart local v2    # "deviceId":I
    :cond_21
    move v3, v2

    move-object v2, v1

    .end local v2    # "deviceId":I
    .restart local v3    # "deviceId":I
    move v2, v3

    goto/16 :goto_8

    .line 788
    .end local v3    # "deviceId":I
    .restart local v2    # "deviceId":I
    :cond_22
    move v3, v2

    move-object v2, v1

    .end local v2    # "deviceId":I
    .restart local v3    # "deviceId":I
    move v2, v3

    goto :goto_8

    .line 807
    .end local v3    # "deviceId":I
    .restart local v2    # "deviceId":I
    :sswitch_15
    move v3, v2

    move-object/from16 v2, p0

    .end local v2    # "deviceId":I
    .restart local v3    # "deviceId":I
    if-eqz v15, :cond_24

    .line 808
    invoke-virtual {v11}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 809
    iput-boolean v14, v2, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    .line 810
    iput-boolean v10, v2, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    move-object v1, v2

    move v2, v3

    goto :goto_8

    .line 812
    :cond_23
    iput-boolean v10, v2, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    move-object v1, v2

    move v2, v3

    goto :goto_8

    .line 815
    :cond_24
    iget-boolean v4, v2, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    if-eqz v4, :cond_25

    .line 816
    iput-boolean v10, v2, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    .line 817
    const/16 v0, 0x3d

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x36

    const/4 v6, 0x2

    move-object/from16 v8, p1

    move-object v1, v2

    move v2, v3

    move-object v3, v0

    .end local v3    # "deviceId":I
    .restart local v2    # "deviceId":I
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 822
    move v3, v2

    move-object v2, v1

    .end local v2    # "deviceId":I
    .restart local v3    # "deviceId":I
    return v14

    .line 826
    :cond_25
    iget-boolean v4, v2, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    if-eqz v4, :cond_26

    .line 827
    iput-boolean v10, v2, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    .line 828
    filled-new-array {v1, v0}, [I

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x19

    const/4 v6, 0x2

    move-object/from16 v8, p1

    move-object v1, v2

    move v2, v3

    move-object v3, v0

    .end local v3    # "deviceId":I
    .restart local v2    # "deviceId":I
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 833
    return v14

    .line 826
    .end local v2    # "deviceId":I
    .restart local v3    # "deviceId":I
    :cond_26
    move-object v1, v2

    move v2, v3

    .line 887
    .end local v3    # "deviceId":I
    .restart local v2    # "deviceId":I
    :goto_8
    iget-object v0, v1, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v0, v11}, Lcom/android/server/input/AppLaunchShortcutManager;->handleShortcutService(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 888
    return v14

    .line 892
    :cond_27
    if-eqz v17, :cond_29

    .line 894
    sget-object v3, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v3

    .line 895
    :try_start_0
    iget-object v0, v1, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    iget v4, v1, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    invoke-virtual {v0, v4, v11}, Lcom/android/server/input/InputGestureManager;->getCustomGestureForKeyEvent(ILandroid/view/KeyEvent;)Landroid/hardware/input/InputGestureData;

    move-result-object v0

    .line 897
    .local v0, "customGesture":Landroid/hardware/input/InputGestureData;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    if-nez v0, :cond_28

    .line 899
    return v10

    .line 901
    :cond_28
    filled-new-array {v12}, [I

    move-result-object v3

    .line 902
    invoke-virtual {v0}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/input/InputGestureData$Action;->keyGestureType()I

    move-result v5

    .line 904
    invoke-virtual {v0}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v10

    .line 901
    const/4 v6, 0x2

    const/4 v9, 0x0

    move-object/from16 v8, p1

    move/from16 v4, v19

    .end local v19    # "metaState":I
    .restart local v4    # "metaState":I
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 905
    return v14

    .line 897
    .end local v0    # "customGesture":Landroid/hardware/input/InputGestureData;
    .end local v4    # "metaState":I
    .restart local v19    # "metaState":I
    :catchall_0
    move-exception v0

    move/from16 v4, v19

    .end local v19    # "metaState":I
    .restart local v4    # "metaState":I
    :goto_9
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_9

    .line 907
    .end local v4    # "metaState":I
    .restart local v19    # "metaState":I
    :cond_29
    return v10

    :sswitch_data_0
    .sparse-switch
        0x39 -> :sswitch_15
        0x3a -> :sswitch_15
        0x3d -> :sswitch_14
        0x53 -> :sswitch_13
        0x54 -> :sswitch_12
        0x73 -> :sswitch_11
        0x75 -> :sswitch_10
        0x76 -> :sswitch_10
        0xb0 -> :sswitch_f
        0xbb -> :sswitch_e
        0xcc -> :sswitch_d
        0xdb -> :sswitch_c
        0xdc -> :sswitch_b
        0xdd -> :sswitch_b
        0xe7 -> :sswitch_a
        0x11c -> :sswitch_9
        0x131 -> :sswitch_8
        0x132 -> :sswitch_7
        0x133 -> :sswitch_6
        0x134 -> :sswitch_5
        0x135 -> :sswitch_5
        0x136 -> :sswitch_5
        0x137 -> :sswitch_5
        0x138 -> :sswitch_4
        0x13e -> :sswitch_3
        0x142 -> :sswitch_2
        0x144 -> :sswitch_1
        0x145 -> :sswitch_0
    .end sparse-switch
.end method

.method private isDefaultDisplayOn()Z
    .locals 2

    .line 1073
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1074
    .local v0, "defaultDisplay":Landroid/view/Display;
    if-nez v0, :cond_0

    .line 1075
    return v1

    .line 1077
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    invoke-static {v1}, Landroid/view/Display;->isOnState(I)Z

    move-result v1

    return v1
.end method

.method private synthetic lambda$initKeyGestures$0(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/input/KeyGestureEvent;
    .param p2, "focusedToken"    # Landroid/os/IBinder;

    .line 478
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result v0

    const/16 v1, 0x37

    if-ne v0, v1, :cond_1

    .line 480
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    .line 483
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 484
    invoke-direct {p0}, Lcom/android/server/input/KeyGestureController;->getAccessibilityShortcutTimeout()J

    move-result-wide v2

    .line 482
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 489
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received a key gesture "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " that was not registered by this handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyGestureController"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_0
    return-void
.end method

.method private loadInputGestures(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 1381
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    monitor-enter v0

    .line 1382
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/input/InputGestureManager;->removeAllCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)V

    .line 1383
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/input/InputDataStore;->loadInputGestures(I)Ljava/util/List;

    move-result-object v1

    .line 1385
    .local v1, "inputGestureDataList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputGestureData;

    .line 1386
    .local v3, "inputGestureData":Landroid/hardware/input/InputGestureData;
    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/input/InputGestureManager;->addCustomInputGesture(ILandroid/hardware/input/InputGestureData;)I

    .line 1387
    nop

    .end local v3    # "inputGestureData":Landroid/hardware/input/InputGestureData;
    goto :goto_0

    .line 1388
    .end local v1    # "inputGestureDataList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    .line 1389
    return-void

    .line 1388
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyAllListeners(Landroid/hardware/input/AidlKeyGestureEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/input/AidlKeyGestureEvent;

    .line 1100
    sget-boolean v0, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1101
    const-string v0, "KeyGestureController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key gesture event occurred, event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1106
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->onKeyGestureEvent(Landroid/hardware/input/AidlKeyGestureEvent;)V

    .line 1105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1108
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1105
    .restart local v1    # "i":I
    :cond_1
    nop

    .line 1108
    .end local v1    # "i":I
    monitor-exit v0

    .line 1109
    return-void

    .line 1108
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyKeyGestureEvent(Landroid/hardware/input/AidlKeyGestureEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/input/AidlKeyGestureEvent;

    .line 1082
    iget v0, p1, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    invoke-direct {p0, v0}, Lcom/android/server/input/KeyGestureController;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 1083
    .local v0, "device":Landroid/view/InputDevice;
    if-nez v0, :cond_0

    .line 1084
    return-void

    .line 1086
    :cond_0
    new-instance v1, Landroid/hardware/input/KeyGestureEvent;

    invoke-direct {v1, p1}, Landroid/hardware/input/KeyGestureEvent;-><init>(Landroid/hardware/input/AidlKeyGestureEvent;)V

    .line 1087
    .local v1, "keyGestureEvent":Landroid/hardware/input/KeyGestureEvent;
    iget v2, p1, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1088
    iget-object v2, p1, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    iget v3, p1, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    .line 1089
    invoke-virtual {v1}, Landroid/hardware/input/KeyGestureEvent;->getLogEvent()I

    move-result v4

    .line 1088
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/input/KeyboardMetricsCollector;->logKeyboardSystemsEventReportedAtom(Landroid/view/InputDevice;[III)V

    .line 1091
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/input/KeyGestureController;->notifyAllListeners(Landroid/hardware/input/AidlKeyGestureEvent;)V

    .line 1092
    :goto_0
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_2

    .line 1093
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 1095
    :cond_2
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1096
    return-void
.end method

.method private onKeyGestureEventListenerDied(I)V
    .locals 2
    .param p1, "pid"    # I

    .line 1244
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1245
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1246
    monitor-exit v0

    .line 1247
    return-void

    .line 1246
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onKeyGestureHandlerRemoved(I)V
    .locals 3
    .param p1, "pid"    # I

    .line 1361
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1362
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1363
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1364
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1365
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_1

    .line 1368
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1363
    .restart local v1    # "i":I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 1368
    .end local v1    # "i":I
    monitor-exit v0

    .line 1369
    return-void

    .line 1368
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private persistInputGestures(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1372
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    monitor-enter v0

    .line 1373
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    .line 1374
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/input/InputGestureManager;->getCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)Ljava/util/List;

    move-result-object v1

    .line 1376
    .local v1, "inputGestureDataList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/input/InputDataStore;->saveInputGestures(ILjava/util/List;)V

    .line 1377
    .end local v1    # "inputGestureDataList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    monitor-exit v0

    .line 1378
    return-void

    .line 1377
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldIgnoreGestureEventForVisibleBackgroundUser(II)Z
    .locals 5
    .param p1, "gestureType"    # I
    .param p2, "displayId"    # I

    .line 1009
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v0

    .line 1011
    .local v0, "displayAssignedUserId":I
    sget-object v1, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1012
    :try_start_0
    iget v2, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    .line 1013
    .local v2, "currentUserId":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1014
    if-eq v2, v0, :cond_1

    .line 1015
    invoke-static {p1}, Landroid/hardware/input/KeyGestureEvent;->isVisibleBackgrounduserAllowedGesture(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1016
    sget-boolean v1, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1017
    const-string v1, "KeyGestureController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignored gesture event ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] for visible background user ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1022
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 1013
    .end local v2    # "currentUserId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private shouldIgnoreKeyEventForVisibleBackgroundUser(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 509
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 510
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    .line 509
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v0

    .line 512
    .local v0, "displayAssignedUserId":I
    sget-object v1, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 513
    :try_start_0
    iget v2, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    .line 514
    .local v2, "currentUserId":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    if-eq v2, v0, :cond_1

    .line 516
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->isVisibleBackgroundUserAllowedKey(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 517
    sget-boolean v1, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 518
    const-string v1, "KeyGestureController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignored key event ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] for visible background user ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 523
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 514
    .end local v2    # "currentUserId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public addCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "inputGestureData"    # Landroid/hardware/input/AidlInputGestureData;

    .line 1194
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    new-instance v1, Landroid/hardware/input/InputGestureData;

    invoke-direct {v1, p2}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/input/InputGestureManager;->addCustomInputGesture(ILandroid/hardware/input/InputGestureData;)I

    move-result v0

    .line 1196
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1197
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1199
    :cond_0
    return v0
.end method

.method applyInputGesturesBackupPayload([BI)V
    .locals 5
    .param p1, "payload"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1261
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1263
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    monitor-enter v1

    .line 1264
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/server/input/InputDataStore;->readInputGesturesXml(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v2

    .line 1265
    .local v2, "inputGestureDataList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1266
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputGestureData;

    .line 1267
    .local v3, "inputGestureData":Landroid/hardware/input/InputGestureData;
    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v4, p2, v3}, Lcom/android/server/input/InputGestureManager;->addCustomInputGesture(ILandroid/hardware/input/InputGestureData;)I

    .line 1268
    .end local v3    # "inputGestureData":Landroid/hardware/input/InputGestureData;
    goto :goto_0

    .line 1269
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1270
    return-void

    .line 1265
    .end local v2    # "inputGestureDataList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 1493
    const-string v0, "KeyGestureController:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1494
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentUserId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSystemPid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mSystemPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPendingMetaAction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPendingCapsLockToggle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPendingHideRecentSwitcher = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSearchKeyBehavior = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mSearchKeyBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSettingsKeyBehavior = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRingerToggleChord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mRingerToggleChord:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPowerVolUpBehavior = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mPowerVolUpBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1504
    const-string/jumbo v0, "mKeyGestureEventListenerRecords = {"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1505
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1506
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1507
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1508
    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1509
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    .line 1510
    const-string v3, ", "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1513
    .end local v1    # "size":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v1

    goto/16 :goto_6

    .line 1507
    .restart local v1    # "size":I
    .restart local v2    # "i":I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1513
    .end local v1    # "size":I
    .end local v2    # "i":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1514
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1515
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1516
    :try_start_1
    const-string/jumbo v0, "mKeyGestureHandlerRecords = {"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1517
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1518
    .local v0, "size":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1519
    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1520
    .local v3, "pid":I
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1521
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_2

    .line 1522
    const-string v4, ", "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 1528
    .end local v0    # "size":I
    .end local v2    # "i":I
    .end local v3    # "pid":I
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 1518
    .restart local v0    # "size":I
    .restart local v2    # "i":I
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    nop

    .line 1525
    .end local v2    # "i":I
    const-string/jumbo v2, "}"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSupportedKeyGestures = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    .line 1527
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v3

    .line 1526
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1528
    .end local v0    # "size":I
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1530
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1531
    const-string v0, "Last handled KeyGestureEvents: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1533
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/KeyGestureEvent;

    .line 1534
    .local v1, "ev":Landroid/hardware/input/KeyGestureEvent;
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1535
    .end local v1    # "ev":Landroid/hardware/input/KeyGestureEvent;
    goto :goto_4

    .line 1536
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1537
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/KeyCombinationManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1538
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v0, p1}, Lcom/android/server/input/AppLaunchShortcutManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1539
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputGestureManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1540
    return-void

    .line 1528
    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1513
    :goto_6
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getAppLaunchBookmarks()[Landroid/hardware/input/AidlInputGestureData;
    .locals 4

    .line 1235
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v0}, Lcom/android/server/input/AppLaunchShortcutManager;->getBookmarks()Ljava/util/List;

    move-result-object v0

    .line 1236
    .local v0, "bookmarks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/input/AidlInputGestureData;

    .line 1237
    .local v1, "result":[Landroid/hardware/input/AidlInputGestureData;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1238
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputGestureData;

    invoke-virtual {v3}, Landroid/hardware/input/InputGestureData;->getAidlData()Landroid/hardware/input/AidlInputGestureData;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1237
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1240
    .end local v2    # "i":I
    return-object v1
.end method

.method public getBookmarks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/input/InputGestureData;",
            ">;"
        }
    .end annotation

    .line 1357
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v0}, Lcom/android/server/input/AppLaunchShortcutManager;->getBookmarks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)[Landroid/hardware/input/AidlInputGestureData;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "filter"    # Landroid/hardware/input/InputGestureData$Filter;

    .line 1224
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputGestureManager;->getCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)Ljava/util/List;

    move-result-object v0

    .line 1226
    .local v0, "customGestures":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/input/AidlInputGestureData;

    .line 1227
    .local v1, "result":[Landroid/hardware/input/AidlInputGestureData;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1228
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputGestureData;

    invoke-virtual {v3}, Landroid/hardware/input/InputGestureData;->getAidlData()Landroid/hardware/input/AidlInputGestureData;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1227
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1230
    .end local v2    # "i":I
    return-object v1
.end method

.method public getInputGesture(ILandroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/AidlInputGestureData;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "trigger"    # Landroid/hardware/input/AidlInputGestureData$Trigger;

    .line 1182
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    .line 1183
    invoke-static {p2}, Landroid/hardware/input/InputGestureData;->createTriggerFromAidlTrigger(Landroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v1

    .line 1182
    invoke-virtual {v0, p1, v1}, Lcom/android/server/input/InputGestureManager;->getInputGesture(ILandroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData;

    move-result-object v0

    .line 1184
    .local v0, "gestureData":Landroid/hardware/input/InputGestureData;
    if-nez v0, :cond_0

    .line 1185
    const/4 v1, 0x0

    return-object v1

    .line 1187
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/input/InputGestureData;->getAidlData()Landroid/hardware/input/AidlInputGestureData;

    move-result-object v1

    return-object v1
.end method

.method getInputGestureBackupPayload(I)[B
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1250
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    .line 1251
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/input/InputGestureManager;->getCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)Ljava/util/List;

    move-result-object v0

    .line 1252
    .local v0, "inputGestureDataList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1253
    .local v1, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    monitor-enter v2

    .line 1254
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4, v0}, Lcom/android/server/input/InputDataStore;->writeInputGestureXml(Ljava/io/OutputStream;ZLjava/util/List;)V

    .line 1255
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1256
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 1255
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public handleKeyGesture(I[III)V
    .locals 9
    .param p1, "deviceId"    # I
    .param p2, "keycodes"    # [I
    .param p3, "modifierState"    # I
    .param p4, "gestureType"    # I

    .line 1037
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "deviceId":I
    .end local p2    # "keycodes":[I
    .end local p3    # "modifierState":I
    .end local p4    # "gestureType":I
    .local v1, "deviceId":I
    .local v2, "keycodes":[I
    .local v3, "modifierState":I
    .local v4, "gestureType":I
    invoke-direct/range {v0 .. v8}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[IIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object p1

    .line 1040
    .local p1, "event":Landroid/hardware/input/AidlKeyGestureEvent;
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V

    .line 1041
    return-void
.end method

.method handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V
    .locals 10
    .param p1, "deviceId"    # I
    .param p2, "keycodes"    # [I
    .param p3, "modifierState"    # I
    .param p4, "gestureType"    # I
    .param p5, "action"    # I
    .param p6, "displayId"    # I
    .param p7, "focusedToken"    # Landroid/os/IBinder;
    .param p8, "flags"    # I
    .param p9, "appLaunchData"    # Landroid/hardware/input/AppLaunchData;

    .line 983
    nop

    .line 984
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[IIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object v9

    .line 983
    move-object/from16 v1, p7

    invoke-direct {p0, v9, v1}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V

    .line 986
    return-void
.end method

.method public handleTouchpadGesture(I)V
    .locals 3
    .param p1, "touchpadGestureType"    # I

    .line 1046
    sget-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1047
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    iget v2, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/input/InputGestureManager;->getCustomGestureForTouchpadGesture(II)Landroid/hardware/input/InputGestureData;

    move-result-object v1

    .line 1049
    .local v1, "customGesture":Landroid/hardware/input/InputGestureData;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    if-nez v1, :cond_0

    .line 1051
    return-void

    .line 1053
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputGestureData$Action;->keyGestureType()I

    move-result v0

    .line 1054
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v2

    .line 1053
    invoke-direct {p0, v0, v2}, Lcom/android/server/input/KeyGestureController;->handleTouchpadGesture(ILandroid/hardware/input/AppLaunchData;)V

    .line 1055
    return-void

    .line 1049
    .end local v1    # "customGesture":Landroid/hardware/input/InputGestureData;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .locals 16
    .param p1, "focusedToken"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 530
    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 531
    .local v1, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    .line 532
    .local v2, "deviceId":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    .line 533
    .local v3, "flags":I
    const-wide/16 v4, -0x1

    .line 534
    .local v4, "keyConsumed":J
    const-wide/16 v6, 0x0

    .line 536
    .local v6, "keyNotConsumed":J
    invoke-static {}, Landroid/hardware/input/InputSettings;->doesKeyGestureEventHandlerSupportMultiKeyGestures()Z

    move-result v8

    const-wide/16 v9, -0x1

    if-eqz v8, :cond_1

    .line 537
    iget-object v8, v0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    move-object/from16 v11, p2

    invoke-virtual {v8, v11}, Lcom/android/server/policy/KeyCombinationManager;->isKeyConsumed(Landroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 538
    return-wide v9

    .line 541
    :cond_0
    and-int/lit16 v8, v3, 0x400

    if-nez v8, :cond_2

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 543
    .local v12, "now":J
    iget-object v8, v0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v8, v1}, Lcom/android/server/policy/KeyCombinationManager;->getKeyInterceptTimeout(I)J

    move-result-wide v14

    .line 545
    .local v14, "interceptTimeout":J
    cmp-long v8, v12, v14

    if-gez v8, :cond_2

    .line 546
    sub-long v8, v14, v12

    return-wide v8

    .line 536
    .end local v12    # "now":J
    .end local v14    # "interceptTimeout":J
    :cond_1
    move-object/from16 v11, p2

    .line 551
    :cond_2
    iget-object v8, v0, Lcom/android/server/input/KeyGestureController;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 552
    .local v8, "consumedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v8, :cond_3

    .line 553
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    move-object v8, v12

    .line 554
    iget-object v12, v0, Lcom/android/server/input/KeyGestureController;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v12, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 557
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/android/server/input/KeyGestureController;->interceptSystemKeysAndShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 558
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v12

    if-nez v12, :cond_4

    .line 559
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 560
    return-wide v9

    .line 563
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    .line 564
    .local v12, "needToConsumeKey":Z
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    invoke-virtual {v11}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 565
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 566
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 567
    iget-object v13, v0, Lcom/android/server/input/KeyGestureController;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 571
    :cond_6
    if-eqz v12, :cond_7

    goto :goto_0

    :cond_7
    const-wide/16 v9, 0x0

    :goto_0
    return-wide v9
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 496
    iget-boolean v0, p0, Lcom/android/server/input/KeyGestureController;->mVisibleBackgroundUsersEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/input/KeyGestureController;->shouldIgnoreKeyEventForVisibleBackgroundUser(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    return v1

    .line 499
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputSettings;->doesKeyGestureEventHandlerSupportMultiKeyGestures()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_3

    .line 501
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 502
    .local v0, "interactive":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/input/KeyGestureController;->isDefaultDisplayOn()Z

    move-result v3

    .line 503
    .local v3, "isDefaultDisplayOn":Z
    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v4, p1, v1}, Lcom/android/server/policy/KeyCombinationManager;->interceptKey(Landroid/view/KeyEvent;Z)Z

    move-result v1

    return v1

    .line 505
    .end local v0    # "interactive":Z
    .end local v3    # "isDefaultDisplayOn":Z
    :cond_3
    return v1
.end method

.method interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z
    .locals 16
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "focusedToken"    # Landroid/os/IBinder;

    .line 911
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 912
    .local v0, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 913
    .local v1, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 914
    .local v2, "down":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v5

    .line 915
    .local v5, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v7

    .line 916
    .local v7, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v12

    .line 918
    .local v12, "displayId":I
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    .line 945
    :sswitch_0
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 946
    filled-new-array {v0}, [I

    move-result-object v8

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x2

    move-object/from16 v6, p0

    move-object/from16 v13, p2

    invoke-virtual/range {v6 .. v15}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_2

    .line 953
    :sswitch_1
    if-eqz v2, :cond_2

    invoke-static {v5}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    .line 954
    filled-new-array {v0}, [I

    move-result-object v8

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3d

    const/4 v11, 0x2

    move-object/from16 v6, p0

    move-object/from16 v13, p2

    invoke-virtual/range {v6 .. v15}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_2

    .line 920
    :sswitch_2
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 922
    and-int/lit16 v6, v5, -0xc2

    const/16 v8, 0x1000

    invoke-static {v6, v8}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 924
    filled-new-array {v0}, [I

    move-result-object v6

    .line 925
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 926
    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    or-int/lit16 v9, v3, 0x1000

    .line 924
    const/16 v10, 0x17

    const/4 v11, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v13, p2

    move-object v8, v6

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_2

    .line 934
    :sswitch_3
    if-eqz v2, :cond_2

    const/16 v3, 0x1002

    invoke-static {v5, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 937
    filled-new-array {v0}, [I

    move-result-object v8

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v9, 0x1002

    const/16 v10, 0x3c

    const/4 v11, 0x2

    move-object/from16 v6, p0

    move-object/from16 v13, p2

    invoke-virtual/range {v6 .. v15}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    .line 962
    :cond_2
    :goto_2
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x36 -> :sswitch_3
        0x3e -> :sswitch_2
        0x6f -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method public notifyKeyGestureCompleted(I[III)V
    .locals 9
    .param p1, "deviceId"    # I
    .param p2, "keycodes"    # [I
    .param p3, "modifierState"    # I
    .param p4, "gestureType"    # I

    .line 1029
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "deviceId":I
    .end local p2    # "keycodes":[I
    .end local p3    # "modifierState":I
    .end local p4    # "gestureType":I
    .local v1, "deviceId":I
    .local v2, "keycodes":[I
    .local v3, "modifierState":I
    .local v4, "gestureType":I
    invoke-direct/range {v0 .. v8}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[IIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object p1

    .line 1032
    .local p1, "event":Landroid/hardware/input/AidlKeyGestureEvent;
    iget-object p2, v0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1033
    return-void
.end method

.method public registerKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;I)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/IKeyGestureEventListener;
    .param p2, "pid"    # I

    .line 1144
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1145
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1149
    new-instance v1, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;-><init>(Lcom/android/server/input/KeyGestureController;ILandroid/hardware/input/IKeyGestureEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    .local v1, "record":Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IKeyGestureEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1154
    nop

    .line 1155
    :try_start_2
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1156
    .end local v1    # "record":Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;
    monitor-exit v0

    .line 1157
    return-void

    .line 1156
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1152
    .restart local v1    # "record":Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;
    :catch_0
    move-exception v2

    nop

    .line 1153
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .end local p1    # "listener":Landroid/hardware/input/IKeyGestureEventListener;
    .end local p2    # "pid":I
    throw v3

    .line 1146
    .end local v1    # "record":Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .restart local p1    # "listener":Landroid/hardware/input/IKeyGestureEventListener;
    .restart local p2    # "pid":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The calling process has already registered a KeyGestureEventListener."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .end local p1    # "listener":Landroid/hardware/input/IKeyGestureEventListener;
    .end local p2    # "pid":I
    throw v1

    .line 1156
    .restart local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .restart local p1    # "listener":Landroid/hardware/input/IKeyGestureEventListener;
    .restart local p2    # "pid":I
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public registerKeyGestureHandler([ILandroid/hardware/input/IKeyGestureHandler;I)V
    .locals 6
    .param p1, "keyGesturesToHandle"    # [I
    .param p2, "handler"    # Landroid/hardware/input/IKeyGestureHandler;
    .param p3, "pid"    # I

    .line 1305
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1306
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1310
    array-length v1, p1

    if-eqz v1, :cond_3

    .line 1313
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    .line 1314
    .local v4, "gestureType":I
    iget-object v5, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_0

    .line 1313
    .end local v4    # "gestureType":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1315
    .restart local v4    # "gestureType":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key gesture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is already registered by pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    .line 1317
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .end local p1    # "keyGesturesToHandle":[I
    .end local p2    # "handler":Landroid/hardware/input/IKeyGestureHandler;
    .end local p3    # "pid":I
    throw v1

    .line 1330
    .end local v4    # "gestureType":I
    .restart local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .restart local p1    # "keyGesturesToHandle":[I
    .restart local p2    # "handler":Landroid/hardware/input/IKeyGestureHandler;
    .restart local p3    # "pid":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1320
    :cond_1
    new-instance v1, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;-><init>(Lcom/android/server/input/KeyGestureController;ILandroid/hardware/input/IKeyGestureHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1322
    .local v1, "record":Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;
    :try_start_1
    invoke-interface {p2}, Landroid/hardware/input/IKeyGestureHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1325
    nop

    .line 1326
    :try_start_2
    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1327
    array-length v3, p1

    :goto_1
    nop

    nop

    if-ge v2, v3, :cond_2

    aget v4, p1, v2

    .line 1328
    .restart local v4    # "gestureType":I
    iget-object v5, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1327
    .end local v4    # "gestureType":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1330
    .end local v1    # "record":Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;
    :cond_2
    monitor-exit v0

    .line 1331
    return-void

    .line 1323
    .restart local v1    # "record":Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;
    :catch_0
    move-exception v2

    nop

    .line 1324
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .end local p1    # "keyGesturesToHandle":[I
    .end local p2    # "handler":Landroid/hardware/input/IKeyGestureHandler;
    .end local p3    # "pid":I
    throw v3

    .line 1311
    .end local v1    # "record":Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .restart local p1    # "keyGesturesToHandle":[I
    .restart local p2    # "handler":Landroid/hardware/input/IKeyGestureHandler;
    .restart local p3    # "pid":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No key gestures provided for pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .end local p1    # "keyGesturesToHandle":[I
    .end local p2    # "handler":Landroid/hardware/input/IKeyGestureHandler;
    .end local p3    # "pid":I
    throw v1

    .line 1307
    .restart local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .restart local p1    # "keyGesturesToHandle":[I
    .restart local p2    # "handler":Landroid/hardware/input/IKeyGestureHandler;
    .restart local p3    # "pid":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The calling process has already registered a KeyGestureHandler."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .end local p1    # "keyGesturesToHandle":[I
    .end local p2    # "handler":Landroid/hardware/input/IKeyGestureHandler;
    .end local p3    # "pid":I
    throw v1

    .line 1330
    .restart local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .restart local p1    # "keyGesturesToHandle":[I
    .restart local p2    # "handler":Landroid/hardware/input/IKeyGestureHandler;
    .restart local p3    # "pid":I
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 1
    .param p1, "shortcutCode"    # J
    .param p3, "shortcutKeyReceiver"    # Lcom/android/internal/policy/IShortcutService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1353
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/AppLaunchShortcutManager;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 1354
    return-void
.end method

.method public removeAllCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "filter"    # Landroid/hardware/input/InputGestureData$Filter;

    .line 1217
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputGestureManager;->removeAllCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)V

    .line 1218
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1219
    return-void
.end method

.method public removeCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "inputGestureData"    # Landroid/hardware/input/AidlInputGestureData;

    .line 1206
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    new-instance v1, Landroid/hardware/input/InputGestureData;

    invoke-direct {v1, p2}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/input/InputGestureManager;->removeCustomInputGesture(ILandroid/hardware/input/InputGestureData;)I

    move-result v0

    .line 1208
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1209
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1211
    :cond_0
    return v0
.end method

.method public setCurrentUserId(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1059
    sget-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1060
    :try_start_0
    iput p1, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    .line 1061
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    .line 1063
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1064
    return-void

    .line 1061
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 1069
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 1070
    return-void
.end method

.method public systemRunning()V
    .locals 4

    .line 459
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mSettingsObserver:Lcom/android/server/input/KeyGestureController$SettingsObserver;

    invoke-static {v0}, Lcom/android/server/input/KeyGestureController$SettingsObserver;->-$$Nest$mobserve(Lcom/android/server/input/KeyGestureController$SettingsObserver;)V

    .line 460
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v0}, Lcom/android/server/input/AppLaunchShortcutManager;->init()V

    .line 461
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v1}, Lcom/android/server/input/AppLaunchShortcutManager;->getBookmarks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputGestureManager;->init(Ljava/util/List;)V

    .line 462
    invoke-direct {p0}, Lcom/android/server/input/KeyGestureController;->initKeyGestures()V

    .line 465
    sget-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_0
    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    .line 467
    .local v1, "userId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 470
    return-void

    .line 467
    .end local v1    # "userId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisterKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;I)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/IKeyGestureEventListener;
    .param p2, "pid"    # I

    .line 1162
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1163
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    .line 1164
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;

    .line 1165
    .local v1, "record":Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;
    if-eqz v1, :cond_1

    .line 1169
    iget-object v2, v1, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mListener:Landroid/hardware/input/IKeyGestureEventListener;

    invoke-interface {v2}, Landroid/hardware/input/IKeyGestureEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/hardware/input/IKeyGestureEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1173
    iget-object v2, v1, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mListener:Landroid/hardware/input/IKeyGestureEventListener;

    invoke-interface {v2}, Landroid/hardware/input/IKeyGestureEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1174
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1175
    .end local v1    # "record":Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;
    monitor-exit v0

    .line 1176
    return-void

    .line 1175
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1170
    .restart local v1    # "record":Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has a different registered KeyGestureEventListener."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .end local p1    # "listener":Landroid/hardware/input/IKeyGestureEventListener;
    .end local p2    # "pid":I
    throw v2

    .line 1166
    .restart local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .restart local p1    # "listener":Landroid/hardware/input/IKeyGestureEventListener;
    .restart local p2    # "pid":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has no registered KeyGestureEventListener."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .end local p1    # "listener":Landroid/hardware/input/IKeyGestureEventListener;
    .end local p2    # "pid":I
    throw v2

    .line 1175
    .end local v1    # "record":Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;
    .restart local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .restart local p1    # "listener":Landroid/hardware/input/IKeyGestureEventListener;
    .restart local p2    # "pid":I
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterKeyGestureHandler(Landroid/hardware/input/IKeyGestureHandler;I)V
    .locals 4
    .param p1, "handler"    # Landroid/hardware/input/IKeyGestureHandler;
    .param p2, "pid"    # I

    .line 1336
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1337
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;

    .line 1338
    .local v1, "record":Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;
    if-eqz v1, :cond_1

    .line 1342
    iget-object v2, v1, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {v2}, Landroid/hardware/input/IKeyGestureHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/hardware/input/IKeyGestureHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1346
    iget-object v2, v1, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {v2}, Landroid/hardware/input/IKeyGestureHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1347
    invoke-direct {p0, p2}, Lcom/android/server/input/KeyGestureController;->onKeyGestureHandlerRemoved(I)V

    .line 1348
    .end local v1    # "record":Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;
    monitor-exit v0

    .line 1349
    return-void

    .line 1348
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1343
    .restart local v1    # "record":Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has a different registered KeyGestureHandler."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .end local p1    # "handler":Landroid/hardware/input/IKeyGestureHandler;
    .end local p2    # "pid":I
    throw v2

    .line 1339
    .restart local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .restart local p1    # "handler":Landroid/hardware/input/IKeyGestureHandler;
    .restart local p2    # "pid":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has no registered KeyGestureHandler."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .end local p1    # "handler":Landroid/hardware/input/IKeyGestureHandler;
    .end local p2    # "pid":I
    throw v2

    .line 1348
    .end local v1    # "record":Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;
    .restart local p0    # "this":Lcom/android/server/input/KeyGestureController;
    .restart local p1    # "handler":Landroid/hardware/input/IKeyGestureHandler;
    .restart local p2    # "pid":I
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
