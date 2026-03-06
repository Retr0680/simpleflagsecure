.class public final Lcom/android/wm/shell/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/wm/shell/FeatureFlags; = null

.field public static final FLAG_BUBBLE_VIEW_INFO_EXECUTORS:Ljava/lang/String; = "com.android.wm.shell.bubble_view_info_executors"

.field public static final FLAG_ENABLE_AUTO_TASK_STACK_CONTROLLER:Ljava/lang/String; = "com.android.wm.shell.enable_auto_task_stack_controller"

.field public static final FLAG_ENABLE_BUBBLES_LONG_PRESS_NAV_HANDLE:Ljava/lang/String; = "com.android.wm.shell.enable_bubbles_long_press_nav_handle"

.field public static final FLAG_ENABLE_BUBBLE_ANYTHING:Ljava/lang/String; = "com.android.wm.shell.enable_bubble_anything"

.field public static final FLAG_ENABLE_BUBBLE_BAR:Ljava/lang/String; = "com.android.wm.shell.enable_bubble_bar"

.field public static final FLAG_ENABLE_BUBBLE_BAR_ON_PHONES:Ljava/lang/String; = "com.android.wm.shell.enable_bubble_bar_on_phones"

.field public static final FLAG_ENABLE_BUBBLE_STASHING:Ljava/lang/String; = "com.android.wm.shell.enable_bubble_stashing"

.field public static final FLAG_ENABLE_BUBBLE_TASK_VIEW_LISTENER:Ljava/lang/String; = "com.android.wm.shell.enable_bubble_task_view_listener"

.field public static final FLAG_ENABLE_BUBBLE_TO_FULLSCREEN:Ljava/lang/String; = "com.android.wm.shell.enable_bubble_to_fullscreen"

.field public static final FLAG_ENABLE_CREATE_ANY_BUBBLE:Ljava/lang/String; = "com.android.wm.shell.enable_create_any_bubble"

.field public static final FLAG_ENABLE_DYNAMIC_INSETS_FOR_APP_LAUNCH:Ljava/lang/String; = "com.android.wm.shell.enable_dynamic_insets_for_app_launch"

.field public static final FLAG_ENABLE_FLEXIBLE_SPLIT:Ljava/lang/String; = "com.android.wm.shell.enable_flexible_split"

.field public static final FLAG_ENABLE_FLEXIBLE_TWO_APP_SPLIT:Ljava/lang/String; = "com.android.wm.shell.enable_flexible_two_app_split"

.field public static final FLAG_ENABLE_GSF:Ljava/lang/String; = "com.android.wm.shell.enable_gsf"

.field public static final FLAG_ENABLE_MAGNETIC_SPLIT_DIVIDER:Ljava/lang/String; = "com.android.wm.shell.enable_magnetic_split_divider"

.field public static final FLAG_ENABLE_NEW_BUBBLE_ANIMATIONS:Ljava/lang/String; = "com.android.wm.shell.enable_new_bubble_animations"

.field public static final FLAG_ENABLE_OPTIONAL_BUBBLE_OVERFLOW:Ljava/lang/String; = "com.android.wm.shell.enable_optional_bubble_overflow"

.field public static final FLAG_ENABLE_PIP2:Ljava/lang/String; = "com.android.wm.shell.enable_pip2"

.field public static final FLAG_ENABLE_PIP_UMO_EXPERIENCE:Ljava/lang/String; = "com.android.wm.shell.enable_pip_umo_experience"

.field public static final FLAG_ENABLE_RECENTS_BOOKEND_TRANSITION:Ljava/lang/String; = "com.android.wm.shell.enable_recents_bookend_transition"

.field public static final FLAG_ENABLE_RETRIEVABLE_BUBBLES:Ljava/lang/String; = "com.android.wm.shell.enable_retrievable_bubbles"

.field public static final FLAG_ENABLE_SHELL_TOP_TASK_TRACKING:Ljava/lang/String; = "com.android.wm.shell.enable_shell_top_task_tracking"

.field public static final FLAG_ENABLE_TASKBAR_NAVBAR_UNIFICATION:Ljava/lang/String; = "com.android.wm.shell.enable_taskbar_navbar_unification"

.field public static final FLAG_ENABLE_TASKBAR_ON_PHONES:Ljava/lang/String; = "com.android.wm.shell.enable_taskbar_on_phones"

.field public static final FLAG_ENABLE_TASK_VIEW_CONTROLLER_CLEANUP:Ljava/lang/String; = "com.android.wm.shell.enable_task_view_controller_cleanup"

.field public static final FLAG_ENABLE_TINY_TASKBAR:Ljava/lang/String; = "com.android.wm.shell.enable_tiny_taskbar"

.field public static final FLAG_FIX_MISSING_USER_CHANGE_CALLBACKS:Ljava/lang/String; = "com.android.wm.shell.fix_missing_user_change_callbacks"

.field public static final FLAG_ONLY_REUSE_BUBBLED_TASK_WHEN_LAUNCHED_FROM_BUBBLE:Ljava/lang/String; = "com.android.wm.shell.only_reuse_bubbled_task_when_launched_from_bubble"

.field public static final FLAG_TASK_VIEW_REPOSITORY:Ljava/lang/String; = "com.android.wm.shell.task_view_repository"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 269
    new-instance v0, Lcom/android/wm/shell/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/wm/shell/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/wm/shell/Flags;->FEATURE_FLAGS:Lcom/android/wm/shell/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bubbleViewInfoExecutors()Z
    .locals 1

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public static enableAutoTaskStackController()Z
    .locals 1

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public static enableBubbleAnything()Z
    .locals 1

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public static enableBubbleBar()Z
    .locals 1

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public static enableBubbleBarOnPhones()Z
    .locals 1

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public static enableBubbleStashing()Z
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public static enableBubbleTaskViewListener()Z
    .locals 1

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public static enableBubbleToFullscreen()Z
    .locals 1

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public static enableBubblesLongPressNavHandle()Z
    .locals 1

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public static enableCreateAnyBubble()Z
    .locals 1

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public static enableDynamicInsetsForAppLaunch()Z
    .locals 1

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public static enableFlexibleSplit()Z
    .locals 1

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public static enableFlexibleTwoAppSplit()Z
    .locals 1

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public static enableGsf()Z
    .locals 1

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public static enableMagneticSplitDivider()Z
    .locals 1

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public static enableNewBubbleAnimations()Z
    .locals 1

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public static enableOptionalBubbleOverflow()Z
    .locals 1

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public static enablePip2()Z
    .locals 1

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public static enablePipUmoExperience()Z
    .locals 1

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public static enableRecentsBookendTransition()Z
    .locals 1

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public static enableRetrievableBubbles()Z
    .locals 1

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public static enableShellTopTaskTracking()Z
    .locals 1

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public static enableTaskViewControllerCleanup()Z
    .locals 1

    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public static enableTaskbarNavbarUnification()Z
    .locals 1

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public static enableTaskbarOnPhones()Z
    .locals 1

    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public static enableTinyTaskbar()Z
    .locals 1

    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public static fixMissingUserChangeCallbacks()Z
    .locals 1

    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public static onlyReuseBubbledTaskWhenLaunchedFromBubble()Z
    .locals 1

    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public static taskViewRepository()Z
    .locals 1

    .line 266
    const/4 v0, 0x0

    return v0
.end method
