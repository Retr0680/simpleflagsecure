.class public Lcom/android/server/wm/BackgroundActivityStartController;
.super Ljava/lang/Object;
.source "BackgroundActivityStartController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;,
        Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;,
        Lcom/android/server/wm/BackgroundActivityStartController$BalState;,
        Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;,
        Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;,
        Lcom/android/server/wm/BackgroundActivityStartController$BalCode;
    }
.end annotation


# static fields
.field public static final ACTIVITY_OPTIONS_SYSTEM_DEFINED:Landroid/app/ActivityOptions;

.field private static final ASM_GRACEPERIOD_MAX_REPEATS:I = 0x5

.field private static final ASM_GRACEPERIOD_TIMEOUT_MS:J = 0xbb8L

.field static final AUTO_OPT_IN_CALL_FOR_RESULT:Ljava/lang/String; = "callForResult"

.field static final AUTO_OPT_IN_COMPAT:Ljava/lang/String; = "compatibility"

.field static final AUTO_OPT_IN_NOT_PENDING_INTENT:Ljava/lang/String; = "notPendingIntent"

.field static final AUTO_OPT_IN_SAME_UID:Ljava/lang/String; = "sameUid"

.field static final BAL_ALLOW_ALLOWLISTED_COMPONENT:I = 0x3

.field static final BAL_ALLOW_ALLOWLISTED_UID:I = 0x2

.field static final BAL_ALLOW_BOUND_BY_FOREGROUND:I = 0xd

.field static final BAL_ALLOW_DEFAULT:I = 0x1

.field static final BAL_ALLOW_FOREGROUND:I = 0x9

.field static final BAL_ALLOW_GRACE_PERIOD:I = 0x8

.field static final BAL_ALLOW_NON_APP_VISIBLE_WINDOW:I = 0xb

.field static final BAL_ALLOW_PENDING_INTENT:I = 0x5

.field static final BAL_ALLOW_PERMISSION:I = 0x6

.field static final BAL_ALLOW_SAW_PERMISSION:I = 0x7

.field static final BAL_ALLOW_SDK_SANDBOX:I = 0xa

.field static final BAL_ALLOW_TOKEN:I = 0xc

.field static final BAL_ALLOW_VISIBLE_WINDOW:I = 0x4

.field static final BAL_BLOCK:I = 0x7f

.field private static final BAL_CHECK_BACKGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

.field private static final BAL_CHECK_FOREGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

.field private static final DEFAULT_RESCIND_BAL_PRIVILEGES_FROM_PENDING_INTENT_CREATOR:J = 0x11abe8e7L

.field private static final NO_PROCESS_UID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mCheckCallerHasBackgroundPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field private final mCheckCallerHasBgStartAppOp:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field private final mCheckCallerHasSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field private final mCheckCallerIsAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field private final mCheckCallerIsAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field private final mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field private final mCheckCallerProcessAllowsBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field private final mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field private final mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field private final mCheckRealCallerAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field private final mCheckRealCallerAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field private final mCheckRealCallerBalPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field private final mCheckRealCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field private final mCheckRealCallerProcessAllowsBalBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field private final mCheckRealCallerProcessAllowsBalForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field private final mCheckRealCallerSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field private final mCheckRealCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mStrictModeBalCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/IBackgroundActivityLaunchCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private final mTaskIdToFinishedActivity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;


# direct methods
.method public static synthetic $r8$lambda$0txmP7nEF0LrgLPG4AUjroyjecg(IIILcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$clearTopIfNeeded$20(IIILcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4XphJH50pbXG7XA_vyhxMUD02PI(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$checkActivityAllowedToClearTask$21(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6pV9vHbj0k0gwICnR9quSaNvtrY(Ljava/util/StringJoiner;Lcom/android/server/wm/Task;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$getDebugInfoForActivitySecurity$29(Ljava/util/StringJoiner;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9mD1MFsGNRxyY3OUy6EnJx1kz5o(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/util/function/Predicate;[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;ILcom/android/server/wm/TaskFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$checkTopActivityForAsm$24(Ljava/util/function/Predicate;[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;ILcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BSn_PZ1Gf7aRLCU8NHv6pxgvanA(Lcom/android/server/wm/BackgroundActivityStartController;ILandroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$addStrictModeCallback$0(ILandroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DhQDAQyQgw-XKj1Nh-wjYh-21vo(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$1(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$F6iaE2jcl2tpq3MAx3HO6Nibx_Q(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$4(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FJFLqdYoRSV-0g5di0PIFpH82xo(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$5(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FMo7NrtbDsWPz89uQRgB85HQ8l4(ILcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$checkTopActivityForAsm$22(ILcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KCH4emsy9MoEKCDjO_eBL_oxwTU(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$checkTopActivityForAsm$23(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Oj55gCcC-ZmBa1qdBpRJyeEgmWc(Ljava/util/StringJoiner;Ljava/util/function/Function;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$getDebugInfoForActivitySecurity$27(Ljava/util/StringJoiner;Ljava/util/function/Function;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R6w0O4KPPVd4sTu9TdTn2Gx0voo(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$16(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RlbspcKMeFIefBYHCbRzPx4zavI(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$9(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W1djLwQGgGetfpNERa3xUsGgpxA(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$10(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YEACyGi1QEkWj7IoZ-Dk1Us-EAU(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$6(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YcD5uswiD7bReEci-IdwP331IZY(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$13(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YmsGUOiGV30tgTdcBAXkvH1Rc5I(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$12(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$agwEK9qwrzNc6cV3naUd52zksR0(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$2(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ctWjo5OoBSE3eJa3g-llQ3bC1hc(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$14(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dI82Goc0QzXDA80mVbwB0t-0c7w(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$logAsmFailureAndCheckFeatureEnabled$18(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dfoBJHTz7ndC7TW6_aien8-ODpM(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$17(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fhzKZx2jwtcIfnwBzgvuYW0E5DU(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$11(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k2yOseZTc140OPCycC9m9cFSyAY(Ljava/util/StringJoiner;Ljava/util/function/Function;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$getDebugInfoForActivitySecurity$26(Ljava/util/StringJoiner;Ljava/util/function/Function;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kS7MK094THGkRDZroVab3BNNxY4(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$15(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mdknfWam_0rK4EOY75iDal7MnfI(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$getDebugInfoForActivitySecurity$25(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qwKE29ZgLVq82R1Dbs6thRoF194(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$7(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sSQXOx60Z_LKLOn6Zlt0mmNv2OM(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$3(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uLeRDh5znlPAtTl8IN5Og9EpWxQ(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$showToast$19(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uVjAnc6CEWSG0Erw3uRpeGN1dHs(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$8(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wQjHETe6MlBqjqRwygZZ1P35974(Ljava/util/StringJoiner;Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$getDebugInfoForActivitySecurity$28(Ljava/util/StringJoiner;Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmTaskIdToFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTopFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetService(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTargetSdk(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 119
    new-instance v0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    const/4 v3, 0x0

    const-wide/16 v4, 0x2710

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;-><init>(ZZZJ)V

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_FOREGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    .line 124
    new-instance v1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    const/4 v4, 0x1

    const-wide/16 v5, 0x2710

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;-><init>(ZZZJ)V

    sput-object v1, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_BACKGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    .line 141
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->ACTIVITY_OPTIONS_SYSTEM_DEFINED:Landroid/app/ActivityOptions;

    .line 140
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 1043
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1060
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1069
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda20;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1080
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1120
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBackgroundPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1128
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1137
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBgStartAppOp:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1152
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1155
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1176
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1190
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1202
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1206
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1209
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerBalPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1219
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1232
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda17;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1246
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 278
    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 279
    iput-object p2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 280
    return-void
.end method

.method private abortLaunch(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 5
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Background activity launch blocked! goo.gle/android-bal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    nop

    .line 884
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    .line 885
    .local v0, "verdict":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    nop

    .line 887
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->isPendingIntent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PendingIntent Activity start blocked in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". PendingIntent was created in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " could opt in to grant BAL privileges when sending. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 896
    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " could opt in to grant BAL privileges when creating."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 900
    :cond_1
    nop

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "The intent would have started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/content/Intent;

    move-result-object v2

    .line 901
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "abortDebugMessage":Ljava/lang/String;
    goto :goto_2

    .line 903
    .end local v1    # "abortDebugMessage":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity start blocked. The intent would have started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/content/Intent;

    move-result-object v2

    .line 904
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 906
    .restart local v1    # "abortDebugMessage":Ljava/lang/String;
    :goto_2
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->strictModeLaunchAborted(ILjava/lang/String;)V

    .line 907
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$mcallerIsRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 908
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->strictModeLaunchAborted(ILjava/lang/String;)V

    .line 911
    .end local v1    # "abortDebugMessage":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private allowBasedOnCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 863
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_0

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Background activity launch allowed based on caller. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0
.end method

.method private allowBasedOnRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 870
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_0

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Background activity launch allowed based on real caller. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0
.end method

.method private allowedByAsmGracePeriod(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;IZZ)Z
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "targetTask"    # Lcom/android/server/wm/Task;
    .param p4, "balCode"    # I
    .param p5, "taskToFront"    # Z
    .param p6, "avoidMoveTaskToFront"    # Z

    .line 1887
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-ne p4, v0, :cond_4

    .line 1889
    const/4 v0, 0x1

    if-eqz p5, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    iget v2, v2, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    if-ne v2, p1, :cond_0

    .line 1891
    return v0

    .line 1903
    :cond_0
    if-eqz p5, :cond_1

    if-eqz p6, :cond_4

    .line 1904
    :cond_1
    if-eqz p3, :cond_2

    .line 1905
    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    iget v3, p3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1906
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 1907
    .local v2, "finishedEntry":Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;
    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    if-ne v3, p1, :cond_2

    .line 1908
    return v0

    .line 1912
    .end local v2    # "finishedEntry":Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;
    :cond_2
    if-eqz p2, :cond_4

    .line 1913
    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 1914
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 1915
    .restart local v2    # "finishedEntry":Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;
    if-eqz v2, :cond_3

    iget v3, v2, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    if-ne v3, p1, :cond_3

    move v1, v0

    :cond_3
    return v1

    .line 1919
    .end local v2    # "finishedEntry":Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;
    :cond_4
    return v1
.end method

.method static balCodeToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "balCode"    # I

    .line 236
    sparse-switch p0, :sswitch_data_0

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :sswitch_0
    const-string v0, "BAL_BLOCK"

    goto :goto_0

    .line 239
    :sswitch_1
    const-string v0, "BAL_ALLOW_BOUND_BY_FOREGROUND"

    goto :goto_0

    .line 248
    :sswitch_2
    const-string v0, "BAL_ALLOW_TOKEN"

    goto :goto_0

    .line 243
    :sswitch_3
    const-string v0, "BAL_ALLOW_NON_APP_VISIBLE_WINDOW"

    goto :goto_0

    .line 247
    :sswitch_4
    const-string v0, "BAL_ALLOW_SDK_SANDBOX"

    goto :goto_0

    .line 241
    :sswitch_5
    const-string v0, "BAL_ALLOW_FOREGROUND"

    goto :goto_0

    .line 242
    :sswitch_6
    const-string v0, "BAL_ALLOW_GRACE_PERIOD"

    goto :goto_0

    .line 246
    :sswitch_7
    const-string v0, "BAL_ALLOW_SAW_PERMISSION"

    goto :goto_0

    .line 245
    :sswitch_8
    const-string v0, "BAL_ALLOW_PERMISSION"

    goto :goto_0

    .line 244
    :sswitch_9
    const-string v0, "BAL_ALLOW_PENDING_INTENT"

    goto :goto_0

    .line 249
    :sswitch_a
    const-string v0, "BAL_ALLOW_VISIBLE_WINDOW"

    goto :goto_0

    .line 237
    :sswitch_b
    const-string v0, "BAL_ALLOW_ALLOWLISTED_COMPONENT"

    goto :goto_0

    .line 238
    :sswitch_c
    const-string v0, "BAL_ALLOW_ALLOWLISTED_UID"

    goto :goto_0

    .line 240
    :sswitch_d
    const-string v0, "BAL_ALLOW_DEFAULT"

    .line 236
    :goto_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_c
        0x3 -> :sswitch_b
        0x4 -> :sswitch_a
        0x5 -> :sswitch_9
        0x6 -> :sswitch_8
        0x7 -> :sswitch_7
        0x8 -> :sswitch_6
        0x9 -> :sswitch_5
        0xa -> :sswitch_4
        0xb -> :sswitch_3
        0xc -> :sswitch_2
        0xd -> :sswitch_1
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method static balStartModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "startMode"    # I

    .line 256
    packed-switch p0, :pswitch_data_0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MODE_BACKGROUND_ACTIVITY_START_ALLOWED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 265
    :pswitch_0
    const-string v0, "MODE_BACKGROUND_ACTIVITY_START_ALLOW_IF_VISIBLE"

    goto :goto_0

    .line 263
    :pswitch_1
    const-string v0, "MODE_BACKGROUND_ACTIVITY_START_ALWAYS"

    goto :goto_0

    .line 261
    :pswitch_2
    const-string v0, "MODE_BACKGROUND_ACTIVITY_START_DENIED"

    goto :goto_0

    .line 257
    :pswitch_3
    const-string v0, "MODE_BACKGROUND_ACTIVITY_START_ALLOWED"

    goto :goto_0

    .line 259
    :pswitch_4
    const-string v0, "MODE_BACKGROUND_ACTIVITY_START_SYSTEM_DEFINED"

    goto :goto_0

    .line 260
    :pswitch_5
    const-string v0, "MODE_BACKGROUND_ACTIVITY_START_COMPAT"

    .line 256
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    .locals 7
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceUid"    # I
    .param p3, "bas"    # Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 1736
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1737
    invoke-virtual {p3}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->matchesSource()Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v0

    return-object v0

    .line 1741
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mAllowCrossUidActivitySwitchFromBelow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1742
    invoke-static {p3, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fputmTopActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;Z)V

    .line 1743
    invoke-virtual {p3}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->matchesSource()Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v0

    return-object v0

    .line 1746
    :cond_1
    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1747
    nop

    .line 1750
    return-object p3

    .line 1754
    :cond_2
    const-wide/32 v2, 0xdbe868a

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    invoke-static {v2, v3, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1755
    return-object p3

    .line 1759
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1760
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "Package name: "

    const-string v3, "ActivityTaskManager"

    if-nez v0, :cond_4

    .line 1761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    invoke-virtual {p3, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v1

    return-object v1

    .line 1765
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1768
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1770
    .local v5, "sourceUserId":I
    :try_start_0
    invoke-virtual {v4, v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1776
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 1778
    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->allowCrossUidActivitySwitchFromBelow:Z

    if-eqz v2, :cond_5

    move-object v2, p3

    goto :goto_0

    :cond_5
    invoke-virtual {p3, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v2

    :goto_0
    return-object v2

    .line 1772
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1773
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found for user "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    invoke-virtual {p3, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v2

    return-object v2
.end method

.method private checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "uid"    # I
    .param p3, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "bas"    # Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 1655
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    invoke-virtual {p4}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->matchesSource()Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v0

    return-object v0

    .line 1660
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1661
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_1

    .line 1662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activities for task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-virtual {p4, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v1

    return-object v1

    .line 1666
    :cond_1
    invoke-direct {p0, v0, p2, p4}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p4

    .line 1667
    invoke-static {p4}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1668
    return-object p4

    .line 1672
    :cond_2
    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1674
    invoke-virtual {p4}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->matchesSource()Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v1

    return-object v1

    .line 1679
    :cond_3
    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p3}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 1683
    .local v1, "topOfStackPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1684
    if-nez v0, :cond_4

    .line 1685
    return-object p4

    .line 1688
    :cond_4
    invoke-direct {p0, v0, p2, p4}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p4

    .line 1689
    invoke-static {p4}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1690
    return-object p4

    .line 1695
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    .line 1696
    .local v2, "taskFragment":Lcom/android/server/wm/TaskFragment;
    if-nez v2, :cond_6

    .line 1697
    return-object p4

    .line 1700
    :cond_6
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1701
    return-object p4

    .line 1705
    :cond_7
    filled-new-array {p4}, [Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v3

    .line 1706
    .local v3, "out":[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    new-instance v4, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v1, v3, p2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/util/function/Predicate;[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;I)V

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    .line 1712
    const/4 v4, 0x0

    aget-object v4, v3, v4

    return-object v4
.end method

.method private varargs evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 5
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;
    .param p2, "checks"    # [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1034
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 1035
    .local v2, "check":Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;
    invoke-interface {v2, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;->evaluate(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v3

    .line 1036
    .local v3, "verdict":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    sget-object v4, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-eq v3, v4, :cond_0

    .line 1037
    return-object v3

    .line 1036
    :cond_0
    nop

    .line 1034
    .end local v2    # "check":Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;
    .end local v3    # "verdict":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1040
    :cond_1
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object v0
.end method

.method private getDebugInfoForActivitySecurity(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;IIZZZZLcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .locals 17
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "targetRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "targetTask"    # Lcom/android/server/wm/Task;
    .param p5, "targetTopActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p6, "realCallingUid"    # I
    .param p7, "balCode"    # I
    .param p8, "enforceBlock"    # Z
    .param p9, "taskToFront"    # Z
    .param p10, "avoidMoveTaskToFront"    # Z
    .param p11, "allowedByGracePeriod"    # Z
    .param p12, "activityOptedIn"    # Lcom/android/server/wm/ActivityRecord;

    .line 1791
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    const-string v8, "[ASM] "

    .line 1792
    .local v8, "prefix":Ljava/lang/String;
    new-instance v9, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda4;

    invoke-direct {v9, v2, v5, v3}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 1804
    .local v9, "recordToString":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;>;"
    new-instance v10, Ljava/util/StringJoiner;

    const-string v11, "\n"

    invoke-direct {v10, v11}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 1805
    .local v10, "joiner":Ljava/util/StringJoiner;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ASM] ------ Activity Security "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " Debug Logging Start ------"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1806
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[ASM] Block Enabled: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1807
    const/4 v11, 0x1

    if-nez v7, :cond_0

    .line 1808
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ASM] Feature Flag Enabled: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1808
    invoke-virtual {v10, v13}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1810
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ASM] Mendel Override: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    invoke-static {}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->asmRestrictionsEnabledForAll()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1810
    invoke-virtual {v10, v13}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1813
    :cond_0
    const-string v13, "[ASM] ASM Version: 11"

    invoke-virtual {v10, v13}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1814
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ASM] System Time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1815
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ASM] Activity Opted In: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p12

    invoke-interface {v9, v14}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1817
    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 1818
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    if-ne v15, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    nop

    .line 1820
    .local v11, "targetTaskMatchesSourceTask":Z
    if-nez v2, :cond_2

    .line 1821
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[ASM] Source Package: "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1822
    invoke-direct {v0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move/from16 v15, p6

    invoke-virtual {v13, v15}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v13

    .line 1824
    .local v13, "realCallingPackage":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v8

    .end local v8    # "prefix":Ljava/lang/String;
    .local v16, "prefix":Ljava/lang/String;
    const-string v8, "[ASM] Real Calling Uid Package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1825
    .end local v13    # "realCallingPackage":Ljava/lang/String;
    goto/16 :goto_2

    .line 1826
    .end local v16    # "prefix":Ljava/lang/String;
    .restart local v8    # "prefix":Ljava/lang/String;
    :cond_2
    move/from16 v15, p6

    move-object/from16 v16, v8

    .end local v8    # "prefix":Ljava/lang/String;
    .restart local v16    # "prefix":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ASM] Source Record: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1827
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ASM] Source Launch Package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1828
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ASM] Source Launch Intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1829
    if-eqz v11, :cond_3

    .line 1830
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ASM] Source/Target Task: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1831
    const-string v7, "[ASM] Source/Target Task Stack: "

    invoke-virtual {v10, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 1833
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ASM] Source Task: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1834
    const-string v7, "[ASM] Source Task Stack: "

    invoke-virtual {v10, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1836
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    new-instance v8, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;

    invoke-direct {v8, v10, v9}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;-><init>(Ljava/util/StringJoiner;Ljava/util/function/Function;)V

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1840
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ASM] Target Task Top: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1841
    if-nez v11, :cond_4

    .line 1842
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ASM] Target Task: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1843
    if-eqz v4, :cond_4

    .line 1844
    const-string v7, "[ASM] Target Task Stack: "

    invoke-virtual {v10, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1845
    new-instance v7, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda6;

    invoke-direct {v7, v10, v9}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda6;-><init>(Ljava/util/StringJoiner;Ljava/util/function/Function;)V

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1850
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ASM] Target Record: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1851
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ASM] Intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1852
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ASM] TaskToFront: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1853
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[ASM] AvoidMoveToFront: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p10

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1854
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ASM] BalCode: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ASM] Allowed By Grace Period: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p11

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ASM] LastResumedActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    invoke-direct {v0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {v9, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1856
    invoke-virtual {v10, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1858
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ASM] System opted into enforcement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1860
    iget-object v2, v0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v2, :cond_5

    .line 1861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ASM] TopFinishedActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    iget-object v3, v3, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mDebugInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1864
    :cond_5
    iget-object v2, v0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1865
    const-string v2, "[ASM] TaskIdToFinishedActivity: "

    invoke-virtual {v10, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1866
    iget-object v2, v0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda7;

    invoke-direct {v3, v10}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda7;-><init>(Ljava/util/StringJoiner;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 1870
    :cond_6
    const/4 v2, 0x4

    if-eq v6, v2, :cond_7

    const/16 v2, 0xb

    if-eq v6, v2, :cond_7

    const/16 v2, 0x9

    if-eq v6, v2, :cond_7

    const/16 v2, 0xd

    if-ne v6, v2, :cond_9

    .line 1872
    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_3

    :cond_8
    move-object v2, v4

    .line 1873
    .local v2, "task":Lcom/android/server/wm/Task;
    :goto_3
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1874
    const-string v3, "[ASM] Tasks: "

    invoke-virtual {v10, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1875
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda8;

    invoke-direct {v0, v10}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda8;-><init>(Ljava/util/StringJoiner;)V

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 1880
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Debug Logging End ------"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1881
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .locals 3
    .param p0, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 2153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " :: visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2154
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", visibleRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2155
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", finishing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", alwaysOnTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2157
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastLaunchTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastVisibleTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", taskFragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2160
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2153
    return-object v0
.end method

.method private getService()Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method private getSupervisor()Lcom/android/server/wm/ActivityTaskSupervisor;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    return-object v0
.end method

.method private getTargetSdk(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2165
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 2166
    return v0

    .line 2169
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2170
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2171
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 2172
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private isHomeApp(ILjava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 291
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 292
    .local v0, "homeProcess":Lcom/android/server/wm/WindowProcessController;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v3, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    if-nez p2, :cond_2

    .line 294
    :cond_0
    iget v3, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 296
    :cond_2
    if-nez p2, :cond_3

    .line 297
    return v2

    .line 299
    :cond_3
    nop

    .line 300
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    .line 301
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 302
    .local v3, "activity":Landroid/content/ComponentName;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method

.method private static isSystemExemptFlagEnabled()Z
    .locals 3

    .line 1923
    const-string v0, "system_exempt_from_activity_bg_start_restriction_enabled"

    const/4 v1, 0x1

    const-string v2, "window_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$addStrictModeCallback$0(ILandroid/os/IBinder;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "callback"    # Landroid/os/IBinder;

    .line 956
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->removeStrictModeCallback(ILandroid/os/IBinder;)V

    return-void
.end method

.method private static synthetic lambda$checkActivityAllowedToClearTask$21(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 1577
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$checkTopActivityForAsm$22(ILcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 1673
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$checkTopActivityForAsm$23(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 1679
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    .line 1680
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1679
    :goto_1
    return v0
.end method

.method private synthetic lambda$checkTopActivityForAsm$24(Ljava/util/function/Predicate;[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;ILcom/android/server/wm/TaskFragment;)V
    .locals 3
    .param p1, "topOfStackPredicate"    # Ljava/util/function/Predicate;
    .param p2, "out"    # [Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    .param p3, "uid"    # I
    .param p4, "adjacentTaskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 1707
    invoke-virtual {p4, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1708
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_0

    .line 1709
    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-direct {p0, v0, p3, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v2

    aput-object v2, p2, v1

    .line 1711
    :cond_0
    return-void
.end method

.method private static synthetic lambda$clearTopIfNeeded$20(IIILcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "startingUid"    # I
    .param p1, "callingUid"    # I
    .param p2, "realCallingUid"    # I
    .param p3, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 1495
    invoke-virtual {p3, p0}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3, p1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3, p2}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static synthetic lambda$getDebugInfoForActivitySecurity$25(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .locals 2
    .param p0, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "targetTopActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "targetRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 1793
    if-nez p3, :cond_0

    .line 1794
    const/4 v0, 0x0

    return-object v0

    .line 1797
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-ne p3, p0, :cond_1

    const-string v1, " [source]=> "

    goto :goto_0

    .line 1798
    :cond_1
    if-ne p3, p1, :cond_2

    const-string v1, " [ top  ]=> "

    goto :goto_0

    .line 1799
    :cond_2
    if-ne p3, p2, :cond_3

    const-string v1, " [target]=> "

    goto :goto_0

    .line 1800
    :cond_3
    const-string v1, "         => "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    invoke-static {p3}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1797
    return-object v0
.end method

.method private static synthetic lambda$getDebugInfoForActivitySecurity$26(Ljava/util/StringJoiner;Ljava/util/function/Function;Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p0, "joiner"    # Ljava/util/StringJoiner;
    .param p1, "recordToString"    # Ljava/util/function/Function;
    .param p2, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 1837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ASM] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method private static synthetic lambda$getDebugInfoForActivitySecurity$27(Ljava/util/StringJoiner;Ljava/util/function/Function;Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p0, "joiner"    # Ljava/util/StringJoiner;
    .param p1, "recordToString"    # Ljava/util/function/Function;
    .param p2, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 1846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ASM] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method private static synthetic lambda$getDebugInfoForActivitySecurity$28(Ljava/util/StringJoiner;Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;)V
    .locals 2
    .param p0, "joiner"    # Ljava/util/StringJoiner;
    .param p1, "fae"    # Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 1867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ASM]   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mDebugInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method private static synthetic lambda$getDebugInfoForActivitySecurity$29(Ljava/util/StringJoiner;Lcom/android/server/wm/Task;)V
    .locals 2
    .param p0, "joiner"    # Ljava/util/StringJoiner;
    .param p1, "t"    # Lcom/android/server/wm/Task;

    .line 1876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ASM]    T: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->toFullString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method private static synthetic lambda$logAsmFailureAndCheckFeatureEnabled$18(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 1396
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$new$1(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 4
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1050
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v1

    .line 1052
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->isHomeApp(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    nop

    .line 1053
    .local v2, "appSwitchAllowedOrFg":Z
    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUidHasVisibleNotPinnedActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1054
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v1, 0x4

    const-string v3, "callingUid has visible non-pinned window"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1057
    :cond_2
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object v0
.end method

.method private synthetic lambda$new$10(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 4
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1180
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v1

    .line 1182
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->isHomeApp(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    nop

    .line 1183
    .local v2, "appSwitchAllowedOrFg":Z
    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUidHasVisibleNotPinnedActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1184
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v1, 0x4

    const-string v3, "realCallingUid has visible non-pinned window"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1187
    :cond_2
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object v0
.end method

.method private synthetic lambda$new$11(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 4
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1191
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUidHasNonAppVisibleWindow(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realCallingUid has non-app visible window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MirrorActiveUids;->getNonAppVisibleWindowDetails(I)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 1192
    return-object v0

    .line 1197
    :cond_0
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object v0
.end method

.method private synthetic lambda$new$12(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1203
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_FOREGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$13(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1207
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_BACKGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$14(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 4
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1210
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCheckedOptions(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1212
    .local v0, "allowAlways":Z
    :goto_0
    nop

    nop

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    .line 1213
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->hasBalPermission(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1214
    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v2, 0x6

    const-string v3, "realCallingUid has BAL permission."

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 1216
    :cond_1
    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object v1
.end method

.method private synthetic lambda$new$15(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 5
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1220
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCheckedOptions(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1223
    .local v0, "allowAlways":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1224
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v3

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1226
    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v2, 0x7

    const-string v3, "SYSTEM_ALERT_WINDOW permission is granted"

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 1229
    :cond_1
    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object v1
.end method

.method private static synthetic lambda$new$16(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 4
    .param p0, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1233
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCheckedOptions(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1237
    .local v0, "allowAlways":Z
    :goto_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAllowBalExemptionForSystemProcess(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIsRealCallingUidPersistentSystemProcess(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1239
    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v2, 0x2

    const-string v3, "realCallingUid is persistent system process AND intent sender forced to allow."

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 1243
    :cond_2
    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object v1
.end method

.method private synthetic lambda$new$17(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 3
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1248
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v1

    .line 1249
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    .line 1248
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1250
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v1, 0x3

    const-string v2, "realCallingUid is a companion app."

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1253
    :cond_0
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object v0
.end method

.method private synthetic lambda$new$2(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 4
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1061
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUidHasNonAppVisibleWindow(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callingUid has non-app visible window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MirrorActiveUids;->getNonAppVisibleWindowDetails(I)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 1062
    return-object v0

    .line 1066
    :cond_0
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object v0
.end method

.method private static synthetic lambda$new$3(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 4
    .param p0, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1071
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1072
    .local v0, "callingAppId":I
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x403

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    .line 1077
    :cond_1
    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object v1

    .line 1075
    :goto_0
    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v2, 0x2

    const-string v3, "Important callingUid"

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private synthetic lambda$new$4(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 6
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1082
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->isHomeApp(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 1083
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string v2, "Home app"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1086
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1088
    .local v0, "callingAppId":I
    nop

    .line 1089
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 1090
    .local v2, "imeWindow":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_1

    iget v3, v2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, v3, :cond_1

    .line 1091
    new-instance v3, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string v4, "Active ime"

    invoke-direct {v3, v1, v4}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v3

    .line 1095
    :cond_1
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIsCallingUidPersistentSystemProcess(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1096
    new-instance v3, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string v4, "callingUid is persistent system process"

    invoke-direct {v3, v1, v4}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v3

    .line 1101
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getSupervisor()Lcom/android/server/wm/ActivityTaskSupervisor;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1102
    new-instance v3, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string v4, "Recents Component"

    invoke-direct {v3, v1, v4}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v3

    .line 1105
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->isDeviceOwner(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1106
    new-instance v3, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string v4, "Device Owner"

    invoke-direct {v3, v1, v4}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v3

    .line 1109
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->isAffiliatedProfileOwner(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1110
    new-instance v3, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string v4, "Affiliated Profile Owner"

    invoke-direct {v3, v1, v4}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v3

    .line 1113
    :cond_5
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1114
    .local v3, "callingUserId":I
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1115
    new-instance v4, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string v5, "Companion App"

    invoke-direct {v4, v1, v5}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v4

    .line 1117
    :cond_6
    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object v1
.end method

.method private synthetic lambda$new$5(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 3
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1122
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->hasBalPermission(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v1, 0x6

    const-string v2, "START_ACTIVITIES_FROM_BACKGROUND permission granted"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1126
    :cond_0
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object v0
.end method

.method private synthetic lambda$new$6(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 4
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1130
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v1, 0x7

    const-string v2, "SYSTEM_ALERT_WINDOW permission is granted"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1135
    :cond_0
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object v0
.end method

.method private synthetic lambda$new$7(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 4
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1140
    invoke-static {}, Lcom/android/server/wm/BackgroundActivityStartController;->isSystemExemptFlagEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x82

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1143
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v1, 0x6

    const-string v2, "OP_SYSTEM_EXEMPT_FROM_ACTIVITY_BG_START_RESTRICTION appop is granted"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1146
    :cond_0
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object v0
.end method

.method private synthetic lambda$new$8(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1153
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_FOREGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$9(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1156
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_BACKGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$showToast$19(Ljava/lang/String;)V
    .locals 2
    .param p1, "toastText"    # Ljava/lang/String;

    .line 1474
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1475
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1474
    return-void
.end method

.method private logAsmFailureAndCheckFeatureEnabled(Lcom/android/server/wm/ActivityRecord;IIZZLcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;Z)Z
    .locals 32
    .param p1, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "callingUid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "newTask"    # Z
    .param p5, "avoidMoveTaskToFront"    # Z
    .param p6, "targetTask"    # Lcom/android/server/wm/Task;
    .param p7, "targetRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p8, "balCode"    # I
    .param p9, "launchFlags"    # I
    .param p10, "bas"    # Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    .param p11, "taskToFront"    # Z

    .line 1395
    move/from16 v13, p4

    move-object/from16 v4, p6

    const/4 v14, 0x0

    if-nez v4, :cond_0

    move-object v5, v14

    goto :goto_0

    .line 1396
    :cond_0
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda28;-><init>()V

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v5, v0

    :goto_0
    move-object v7, v5

    .line 1398
    .local v7, "targetTopActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v15, 0x1

    if-nez v13, :cond_1

    if-nez p1, :cond_2

    :cond_1
    goto :goto_1

    .line 1400
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1401
    move v0, v15

    goto :goto_2

    .line 1402
    :cond_3
    const/4 v0, 0x2

    goto :goto_2

    .line 1399
    :goto_1
    const/4 v0, 0x3

    .line 1402
    :goto_2
    move/from16 v26, v0

    .line 1404
    .local v26, "action":I
    invoke-static/range {p10 .. p10}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v0

    const/16 v31, 0x0

    if-eqz v0, :cond_4

    .line 1405
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldRestrictActivitySwitch(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v8, v15

    goto :goto_3

    :cond_4
    move/from16 v8, v31

    :goto_3
    nop

    .line 1407
    .local v8, "enforceBlock":Z
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v1, p2

    move/from16 v6, p5

    move/from16 v5, p11

    move-object v3, v4

    move/from16 v4, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/BackgroundActivityStartController;->allowedByAsmGracePeriod(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;IZZ)Z

    move-result v11

    .line 1410
    .local v11, "allowedByGracePeriod":Z
    const-string v1, "Launch"

    invoke-static/range {p10 .. p10}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    move/from16 v6, p3

    move/from16 v10, p5

    move-object/from16 v4, p6

    move-object/from16 v3, p7

    move/from16 v9, p11

    move-object v5, v7

    move/from16 v7, p8

    .end local v7    # "targetTopActivity":Lcom/android/server/wm/ActivityRecord;
    .local v5, "targetTopActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugInfoForActivitySecurity(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;IIZZZZLcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object v30

    .line 1415
    .local v30, "asmDebugInfo":Ljava/lang/String;
    nop

    .line 1417
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    move/from16 v17, v0

    goto :goto_4

    :cond_5
    move/from16 v17, p2

    .line 1419
    :goto_4
    if-eqz v2, :cond_6

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_5

    :cond_6
    move-object/from16 v18, v14

    .line 1421
    :goto_5
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    :goto_6
    move/from16 v19, v0

    goto :goto_7

    :cond_7
    const/4 v0, -0x1

    goto :goto_6

    .line 1423
    :goto_7
    if-eqz v5, :cond_8

    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_8
    move-object/from16 v20, v14

    if-nez v13, :cond_a

    if-eqz v2, :cond_a

    if-eqz v4, :cond_a

    .line 1426
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_8

    :cond_9
    move/from16 v21, v31

    goto :goto_9

    :cond_a
    :goto_8
    move/from16 v21, v15

    .line 1428
    :goto_9
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v22

    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1432
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    if-eqz v4, :cond_b

    if-eqz v2, :cond_b

    .line 1441
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_b

    move/from16 v28, v15

    goto :goto_a

    :cond_b
    move/from16 v28, v31

    .line 1415
    :goto_a
    const/16 v16, 0x1ef

    const/16 v27, 0xb

    move/from16 v29, p8

    move/from16 v25, p9

    move-object/from16 v23, v0

    invoke-static/range {v16 .. v30}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIIZILjava/lang/String;)V

    .line 1448
    move-object/from16 v0, v30

    .end local v30    # "asmDebugInfo":Ljava/lang/String;
    .local v0, "asmDebugInfo":Ljava/lang/String;
    iget-object v1, v3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1449
    .local v1, "launchedFromPackageName":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldShowToast(I)Z

    move-result v6

    const-string v7, "ActivityTaskManager"

    if-eqz v6, :cond_d

    .line 1450
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "go/android-asm"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    if-eqz v8, :cond_c

    const-string v9, " blocked "

    goto :goto_b

    :cond_c
    const-string v9, " would block "

    :goto_b
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getApplicationLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1454
    .local v6, "toastText":Ljava/lang/String;
    move-object/from16 v9, p0

    invoke-virtual {v9, v6}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    .line 1456
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1449
    .end local v6    # "toastText":Ljava/lang/String;
    :cond_d
    move-object/from16 v9, p0

    .line 1459
    :goto_c
    if-eqz v8, :cond_f

    .line 1460
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ASM] Abort Launching r: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " as source: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    if-eqz v2, :cond_e

    move-object v10, v2

    goto :goto_d

    :cond_e
    move-object v10, v1

    :goto_d
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " is in background. New task: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ". Top activity: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ". BAL Code: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    invoke-static/range {p8 .. p8}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1460
    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    return v31

    .line 1470
    :cond_f
    return v15
.end method

.method private static logIfOnlyAllowedBy(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)Z
    .locals 2
    .param p0, "finalVerdict"    # Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;
    .param p2, "balCode"    # I

    .line 2003
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getRawCode()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p2, :cond_2

    .line 2004
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->realCallerExplicitOptInOrAutoOptIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    .line 2006
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    .line 2007
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getRawCode()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 2009
    return v1

    .line 2010
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerExplicitOptInOrAutoOptIn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    .line 2012
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v0

    nop

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    .line 2013
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getRawCode()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 2015
    return v1

    .line 2018
    :cond_1
    nop

    .line 2022
    const/4 v0, 0x1

    return v0

    .line 2025
    :cond_2
    return v1
.end method

.method private statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 13
    .param p1, "finalVerdict"    # Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .param p2, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1930
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->blocks()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isActivityStartsLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1932
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1933
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v4

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUidProcState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v6

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUidHasVisibleActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUidHasNonAppVisibleWindow(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v0, v7

    move v7, v8

    goto :goto_1

    :goto_0
    move v0, v7

    :goto_1
    move v9, v8

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v8

    move v10, v9

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUidProcState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v9

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUidHasVisibleActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUidHasNonAppVisibleWindow(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    goto :goto_2

    :cond_3
    move v11, v10

    goto :goto_3

    :goto_2
    move v11, v10

    move v10, v0

    :goto_3
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmOriginatingPendingIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v12

    if-eqz v12, :cond_4

    move v11, v0

    .line 1934
    :cond_4
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/ActivityMetricsLogger;->logAbortedBgActivityStart(Landroid/content/Intent;Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;IZIIZZ)V

    .line 1949
    :cond_5
    const/16 v0, 0x8

    invoke-static {p1, p2, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->logIfOnlyAllowedBy(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1950
    nop

    .line 1951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity start is only allowed by grace period. This may stop working in the future. intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1954
    .local v0, "abortDebugMessage":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->strictModeLaunchAborted(ILjava/lang/String;)V

    .line 1957
    .end local v0    # "abortDebugMessage":Ljava/lang/String;
    :cond_6
    const/16 v0, 0xb

    invoke-static {p1, p2, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->logIfOnlyAllowedBy(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)Z

    .line 1958
    const/16 v0, 0xc

    invoke-static {p1, p2, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->logIfOnlyAllowedBy(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)Z

    .line 1960
    nop

    .line 1961
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->shouldLogStats(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1963
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->shouldLogIntentActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1964
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/content/Intent;

    move-result-object v0

    .line 1965
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_7

    const-string v1, "noIntent"

    goto :goto_4

    .line 1966
    :cond_7
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    nop

    .line 1967
    .end local v0    # "intent":Landroid/content/Intent;
    .local v1, "activityName":Ljava/lang/String;
    goto :goto_5

    .line 1968
    .end local v1    # "activityName":Ljava/lang/String;
    :cond_8
    const-string v1, ""

    .line 1970
    .restart local v1    # "activityName":Ljava/lang/String;
    :goto_5
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getCode()I

    move-result v0

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->writeBalAllowedLog(Ljava/lang/String;ILcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    .line 1971
    .end local v1    # "activityName":Ljava/lang/String;
    goto :goto_6

    .line 1972
    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->writeBalAllowedLogMinimal(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    .line 1994
    :goto_6
    return-object p1
.end method

.method private strictModeLaunchAborted(ILjava/lang/String;)V
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 985
    nop

    .line 986
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->getStrictModeBalCallbacks(I)Ljava/util/Map;

    move-result-object v0

    .line 987
    .local v0, "strictModeBalCallbacks":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/app/IBackgroundActivityLaunchCallback;>;"
    if-nez v0, :cond_0

    .line 988
    return-void

    .line 991
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 993
    .local v2, "callbackEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/IBackgroundActivityLaunchCallback;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IBackgroundActivityLaunchCallback;

    invoke-interface {v3, p2}, Landroid/app/IBackgroundActivityLaunchCallback;->onBackgroundActivityLaunchAborted(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    goto :goto_1

    .line 994
    :catch_0
    move-exception v3

    .line 995
    .local v3, "e":Landroid/os/RemoteException;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/BackgroundActivityStartController;->removeStrictModeCallback(ILandroid/os/IBinder;)V

    .line 997
    .end local v2    # "callbackEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/IBackgroundActivityLaunchCallback;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 998
    :cond_1
    return-void
.end method


# virtual methods
.method addStrictModeCallback(ILandroid/os/IBinder;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "callback"    # Landroid/os/IBinder;

    .line 941
    nop

    .line 942
    invoke-static {p2}, Landroid/app/IBackgroundActivityLaunchCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackgroundActivityLaunchCallback;

    move-result-object v0

    .line 943
    .local v0, "balCallback":Landroid/app/IBackgroundActivityLaunchCallback;
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    monitor-enter v1

    .line 944
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    .line 945
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 946
    .local v2, "callbackMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/app/IBackgroundActivityLaunchCallback;>;"
    if-nez v2, :cond_0

    .line 947
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    .line 948
    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 954
    .end local v2    # "callbackMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/app/IBackgroundActivityLaunchCallback;>;"
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 950
    .restart local v2    # "callbackMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/app/IBackgroundActivityLaunchCallback;>;"
    :cond_0
    :goto_0
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 951
    monitor-exit v1

    return v4

    .line 953
    :cond_1
    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    nop

    .end local v2    # "callbackMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/app/IBackgroundActivityLaunchCallback;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    :try_start_1
    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;ILandroid/os/IBinder;)V

    invoke-interface {p2, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 959
    goto :goto_1

    .line 957
    :catch_0
    move-exception v1

    .line 958
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->removeStrictModeCallback(ILandroid/os/IBinder;)V

    .line 960
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 954
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method checkActivityAllowedToClearTask(Lcom/android/server/wm/Task;IILjava/lang/String;)V
    .locals 29
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "callerActivityClassName"    # Ljava/lang/String;

    .line 1547
    move-object/from16 v13, p1

    move/from16 v15, p2

    const/16 v0, 0x3e8

    if-eq v15, v0, :cond_c

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v1, p0

    goto/16 :goto_9

    .line 1551
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 1552
    .local v4, "packageName":Ljava/lang/String;
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1553
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v12

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p3

    move v2, v15

    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 1554
    .local v0, "state":Lcom/android/server/wm/BackgroundActivityStartController$BalState;
    invoke-virtual {v1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStartAllowedByCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->-$$Nest$fgetmCode(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)I

    move-result v2

    .line 1555
    .local v2, "balCode":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_b

    const/4 v3, 0x6

    if-eq v2, v3, :cond_b

    const/4 v3, 0x7

    if-eq v2, v3, :cond_b

    const/4 v3, 0x4

    if-eq v2, v3, :cond_b

    const/16 v3, 0xb

    if-eq v2, v3, :cond_b

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    move-object/from16 v16, v0

    goto/16 :goto_8

    .line 1565
    :cond_1
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 1566
    .local v3, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-nez v3, :cond_2

    .line 1568
    return-void

    .line 1571
    :cond_2
    new-instance v5, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;-><init>(Lcom/android/server/wm/BackgroundActivityStartController-IA;)V

    invoke-direct {v1, v13, v15, v6, v5}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v5

    .line 1573
    .local v5, "bas":Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    invoke-static {v5}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1574
    return-void

    .line 1577
    :cond_3
    new-instance v7, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v13, v7}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 1578
    .local v7, "topActivity":Lcom/android/server/wm/ActivityRecord;
    nop

    .line 1584
    if-nez v7, :cond_4

    const/4 v8, -0x1

    :goto_0
    move/from16 v17, v8

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v8

    goto :goto_0

    .line 1586
    :goto_1
    if-nez v7, :cond_5

    :goto_2
    move-object/from16 v18, v6

    goto :goto_3

    :cond_5
    iget-object v6, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_2

    .line 1578
    :goto_3
    const/16 v14, 0x1ef

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x4

    const/16 v25, 0xb

    const/16 v26, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x0

    move-object/from16 v16, p4

    invoke-static/range {v14 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIIZILjava/lang/String;)V

    .line 1609
    nop

    .line 1610
    invoke-static {v15}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldRestrictActivitySwitch(I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v5}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    .line 1612
    .local v6, "restrictActivitySwitch":Z
    :goto_4
    invoke-direct {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1613
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v8, v15}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    .line 1615
    .local v9, "callingPackage":Ljava/lang/String;
    if-nez v9, :cond_7

    .line 1616
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1617
    move-object v10, v9

    .local v10, "callingLabel":Ljava/lang/CharSequence;
    goto :goto_5

    .line 1619
    .end local v10    # "callingLabel":Ljava/lang/CharSequence;
    :cond_7
    invoke-static {v8, v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->getApplicationLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1622
    .restart local v10    # "callingLabel":Ljava/lang/CharSequence;
    :goto_5
    invoke-static {v15}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldShowToast(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1623
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "go/android-asm"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    if-eqz v6, :cond_8

    const-string v12, " returned home due to "

    goto :goto_6

    .line 1625
    :cond_8
    const-string v12, " would return home due to "

    :goto_6
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1623
    invoke-virtual {v1, v11}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    .line 1632
    :cond_9
    const-string v11, " is not on top of task t: "

    const-string v12, "ActivityTaskManager"

    if-eqz v6, :cond_a

    .line 1633
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "state":Lcom/android/server/wm/BackgroundActivityStartController$BalState;
    .local v16, "state":Lcom/android/server/wm/BackgroundActivityStartController$BalState;
    const-string v0, "[ASM] Return to home as source: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const-string v0, "taskRemoved"

    invoke-virtual {v3, v0}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeActivityToTop(Ljava/lang/String;)V

    goto :goto_7

    .line 1637
    .end local v16    # "state":Lcom/android/server/wm/BackgroundActivityStartController$BalState;
    .restart local v0    # "state":Lcom/android/server/wm/BackgroundActivityStartController$BalState;
    :cond_a
    move-object/from16 v16, v0

    .end local v0    # "state":Lcom/android/server/wm/BackgroundActivityStartController$BalState;
    .restart local v16    # "state":Lcom/android/server/wm/BackgroundActivityStartController$BalState;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ASM] Would return to home as source: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :goto_7
    return-void

    .line 1555
    .end local v3    # "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "bas":Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    .end local v6    # "restrictActivitySwitch":Z
    .end local v7    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "callingPackage":Ljava/lang/String;
    .end local v10    # "callingLabel":Ljava/lang/CharSequence;
    .end local v16    # "state":Lcom/android/server/wm/BackgroundActivityStartController$BalState;
    .restart local v0    # "state":Lcom/android/server/wm/BackgroundActivityStartController$BalState;
    :cond_b
    move-object/from16 v16, v0

    .line 1562
    .end local v0    # "state":Lcom/android/server/wm/BackgroundActivityStartController$BalState;
    .restart local v16    # "state":Lcom/android/server/wm/BackgroundActivityStartController$BalState;
    :goto_8
    return-void

    .line 1547
    .end local v2    # "balCode":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v16    # "state":Lcom/android/server/wm/BackgroundActivityStartController$BalState;
    :cond_c
    move-object/from16 v1, p0

    .line 1548
    :goto_9
    return-void
.end method

.method checkActivityAllowedToStart(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/Task;IIIILcom/android/server/wm/TaskDisplayArea;)Z
    .locals 13
    .param p1, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "targetRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "newTask"    # Z
    .param p4, "avoidMoveTaskToFront"    # Z
    .param p5, "targetTask"    # Lcom/android/server/wm/Task;
    .param p6, "launchFlags"    # I
    .param p7, "balCode"    # I
    .param p8, "callingUid"    # I
    .param p9, "realCallingUid"    # I
    .param p10, "preferredTaskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 1311
    move-object/from16 v6, p5

    move/from16 v8, p7

    move/from16 v2, p8

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq v8, v0, :cond_10

    .line 1312
    nop

    .line 1319
    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/high16 v3, 0x10000000

    and-int v4, p6, v3

    if-ne v4, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v11, v0

    goto :goto_1

    :goto_0
    move v11, v1

    .line 1323
    .local v11, "taskToFront":Z
    :goto_1
    if-eqz v11, :cond_3

    .line 1324
    const/4 v3, 0x3

    if-eq v8, v3, :cond_2

    const/4 v3, 0x6

    if-eq v8, v3, :cond_2

    const/4 v3, 0x5

    if-eq v8, v3, :cond_2

    const/4 v3, 0x7

    if-eq v8, v3, :cond_2

    const/4 v3, 0x4

    if-eq v8, v3, :cond_2

    const/16 v3, 0xb

    if-eq v8, v3, :cond_2

    const/16 v3, 0xc

    if-eq v8, v3, :cond_2

    const/16 v3, 0xd

    if-ne v8, v3, :cond_3

    .line 1332
    :cond_2
    return v1

    .line 1336
    :cond_3
    new-instance v3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;-><init>(Lcom/android/server/wm/BackgroundActivityStartController-IA;)V

    .line 1337
    .local v3, "bas":Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    if-eqz p1, :cond_8

    .line 1338
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1340
    .local v4, "sourceTask":Lcom/android/server/wm/Task;
    if-eqz v11, :cond_4

    move-object v5, v4

    goto :goto_2

    :cond_4
    move-object v5, v6

    .line 1341
    .local v5, "taskToCheck":Lcom/android/server/wm/Task;
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v7

    invoke-direct {p0, v5, v7, p1, v3}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v3

    .line 1348
    if-eqz v11, :cond_7

    invoke-static {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1349
    if-eqz v4, :cond_6

    .line 1350
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v7

    if-nez v7, :cond_5

    if-ne v4, v6, :cond_6

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    nop

    :goto_3
    invoke-static {v3, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fputmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;Z)V

    .line 1352
    .end local v4    # "sourceTask":Lcom/android/server/wm/Task;
    .end local v5    # "taskToCheck":Lcom/android/server/wm/Task;
    :cond_7
    move-object v10, v3

    goto :goto_7

    :cond_8
    if-eqz v6, :cond_a

    if-eqz v11, :cond_9

    if-eqz p4, :cond_a

    .line 1355
    :cond_9
    invoke-direct {p0, v6, v2, v4, v3}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v3

    move-object v10, v3

    goto :goto_7

    .line 1359
    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1360
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    goto :goto_4

    .line 1361
    :cond_b
    move-object/from16 v0, p10

    :goto_4
    nop

    .line 1362
    .local v0, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_e

    .line 1363
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getVisibleTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 1364
    .local v5, "visibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_d

    .line 1365
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    .line 1366
    .local v9, "task":Lcom/android/server/wm/Task;
    nop

    .line 1369
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, v1, :cond_c

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1370
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    goto :goto_6

    .line 1372
    :cond_c
    invoke-direct {p0, v9, v2, v4, v3}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v3

    .line 1364
    .end local v9    # "task":Lcom/android/server/wm/Task;
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_d
    move-object v10, v3

    goto :goto_7

    .line 1362
    .end local v5    # "visibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v7    # "i":I
    :cond_e
    move-object v10, v3

    .line 1380
    .end local v0    # "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v3    # "bas":Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    .local v10, "bas":Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    :goto_7
    invoke-static {v10}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1381
    return v1

    .line 1385
    :cond_f
    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v9, p6

    move/from16 v3, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/server/wm/BackgroundActivityStartController;->logAsmFailureAndCheckFeatureEnabled(Lcom/android/server/wm/ActivityRecord;IIZZLcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;Z)Z

    move-result v12

    return v12

    .line 1314
    .end local v10    # "bas":Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    .end local v11    # "taskToFront":Z
    :cond_10
    return v1
.end method

.method checkBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 13
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "realCallingUid"    # I
    .param p5, "realCallingPid"    # I
    .param p6, "callerApp"    # Lcom/android/server/wm/WindowProcessController;
    .param p7, "originatingPendingIntent"    # Lcom/android/server/am/PendingIntentRecord;
    .param p8, "allowBalExemptionForSystemProcess"    # Z
    .param p9, "resultRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p10, "intent"    # Landroid/content/Intent;
    .param p11, "checkedOptions"    # Landroid/app/ActivityOptions;

    .line 773
    if-nez p11, :cond_0

    .line 775
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->ACTIVITY_OPTIONS_SYSTEM_DEFINED:Landroid/app/ActivityOptions;

    move-object v12, v0

    .end local p11    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v0, "checkedOptions":Landroid/app/ActivityOptions;
    goto :goto_0

    .line 773
    .end local v0    # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local p11    # "checkedOptions":Landroid/app/ActivityOptions;
    :cond_0
    move-object/from16 v12, p11

    .line 778
    .end local p11    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v12, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_0
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 784
    .local v0, "state":Lcom/android/server/wm/BackgroundActivityStartController$BalState;
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 785
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    .line 786
    invoke-static {v2}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v2

    .line 789
    .local v2, "realCallingSdkSandboxUidToAppUid":I
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 790
    new-instance v3, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/16 v4, 0xa

    const-string v5, "uid in SDK sandbox has visible (non-toast) window"

    invoke-direct {v3, v4, v5}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->setResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)V

    .line 792
    invoke-direct {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->allowBasedOnRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v3

    return-object v3

    .line 796
    .end local v2    # "realCallingSdkSandboxUidToAppUid":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStartAllowedByCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    .line 797
    .local v2, "resultForCaller":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    invoke-virtual {v0, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->setResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)V

    .line 799
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$mhasRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 800
    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 801
    invoke-direct {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->allowBasedOnCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v3

    return-object v3

    .line 803
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->abortLaunch(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v3

    return-object v3

    .line 813
    :cond_3
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$mcallerIsRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 814
    move-object v3, v2

    goto :goto_1

    .line 816
    :cond_4
    nop

    .line 815
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStartAllowedByRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v3

    .line 816
    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->setBasedOnRealCaller()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v3

    :goto_1
    nop

    .line 817
    .local v3, "resultForRealCaller":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    invoke-virtual {v0, v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->setResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)V

    .line 819
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->isPendingIntent()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->blocks()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 820
    invoke-virtual {v2, v5}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->setOnlyCreatorAllows(Z)V

    .line 824
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerExplicitOptInOrAutoOptIn()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 825
    invoke-direct {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->allowBasedOnCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v4

    return-object v4

    .line 827
    :cond_6
    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->realCallerExplicitOptInOrAutoOptIn()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 828
    invoke-direct {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->allowBasedOnRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v4

    return-object v4

    .line 831
    :cond_7
    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerExplicitOptOut()Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v5

    goto :goto_2

    :cond_8
    move v4, v6

    .line 832
    .local v4, "callerCanAllow":Z
    :goto_2
    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 833
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->realCallerExplicitOptOut()Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_3

    :cond_9
    move v5, v6

    :goto_3
    nop

    .line 834
    .local v5, "realCallerCanAllow":Z
    const-string v6, "ActivityTaskManager"

    if-eqz v4, :cond_a

    .line 836
    iget-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v7}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 837
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "With Android 15 BAL hardening this activity start may be blocked if the PI creator upgrades target_sdk to 35+! goo.gle/android-bal (missing opt in by PI creator)!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-direct {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->allowBasedOnCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v6

    return-object v6

    .line 844
    :cond_a
    if-eqz v5, :cond_b

    .line 846
    iget-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v7}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 847
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "With Android 14 BAL hardening this activity start will be blocked if the PI sender upgrades target_sdk to 34+!  goo.gle/android-bal (missing opt in by PI sender)!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-direct {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->allowBasedOnRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v6

    return-object v6

    .line 855
    :cond_b
    if-nez v4, :cond_c

    if-eqz v5, :cond_d

    .line 856
    :cond_c
    const-string v7, "Without BAL hardening this activity start would be allowed"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_d
    invoke-direct {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->abortLaunch(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v6

    return-object v6
.end method

.method checkBackgroundActivityStartAllowedByCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 11
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1005
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCheckedOptions(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1006
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1008
    .local v0, "evaluateVisibleOnly":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1009
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    filled-new-array {v1, v2, v3}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    return-object v1

    .line 1012
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->isPendingIntent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1016
    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v4, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBackgroundPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v5, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v6, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBgStartAppOp:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v7, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v8, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v9, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v10, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    filled-new-array/range {v2 .. v10}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    return-object v1

    .line 1022
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v4, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v5, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v6, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v7, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBackgroundPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v8, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v9, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBgStartAppOp:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v10, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    filled-new-array/range {v2 .. v10}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    return-object v1
.end method

.method checkBackgroundActivityStartAllowedByRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 10
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 1163
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCheckedOptions(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1164
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1166
    .local v0, "evaluateVisibleOnly":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1167
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    filled-new-array {v1, v2, v3}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    return-object v1

    .line 1170
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v4, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v5, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerBalPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v6, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v7, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v8, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v9, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    filled-new-array/range {v2 .. v9}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    return-object v1
.end method

.method checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 6
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;
    .param p3, "balCheckConfiguration"    # Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    .line 1270
    if-nez p1, :cond_0

    .line 1271
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object v0

    .line 1274
    :cond_0
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    .line 1275
    invoke-virtual {p1, v0, p3}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(ILcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    .line 1276
    .local v0, "balAllowedForCaller":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1277
    const-string v1, "callerApp process"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->withProcessInfo(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    return-object v1

    .line 1280
    :cond_1
    nop

    .line 1281
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget v2, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcesses(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 1282
    .local v1, "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    if-eqz v1, :cond_3

    .line 1283
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1284
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowProcessController;

    .line 1285
    .local v3, "proc":Lcom/android/server/wm/WindowProcessController;
    if-eq v3, p1, :cond_2

    .line 1286
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v4

    invoke-virtual {v3, v4, p3}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(ILcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v4

    .line 1288
    .local v4, "balAllowedForUid":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    invoke-virtual {v4}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1289
    const-string v5, "process"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->withProcessInfo(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v5

    return-object v5

    .line 1283
    .end local v3    # "proc":Lcom/android/server/wm/WindowProcessController;
    .end local v4    # "balAllowedForUid":Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1295
    .end local v1    # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .end local v2    # "i":I
    :cond_3
    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object v1
.end method

.method clearTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;IIII)V
    .locals 19
    .param p1, "targetTask"    # Lcom/android/server/wm/Task;
    .param p2, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "targetRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "callingUid"    # I
    .param p5, "realCallingUid"    # I
    .param p6, "launchFlags"    # I
    .param p7, "balCode"    # I

    .line 1487
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v13, p4

    move/from16 v14, p6

    const/high16 v1, 0x10000000

    and-int v2, v14, v1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x2

    move/from16 v7, p7

    if-ne v7, v1, :cond_1

    :cond_0
    goto/16 :goto_4

    .line 1493
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v15

    .line 1494
    .local v15, "startingUid":I
    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda29;

    move/from16 v6, p5

    invoke-direct {v1, v15, v13, v6}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda29;-><init>(III)V

    .line 1499
    .local v1, "isLaunchingOrLaunched":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 1500
    .local v5, "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_9

    invoke-interface {v1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v17, v1

    goto/16 :goto_3

    .line 1506
    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 1507
    .local v2, "finishCount":[I
    nop

    .line 1508
    invoke-static {v13}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldRestrictActivitySwitch(I)Z

    move-result v8

    .line 1509
    .local v8, "shouldBlockActivityStart":Z
    new-instance v3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    const/4 v9, 0x0

    invoke-direct {v3, v9}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;-><init>(Lcom/android/server/wm/BackgroundActivityStartController-IA;)V

    invoke-direct {v0, v5, v13, v3}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v16

    .line 1511
    .local v16, "bas":Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    const-string v3, "ActivityTaskManager"

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    invoke-static/range {v16 .. v16}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1512
    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    .line 1513
    .local v10, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v10, :cond_3

    .line 1515
    move-object/from16 v10, p3

    .line 1518
    :cond_3
    invoke-virtual {v4, v10, v14, v2}, Lcom/android/server/wm/Task;->performClearTop(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;

    .line 1519
    aget v11, v2, v9

    if-lez v11, :cond_4

    .line 1520
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cleared top n: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v2, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " activities from task t: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " not matching top uid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    .end local v10    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    invoke-static {v13}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldShowToast(I)Z

    move-result v10

    if-eqz v10, :cond_8

    if-eqz v8, :cond_5

    aget v9, v2, v9

    if-lez v9, :cond_6

    :cond_5
    goto :goto_0

    :cond_6
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto :goto_2

    .line 1527
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_7

    .line 1528
    const-string v10, "Top activities cleared by "

    goto :goto_1

    .line 1529
    :cond_7
    const-string v10, "Top activities would be cleared by "

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "go/android-asm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1527
    invoke-virtual {v0, v9}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    .line 1532
    const/4 v11, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    move-object v9, v1

    .end local v1    # "isLaunchingOrLaunched":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    .local v9, "isLaunchingOrLaunched":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    const-string v1, "Clear Top"

    move-object v10, v9

    .end local v9    # "isLaunchingOrLaunched":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    .local v10, "isLaunchingOrLaunched":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v9, 0x1

    move-object/from16 v17, v10

    .end local v10    # "isLaunchingOrLaunched":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    .local v17, "isLaunchingOrLaunched":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v10, 0x0

    move-object/from16 v18, v2

    move-object v13, v3

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .end local v2    # "finishCount":[I
    .local v18, "finishCount":[I
    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugInfoForActivitySecurity(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;IIZZZZLcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1525
    .end local v17    # "isLaunchingOrLaunched":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v18    # "finishCount":[I
    .restart local v1    # "isLaunchingOrLaunched":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v2    # "finishCount":[I
    :cond_8
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 1537
    .end local v1    # "isLaunchingOrLaunched":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v2    # "finishCount":[I
    .restart local v17    # "isLaunchingOrLaunched":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v18    # "finishCount":[I
    :goto_2
    return-void

    .line 1500
    .end local v8    # "shouldBlockActivityStart":Z
    .end local v16    # "bas":Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    .end local v17    # "isLaunchingOrLaunched":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v18    # "finishCount":[I
    .restart local v1    # "isLaunchingOrLaunched":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_9
    move-object/from16 v17, v1

    .line 1501
    .end local v1    # "isLaunchingOrLaunched":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v17    # "isLaunchingOrLaunched":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    :goto_3
    return-void

    .line 1490
    .end local v5    # "targetTaskTop":Lcom/android/server/wm/ActivityRecord;
    .end local v15    # "startingUid":I
    .end local v17    # "isLaunchingOrLaunched":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    :goto_4
    return-void
.end method

.method getStrictModeBalCallbacks(I)Ljava/util/Map;
    .locals 3
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/app/IBackgroundActivityLaunchCallback;",
            ">;"
        }
    .end annotation

    .line 922
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 923
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    .line 924
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 925
    .local v1, "callbackMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/app/IBackgroundActivityLaunchCallback;>;"
    if-nez v1, :cond_0

    .line 926
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 929
    .end local v1    # "callbackMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/app/IBackgroundActivityLaunchCallback;>;"
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 928
    .restart local v1    # "callbackMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/app/IBackgroundActivityLaunchCallback;>;"
    :cond_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0

    return-object v2

    .line 929
    .end local v1    # "callbackMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/app/IBackgroundActivityLaunchCallback;>;"
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasBalPermission(II)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 1257
    const-string v0, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-static {v0, p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onActivityRequestedFinishing(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "finishActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 2094
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 2095
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 2096
    .local v0, "entry":Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mLaunchCount:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 2098
    return-void

    .line 2101
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2102
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eq p1, v1, :cond_1

    .line 2103
    return-void

    .line 2106
    :cond_1
    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/ActivityRecord;)V

    .line 2107
    .local v1, "newEntry":Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;
    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2108
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz v2, :cond_2

    .line 2109
    iput-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 2111
    :cond_2
    return-void
.end method

.method onNewActivityLaunched(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    .param p1, "activityStarted"    # Lcom/android/server/wm/ActivityRecord;

    .line 2118
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2119
    return-void

    .line 2122
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz v0, :cond_1

    .line 2123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 2126
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 2127
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 2128
    .local v0, "entry":Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->isTaskId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2129
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    iget v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    :cond_2
    return-void
.end method

.method removeStrictModeCallback(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "callback"    # Landroid/os/IBinder;

    .line 971
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 972
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    .line 973
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 974
    .local v1, "callbackMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/app/IBackgroundActivityLaunchCallback;>;"
    if-eqz p2, :cond_0

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    goto :goto_1

    .line 977
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 979
    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 981
    .end local v1    # "callbackMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/app/IBackgroundActivityLaunchCallback;>;"
    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_0
    monitor-exit v0

    .line 982
    return-void

    .line 975
    .restart local v1    # "callbackMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/app/IBackgroundActivityLaunchCallback;>;"
    :goto_1
    monitor-exit v0

    return-void

    .line 981
    .end local v1    # "callbackMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/app/IBackgroundActivityLaunchCallback;>;"
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method shouldLogIntentActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .locals 4
    .param p1, "finalVerdict"    # Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .param p2, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 2045
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->-$$Nest$fgetmBasedOnRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x2710

    if-eqz v0, :cond_0

    .line 2046
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    if-ge v0, v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 2047
    :cond_0
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    if-ge v0, v3, :cond_1

    move v1, v2

    .line 2045
    :cond_1
    :goto_0
    return v1
.end method

.method shouldLogStats(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .locals 2
    .param p1, "finalVerdict"    # Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .param p2, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 2030
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getRawCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2031
    invoke-virtual {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->isPendingIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2033
    return v1

    .line 2035
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->-$$Nest$fgetmBasedOnRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2037
    return v1

    .line 2040
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "toastText"    # Ljava/lang/String;

    .line 1474
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1476
    return-void
.end method

.method writeBalAllowedLog(Ljava/lang/String;ILcom/android/server/wm/BackgroundActivityStartController$BalState;)V
    .locals 14
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 2051
    move-object/from16 v0, p3

    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v4

    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v5

    .line 2056
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    const/16 v2, 0x7f

    if-nez v1, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getRawCode()I

    move-result v1

    move v6, v1

    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    .line 2057
    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v7

    .line 2058
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerExplicitOptInOrOut()Z

    move-result v8

    .line 2059
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    if-nez v1, :cond_1

    move v9, v2

    goto :goto_1

    .line 2060
    :cond_1
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getRawCode()I

    move-result v2

    move v9, v2

    :goto_1
    iget-object v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 2061
    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v10

    .line 2062
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->realCallerExplicitOptInOrOut()Z

    move-result v11

    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v1

    .line 2063
    invoke-direct {p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result v12

    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v1

    .line 2064
    invoke-direct {p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result v13

    .line 2051
    const/16 v1, 0x278

    move-object v2, p1

    move/from16 v3, p2

    invoke-static/range {v1 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIIIZZIZZII)V

    .line 2066
    return-void
.end method

.method writeBalAllowedLogMinimal(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V
    .locals 17
    .param p1, "state"    # Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 2069
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2074
    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    const/16 v3, 0x7f

    if-nez v2, :cond_0

    move v9, v3

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getRawCode()I

    move-result v2

    move v9, v2

    :goto_0
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    .line 2075
    invoke-virtual {v2}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v10

    .line 2076
    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerExplicitOptInOrOut()Z

    move-result v11

    .line 2077
    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    if-nez v2, :cond_1

    move v12, v3

    goto :goto_1

    .line 2078
    :cond_1
    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getRawCode()I

    move-result v3

    move v12, v3

    :goto_1
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 2079
    invoke-virtual {v2}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v13

    .line 2080
    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->realCallerExplicitOptInOrOut()Z

    move-result v14

    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v2

    .line 2081
    invoke-direct {v0, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result v15

    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v2

    .line 2082
    invoke-direct {v0, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result v16

    .line 2069
    const/16 v4, 0x278

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static/range {v4 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIIIZZIZZII)V

    .line 2084
    return-void
.end method
