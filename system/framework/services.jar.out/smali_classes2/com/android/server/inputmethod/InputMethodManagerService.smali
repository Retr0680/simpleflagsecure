.class public final Lcom/android/server/inputmethod/InputMethodManagerService;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;
.implements Lcom/android/server/inputmethod/ZeroJankProxy$Callback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;,
        Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;,
        Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;,
        Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;,
        Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;,
        Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;,
        Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;,
        Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandResult;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;,
        Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;,
        Lcom/android/server/inputmethod/InputMethodManagerService$MultiUserUnawareField;,
        Lcom/android/server/inputmethod/InputMethodManagerService$SharedByAllUsersField;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final FALLBACK_DISPLAY_ID:I = 0x0

.field private static final HANDLER_THREAD_NAME:Ljava/lang/String; = "android.imms"

.field private static final MSG_DISPATCH_ON_INPUT_METHOD_LIST_UPDATED:I = 0x1392

.field private static final MSG_FINISH_HANDWRITING:I = 0x456

.field private static final MSG_HARD_KEYBOARD_SWITCH_CHANGED:I = 0xfa0

.field private static final MSG_HIDE_INPUT_METHOD:I = 0x40b

.field private static final MSG_NOTIFY_IME_UID_TO_AUDIO_SERVICE:I = 0x1b58

.field private static final MSG_PREPARE_HANDWRITING_DELEGATION:I = 0x46a

.field private static final MSG_REMOVE_HANDWRITING_WINDOW:I = 0x460

.field private static final MSG_REMOVE_IME_SURFACE:I = 0x424

.field private static final MSG_REMOVE_IME_SURFACE_FROM_WINDOW:I = 0x425

.field private static final MSG_RESET_HANDWRITING:I = 0x442

.field private static final MSG_SET_INTERACTIVE:I = 0xbd6

.field private static final MSG_START_HANDWRITING:I = 0x44c

.field private static final PACKAGE_MONITOR_THREAD_NAME:Ljava/lang/String; = "android.imms2"

.field public static final PROTO_ARG:Ljava/lang/String; = "--proto"

.field private static final SYSTEM_READY_USER_INIT_TIMEOUT:J = 0xbb8L

.field static final TAG:Ljava/lang/String; = "InputMethodManagerService"

.field private static final TAG_TRY_SUPPRESSING_IME_SWITCHER:Ljava/lang/String; = "TrySuppressingImeSwitcher"

.field private static final VIRTUAL_STYLUS_ID_FOR_TEST:Ljava/lang/Integer;


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private final mClientController:Lcom/android/server/inputmethod/ClientController;

.field private final mConcurrentMultiUserModeEnabled:Z

.field final mContext:Landroid/content/Context;

.field private mCurrentImeUserId:I

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

.field private final mFocusedWindowPerceptible:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

.field final mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

.field private final mImeTargetWindowMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

.field final mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field final mInputMethodDeviceConfigs:Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

.field private final mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field private final mIoHandler:Landroid/os/Handler;

.field mIsInteractive:Z

.field private final mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

.field private final mMenuControllerNew:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

.field private final mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

.field private final mNonPreemptibleInputMethods:[Ljava/lang/String;

.field final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPreventImeStartupUnlessTextEditor:Z

.field private final mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

.field final mRes:Landroid/content/res/Resources;

.field private mShowOngoingImeSwitcherForPhones:Z

.field private final mSlotIme:Ljava/lang/String;

.field private final mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

.field private final mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

.field private mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private mStylusIds:Landroid/util/IntArray;

.field mSystemReady:Z

.field private final mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

.field private final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field private mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

.field private mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field private final mVirtualDeviceMethodMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

.field final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$1TqIrI9XJE4lxfBne2GydQhihes(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/internal/inputmethod/IInputMethodClient;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$getInputMethodWindowVisibleHeight$14(IILcom/android/internal/inputmethod/IInputMethodClient;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2yaYCGdi-FTFk0U0SqmQylExNO8(Lcom/android/server/inputmethod/InputMethodManagerService;I)Lcom/android/server/inputmethod/InputMethodBindingController;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$new$0(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$983-c7NwhEF0jLAeuQHyp1MN8ns(Ljava/io/PrintWriter;Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$handleShellCommandResetInputMethod$23(Ljava/io/PrintWriter;Landroid/view/inputmethod/InputMethodInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ajy1LD49oef-aSSPQjitblYi7ZI(Lcom/android/server/inputmethod/InputMethodManagerService;I)Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$new$1(I)Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BEz7B_GfpYorp3byjexNG-cuYqw(Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$switchToInputMethodLocked$19(Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KrFDfFLY4gr7ocZ24OnQ68i_eoY(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$systemRunning$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ql7KM-KMloBIXWj7EANZ9i7Cguk(Lcom/android/server/inputmethod/InputMethodManagerService;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$showInputMethodPickerFromSystem$13(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$RS303u830fPb0-h1ENayK8Q3YOw(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$reportPerceptibleAsync$11(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$RXRc-iFyhS9it8Ka156p1npK7sM(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$getInputMethodListInternal$7(IILcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UbvZWBJ9FowzhVdSuWcXtKNAZQI(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/ClientState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$new$2(Lcom/android/server/inputmethod/ClientState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YEceZF6bY0rI6AFbpWd7gUm8Nlk(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$registerImeRequestedChangedListener$6(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZYCHd6BDARvPknQOP_ZKhBudPAc(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$onClientRemoved$9(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bCEyGYt3-EDhYtpurxMdhAGGV74(Lcom/android/server/inputmethod/ClientState;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$stopImeTrace$16(Lcom/android/server/inputmethod/ClientState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c0KojPg373V8KtUN5zFx9FFQqgE(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$cCwLRaPWPX20-PL5OitHL2Oa0Ok(Lcom/android/server/inputmethod/ClientState;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$startImeTrace$15(Lcom/android/server/inputmethod/ClientState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eaQwAKUurUC2LiayrMIP9Pm8bIg(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$systemRunning$5(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$eaRt77TJt2ZlBAijIwXdLdc8i9E(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$getEnabledInputMethodListInternal$8(IILcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gc2B2e-iZDkF-fiY0ixQiu1CSIo(Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$setInputMethodWithSubtypeIndexLocked$17(Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lV4X0NWkmvwKMJD9qmfCJr7nTdI(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/ClientState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$clearClientSessionsLocked$10(ILcom/android/server/inputmethod/ClientState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lYOQNX7TBpWmwEqMlATXd5Qayic(Landroid/util/Printer;Lcom/android/server/inputmethod/ClientState;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$dumpClientController$21(Landroid/util/Printer;Lcom/android/server/inputmethod/ClientState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m8aMtKnmJed5P-c7nAfFCT_Y8xs(Landroid/util/Printer;Lcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$dumpUserRepository$22(Landroid/util/Printer;Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q4DisDUdgDij-anD9rB61YeXSHI(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;ZLcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$dumpAsStringNoCheck$20(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;ZLcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sPn4z2XMgE9CUUJb_hyzqDQmWhk(Ljava/util/List;ILcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$handleMessage$18(Ljava/util/List;ILcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tD4AJAoKEevBz8mIP80L1ekxO28(Lcom/android/server/inputmethod/InputMethodManagerService;III)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$showInputMethodPickerFromClient$12(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/ClientController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConcurrentMultiUserModeEnabled(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentImeUserId(Lcom/android/server/inputmethod/InputMethodManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusedWindowPerceptible(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/util/WeakHashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHwController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/HandwritingModeController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInputMethodListListeners(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIoHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMenuControllerNew(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodMenuControllerNew;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuControllerNew:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserDataRepository(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/UserDataRepository;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserManagerInternal(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/pm/UserManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVirtualDeviceMethodMap(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDeviceMethodMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddStylusDeviceIdLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->addStylusDeviceIdLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyImeVisibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->applyImeVisibilityLocked(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mattachNewAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService;IZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchooseNewDefaultIMELocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcreateAccessibilityInputMethodSessions(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateInputContentUriTokenLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/net/Uri;Ljava/lang/String;Lcom/android/server/inputmethod/UserData;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->createInputContentUriTokenLocked(Landroid/net/Uri;Ljava/lang/String;Lcom/android/server/inputmethod/UserData;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdumpAsStringNoCheck(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpAsStringNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpDebug(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/util/proto/ProtoOutputStream;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetEnabledInputMethodListInternal(Lcom/android/server/inputmethod/InputMethodManagerService;II)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListInternal(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetEnabledInputMethodSubtypeListInternal(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;ZII)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodSubtypeListInternal(Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetInputMethodListInternal(Lcom/android/server/inputmethod/InputMethodManagerService;III)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(III)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleShellCommandEnableDisableInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleShellCommandListInputMethods(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleShellCommandResetInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleShellCommandSetInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleShellCommandTraceInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandTraceInputMethod(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhideMySoftInputLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideMySoftInputLocked(Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyUserActionLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyUserActionLocked(Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monImeSwitchButtonClickLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->onImeSwitchButtonClickLocked(ILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStylusHandwritingReadyLocked(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->onStylusHandwritingReadyLocked(IILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUpdateResourceOverlay(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUpdateResourceOverlay(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpublishLocalService(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->publishLocalService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveStylusDeviceIdLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeStylusDeviceIdLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportFullscreenModeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ZLcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportFullscreenModeLocked(ZLcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportStartInputLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportStartInputLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetSelectedInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetStylusHandwritingLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetStylusHandwritingLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresolveImeUserIdFromDisplayIdLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresolveImeUserIdFromWindowLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetImeWindowStatusLocked(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeWindowStatusLocked(IILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodAndSubtypeLocked(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetInputMethodEnabledLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;ZI)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshouldOfferSwitchingToNextInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/UserData;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldOfferSwitchingToNextInputMethodLocked(Lcom/android/server/inputmethod/UserData;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowMySoftInputLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->showMySoftInputLocked(Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchKeyboardLayoutLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchKeyboardLayoutLocked(ILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchToInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;II)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToInputMethodLocked(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mswitchToNextInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ZLcom/android/server/inputmethod/UserData;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToNextInputMethodLocked(ZLcom/android/server/inputmethod/UserData;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mswitchToPreviousInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/UserData;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToPreviousInputMethodLocked(Lcom/android/server/inputmethod/UserData;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mswitchUserOnHandlerLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchUserOnHandlerLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateImeWindowStatusLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateImeWindowStatusLocked(ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStatusIconLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;ILcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateStatusIconLocked(Ljava/lang/String;ILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSystemUiLocked(Lcom/android/server/inputmethod/InputMethodManagerService;III)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smisStylusDevice(Landroid/view/InputDevice;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusDevice(Landroid/view/InputDevice;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 240
    const v0, 0xf423f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->VIRTUAL_STYLUS_ID_FOR_TEST:Ljava/lang/Integer;

    .line 247
    sget-boolean v0, Landroid/os/Build;->DEBUG_NOTHING_INPUTMETHOD:Z

    sput-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ZLandroid/os/Looper;Landroid/os/Handler;Ljava/util/function/IntFunction;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "concurrentMultiUserModeEnabled"    # Z
    .param p3, "uiLooper"    # Landroid/os/Looper;
    .param p4, "ioHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Landroid/os/Looper;",
            "Landroid/os/Handler;",
            "Ljava/util/function/IntFunction<",
            "Lcom/android/server/inputmethod/InputMethodBindingController;",
            ">;)V"
        }
    .end annotation

    .line 1274
    .local p5, "bindingControllerForTesting":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<Lcom/android/server/inputmethod/InputMethodBindingController;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 475
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 477
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 481
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDeviceMethodMap:Landroid/util/SparseArray;

    .line 496
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    .line 602
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    .line 625
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 628
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v1, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    .line 638
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 642
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    .line 646
    new-instance v1, Lcom/android/server/inputmethod/StartInputHistory;

    invoke-direct {v1}, Lcom/android/server/inputmethod/StartInputHistory;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

    .line 651
    new-instance v1, Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    invoke-direct {v1}, Lcom/android/server/inputmethod/SoftInputShowHideHistory;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    .line 6063
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$5;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    .line 1275
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 1276
    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    .line 1277
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1280
    invoke-static {p3, p0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 1281
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    .line 1282
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    invoke-static {p1, v2, v3}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->onStart(Landroid/content/Context;Lcom/android/server/inputmethod/SystemLocaleWrapper$Callback;Landroid/os/Handler;)V

    .line 1283
    new-instance v2, Lcom/android/server/inputmethod/ImeTrackerService;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/android/server/inputmethod/ImeTrackerService;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    .line 1284
    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1285
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1286
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1287
    const-class v2, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerInternal;

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 1288
    new-instance v2, Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    invoke-direct {v2}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;-><init>()V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    .line 1289
    new-instance v2, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

    invoke-direct {v2}, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;-><init>()V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodDeviceConfigs:Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

    .line 1290
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 1292
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v3, 0x1040a03

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 1294
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1296
    invoke-static {}, Lcom/android/server/inputmethod/ImeProtoLogGroup;->values()[Lcom/android/server/inputmethod/ImeProtoLogGroup;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/protolog/ProtoLog;->init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 1298
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v2

    iput v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 1300
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1302
    .local v2, "bindingControllerFactory":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<Lcom/android/server/inputmethod/InputMethodBindingController;>;"
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1305
    .local v3, "visibilityStateComputerFactory":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<Lcom/android/server/inputmethod/ImeVisibilityStateComputer;>;"
    new-instance v4, Lcom/android/server/inputmethod/UserDataRepository;

    .line 1306
    if-eqz p5, :cond_0

    move-object v5, p5

    goto :goto_0

    .line 1307
    :cond_0
    move-object v5, v2

    :goto_0
    invoke-direct {v4, v5, v3}, Lcom/android/server/inputmethod/UserDataRepository;-><init>(Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)V

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    .line 1309
    new-instance v4, Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/InputMethodMenuController;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 1310
    nop

    .line 1311
    new-instance v4, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    invoke-direct {v4}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;-><init>()V

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuControllerNew:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    .line 1312
    new-instance v4, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    .line 1314
    new-instance v4, Lcom/android/server/inputmethod/ClientController;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-direct {v4, v5}, Lcom/android/server/inputmethod/ClientController;-><init>(Landroid/content/pm/PackageManagerInternal;)V

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 1315
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v4, v5}, Lcom/android/server/inputmethod/ClientController;->addClientControllerCallback(Lcom/android/server/inputmethod/ClientController$ClientControllerCallback;)V

    .line 1317
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v5, 0x1110007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreventImeStartupUnlessTextEditor:Z

    .line 1319
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v5, 0x107009e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNonPreemptibleInputMethods:[Ljava/lang/String;

    .line 1321
    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1322
    .local v4, "discardDelegationTextRunnable":Ljava/lang/Runnable;
    new-instance v5, Lcom/android/server/inputmethod/HandwritingModeController;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;

    invoke-direct {v7, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V

    invoke-direct {v5, v6, p3, v7, v4}, Lcom/android/server/inputmethod/HandwritingModeController;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 1324
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->registerDeviceListenerAndCheckStylusSupport()V

    .line 1325
    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;

    invoke-direct {v5, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 1326
    .end local v2    # "bindingControllerFactory":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<Lcom/android/server/inputmethod/InputMethodBindingController;>;"
    .end local v3    # "visibilityStateComputerFactory":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<Lcom/android/server/inputmethod/ImeVisibilityStateComputer;>;"
    .end local v4    # "discardDelegationTextRunnable":Ljava/lang/Runnable;
    monitor-exit v1

    .line 1327
    return-void

    .line 1326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addStylusDeviceIdLocked(I)V
    .locals 2
    .param p1, "deviceId"    # I

    .line 4542
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    if-nez v0, :cond_0

    .line 4543
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    goto :goto_0

    .line 4544
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4545
    return-void

    .line 4547
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New Stylus deviceId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " added."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4548
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 4551
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    .line 4552
    .local v0, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4553
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4554
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    .line 4556
    :cond_2
    return-void
.end method

.method private applyImeVisibilityLocked(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/inputmethod/UserData;)V
    .locals 9
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "setVisible"    # Z
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p4, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 4794
    const-wide/16 v1, 0x20

    :try_start_0
    const-string v0, "IMMS.applyImeVisibilityLocked"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4795
    iget v0, p4, Lcom/android/server/inputmethod/UserData;->mUserId:I

    move v8, v0

    .line 4796
    .local v8, "userId":I
    iget-object v0, p4, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 4797
    .local v0, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    invoke-virtual {v0, p1, v8}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowTokenFrom(Landroid/os/IBinder;I)Landroid/os/IBinder;

    move-result-object v4

    .line 4799
    .local v4, "requestToken":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4800
    if-eqz p2, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v6, v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 4799
    :goto_1
    const/4 v7, 0x0

    move-object v5, p3

    .end local p3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v5, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4803
    .end local v0    # "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .end local v4    # "requestToken":Landroid/os/IBinder;
    .end local v8    # "userId":I
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4804
    nop

    .line 4805
    return-void

    .line 4803
    :catchall_0
    move-exception v0

    move-object p3, v0

    goto :goto_2

    .end local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :catchall_1
    move-exception v0

    move-object v5, p3

    move-object p3, v0

    .end local p3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v5    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4804
    throw p3
.end method

.method private attachNewAccessibilityLocked(IZI)V
    .locals 5
    .param p1, "startInputReason"    # I
    .param p2, "initial"    # Z
    .param p3, "userId"    # I

    .line 2050
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 2052
    .local v0, "userData":Lcom/android/server/inputmethod/UserData;
    iget-boolean v1, v0, Lcom/android/server/inputmethod/UserData;->mBoundToAccessibility:Z

    if-nez v1, :cond_0

    .line 2053
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/AccessibilityManagerInternal;->bindInput()V

    .line 2054
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/inputmethod/UserData;->mBoundToAccessibility:Z

    .line 2062
    :cond_0
    const/16 v1, 0xb

    if-eq p1, v1, :cond_1

    .line 2063
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setEnabledSessionForAccessibilityLocked(Landroid/util/SparseArray;Lcom/android/server/inputmethod/UserData;)V

    .line 2065
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    iget-object v3, v0, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    xor-int/lit8 v4, p2, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/AccessibilityManagerInternal;->startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 2069
    :cond_1
    return-void
.end method

.method private canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z
    .locals 5
    .param p1, "targetPkgName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "settings"    # Lcom/android/server/inputmethod/InputMethodSettings;

    .line 5649
    invoke-virtual {p4}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v0

    .line 5650
    .local v0, "methodId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5651
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodUtils;->convertIdToComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5652
    .local v1, "selectedInputMethod":Landroid/content/ComponentName;
    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5653
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5654
    return v2

    .line 5656
    :cond_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, p1, p2, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v3

    xor-int/2addr v2, v3

    .line 5658
    .local v2, "canAccess":Z
    sget-boolean v3, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 5659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not visible to the caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputMethodManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5662
    :cond_2
    return v2
.end method

.method private canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p5, "userId"    # I

    .line 4075
    invoke-virtual {p0, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 4076
    .local v0, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 4077
    invoke-virtual {v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 4081
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object v1

    .line 4082
    .local v1, "cs":Lcom/android/server/inputmethod/ClientState;
    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 4086
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, p4, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 4087
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-direct {p0, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isImeClientFocused(Landroid/os/IBinder;Lcom/android/server/inputmethod/ClientState;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4088
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p3, v2, p2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Ignoring %s of uid %d : %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4089
    const/4 v2, 0x0

    return v2

    .line 4092
    .end local v1    # "cs":Lcom/android/server/inputmethod/ClientState;
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, p4, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 4093
    const/4 v1, 0x1

    return v1

    .line 4083
    .restart local v1    # "cs":Lcom/android/server/inputmethod/ClientState;
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, p4, v2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 4084
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private canShowInputMethodPickerLocked(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z
    .locals 7
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "userId"    # I

    .line 4099
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4100
    .local v0, "uid":I
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    .line 4101
    .local v1, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v2, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 4102
    invoke-virtual {v2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 4103
    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v2, v4, :cond_0

    .line 4104
    return v3

    .line 4106
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v4, 0x0

    if-eq p2, v2, :cond_1

    .line 4107
    return v4

    .line 4109
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurIntent()Landroid/content/Intent;

    move-result-object v2

    .line 4110
    .local v2, "curIntent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 4111
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4110
    invoke-static {v5, v0, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/content/pm/PackageManagerInternal;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4112
    return v3

    .line 4114
    :cond_2
    return v4
.end method

.method private chooseNewDefaultIMELocked(I)Z
    .locals 5
    .param p1, "userId"    # I

    .line 5248
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 5249
    .local v0, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    nop

    .line 5250
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v1

    .line 5249
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    .line 5251
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_0

    .line 5252
    sget-object v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "New default IME was selected: %s"

    invoke-static {v2, v4, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5253
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;I)V

    .line 5254
    const/4 v2, 0x1

    return v2

    .line 5257
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private computeCurrentDeviceMethodIdLocked(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "userId"    # I
    .param p2, "currentMethodId"    # Ljava/lang/String;

    .line 2229
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v0, :cond_0

    .line 2230
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2232
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v0, :cond_1

    .line 2233
    return-object p2

    .line 2236
    :cond_1
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 2237
    .local v0, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v1

    .line 2238
    .local v1, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDeviceIdToShowIme()I

    move-result v2

    .line 2239
    .local v2, "oldDeviceId":I
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDisplayIdToShowIme()I

    move-result v3

    .line 2240
    .local v3, "displayIdToShowIme":I
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {v4, v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdForDisplayId(I)I

    move-result v4

    .line 2241
    .local v4, "newDeviceId":I
    if-eqz v4, :cond_3

    .line 2243
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v5, :cond_2

    .line 2244
    const-class v5, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2246
    :cond_2
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v5, v3}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->flags:I

    .line 2247
    .local v5, "displayFlags":I
    and-int/lit16 v6, v5, 0x80

    const/16 v7, 0x80

    if-eq v6, v7, :cond_3

    .line 2249
    const/4 v4, 0x0

    .line 2252
    .end local v5    # "displayFlags":I
    :cond_3
    invoke-virtual {v1, v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->setDeviceIdToShowIme(I)V

    .line 2253
    const/4 v5, 0x0

    if-nez v4, :cond_5

    .line 2254
    if-nez v2, :cond_4

    .line 2255
    return-object p2

    .line 2257
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedDefaultDeviceInputMethod()Ljava/lang/String;

    move-result-object v6

    .line 2258
    .local v6, "defaultDeviceMethodId":Ljava/lang/String;
    sget-object v7, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v8, "Restoring default device input method: %s"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2260
    invoke-virtual {v0, v5}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    .line 2261
    return-object v6

    .line 2264
    .end local v6    # "defaultDeviceMethodId":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDeviceMethodMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, p2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2265
    .local v6, "deviceMethodId":Ljava/lang/String;
    invoke-static {v6, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2266
    return-object p2

    .line 2267
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/inputmethod/InputMethodMap;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 2268
    sget-object v7, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 2271
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8, v6}, [Ljava/lang/Object;

    move-result-object v8

    .line 2268
    const-string v9, "Disabling IME on virtual device with id %s because its custom input method is not available: %s"

    invoke-static {v7, v9, v8}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2272
    return-object v5

    .line 2275
    :cond_7
    if-nez v2, :cond_8

    .line 2276
    sget-object v5, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v7, "Storing default device input method %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2277
    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    .line 2279
    :cond_8
    sget-object v5, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 2282
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {p2, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 2279
    const-string v8, "Switching current input method from %s to device-specific one %s because the current display %s belongs to device with id %s"

    invoke-static {v5, v8, v7}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2283
    return-object v6
.end method

.method static computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I
    .locals 1
    .param p0, "displayId"    # I
    .param p1, "checker"    # Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    .line 2384
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTargetInner(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;I)I

    move-result v0

    return v0
.end method

.method private static computeImeDisplayIdForTargetInner(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;I)I
    .locals 3
    .param p0, "displayId"    # I
    .param p1, "checker"    # Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;
    .param p2, "fallbackDisplayId"    # I

    .line 2408
    if-eq p0, p2, :cond_0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    :cond_0
    goto :goto_0

    .line 2414
    :cond_1
    invoke-interface {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;->getDisplayImePolicy(I)I

    move-result v1

    .line 2415
    .local v1, "result":I
    if-nez v1, :cond_2

    .line 2416
    return p0

    .line 2417
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 2418
    return v0

    .line 2420
    :cond_3
    return p2

    .line 2409
    .end local v1    # "result":I
    :goto_0
    return p2
.end method

.method private createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;",
            ">;"
        }
    .end annotation

    .line 2074
    .local p1, "accessibilitySessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2076
    .local v0, "accessibilityInputMethodSessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2077
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2078
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 2077
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2076
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2080
    .end local v1    # "i":I
    return-object v0
.end method

.method private createInputContentUriTokenLocked(Landroid/net/Uri;Ljava/lang/String;Lcom/android/server/inputmethod/UserData;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .locals 9
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 6016
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6017
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6018
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 6019
    .local v0, "contentUriScheme":Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6023
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 6024
    .local v4, "uid":I
    iget-object v1, p3, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 6025
    .local v1, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 6026
    return-object v3

    .line 6031
    :cond_0
    iget-object v2, p3, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_1

    .line 6032
    iget-object v2, p3, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    move-object v8, v2

    .line 6033
    .local v8, "curPackageName":Ljava/lang/String;
    invoke-static {v8, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6034
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring createInputContentUriTokenLocked mCurEditorInfo.packageName="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " packageName="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "InputMethodManagerService"

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6036
    return-object v3

    .line 6039
    :cond_2
    iget-object v2, p3, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget v2, v2, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 6041
    .local v7, "appUserId":I
    iget v2, p3, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-static {p1, v2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .line 6043
    .local v6, "contentUriOwnerUserId":I
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 6050
    .local v3, "contentUriWithoutUserId":Landroid/net/Uri;
    new-instance v2, Lcom/android/server/inputmethod/InputContentUriTokenHandler;

    move-object v5, p2

    .end local p2    # "packageName":Ljava/lang/String;
    .local v5, "packageName":Ljava/lang/String;
    invoke-direct/range {v2 .. v7}, Lcom/android/server/inputmethod/InputContentUriTokenHandler;-><init>(Landroid/net/Uri;ILjava/lang/String;II)V

    return-object v2

    .line 6020
    .end local v1    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v3    # "contentUriWithoutUserId":Landroid/net/Uri;
    .end local v4    # "uid":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "contentUriOwnerUserId":I
    .end local v7    # "appUserId":I
    .end local v8    # "curPackageName":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    :cond_3
    move-object v5, p2

    .end local p2    # "packageName":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    new-instance p2, Ljava/security/InvalidParameterException;

    const-string v1, "contentUri must have content scheme"

    invoke-direct {p2, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;
    .locals 9
    .param p1, "show"    # Z
    .param p2, "reason"    # I
    .param p3, "userId"    # I

    .line 6894
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 6895
    .local v0, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v1, :cond_0

    .line 6896
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    iget v1, v1, Lcom/android/server/inputmethod/ClientState;->mUid:I

    goto :goto_0

    .line 6897
    :cond_0
    const/4 v1, -0x1

    :goto_0
    move v4, v1

    .line 6898
    .local v4, "uid":I
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1

    .line 6899
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    move-object v3, v1

    goto :goto_1

    .line 6900
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_1
    nop

    .line 6902
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    .line 6903
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_2
    move v5, v1

    goto :goto_3

    :cond_2
    const/4 v1, 0x2

    goto :goto_2

    .line 6902
    :goto_3
    const/4 v6, 0x6

    const/4 v8, 0x0

    move v7, p2

    .end local p2    # "reason":I
    .local v7, "reason":I
    invoke-interface/range {v2 .. v8}, Landroid/view/inputmethod/ImeTracker;->onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p2

    return-object p2
.end method

.method private discardHandwritingDelegationText()V
    .locals 2

    .line 1350
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1351
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    .line 1352
    .local v1, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v1, :cond_0

    .line 1353
    invoke-virtual {v1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->discardHandwritingDelegationText()V

    goto :goto_0

    .line 1355
    .end local v1    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 1356
    return-void

    .line 1355
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpAsStringNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "isCritical"    # Z

    .line 6144
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->parseUserIdFromDumpArgs([Ljava/lang/String;)I

    move-result v7

    .line 6145
    .local v7, "argUserId":I
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    move-object v8, v0

    .line 6148
    .local v8, "p":Landroid/util/Printer;
    sget-object v0, Lcom/nothing/INtExtFactory$ExtType;->NT_INPUT_METHOD_LOG:Lcom/nothing/INtExtFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/NtExtFactory;->getOrCreate(Lcom/nothing/INtExtFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/ext/INtInputMethodLog;

    .line 6149
    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v0, p2, p3, v2, v4}, Lcom/nothing/ext/INtInputMethodLog;->dumpIMMS(Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/internal/protolog/common/IProtoLog;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6150
    sget-boolean v0, Landroid/os/Build;->DEBUG_NOTHING_INPUTMETHOD:Z

    sput-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    .line 6151
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->DEBUG:Z

    .line 6152
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/inputmethod/IInputMethodInvoker;->DEBUG:Z

    .line 6153
    return-void

    .line 6156
    :cond_0
    const-string v0, "Input Method Manager Service state:"

    invoke-interface {v8, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSystemReady="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInteractive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mConcurrentMultiUserModeEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6161
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    .line 6162
    :try_start_0
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    move v9, v0

    .line 6163
    .local v9, "currentImeUserId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mCurrentImeUserId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mStylusIds="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    if-eqz v4, :cond_1

    .line 6165
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 6166
    .end local v9    # "currentImeUserId":I
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 6165
    .restart local v9    # "currentImeUserId":I
    :cond_1
    const-string v4, ""

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6164
    invoke-interface {v8, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6166
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6168
    nop

    .line 6169
    const-string v0, "  mMenuControllerNew:"

    invoke-interface {v8, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6170
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuControllerNew:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    const-string v2, "    "

    invoke-virtual {v0, v8, v2}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6175
    invoke-direct {p0, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpClientController(Landroid/util/Printer;)V

    .line 6176
    invoke-direct {p0, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpUserRepository(Landroid/util/Printer;)V

    .line 6179
    const-class v4, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v4

    .line 6180
    :try_start_1
    const-string v0, "  mStartInputHistory:"

    invoke-interface {v8, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6181
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

    const-string v2, "    "

    invoke-virtual {v0, p2, v2}, Lcom/android/server/inputmethod/StartInputHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6183
    const-string v0, "  mSoftInputShowHideHistory:"

    invoke-interface {v8, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6184
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    const-string v2, "    "

    invoke-virtual {v0, p2, v2}, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6185
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6187
    const-string v0, "  mImeTrackerService#History:"

    invoke-interface {v8, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6188
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    const-string v2, "    "

    invoke-virtual {v0, p2, v2}, Lcom/android/server/inputmethod/ImeTrackerService;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6190
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    const/16 v2, -0x2710

    if-eqz v0, :cond_2

    if-ne v7, v2, :cond_2

    .line 6191
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda21;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Lcom/android/server/inputmethod/UserDataRepository;->forAllUserData(Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 6194
    :cond_2
    if-eq v7, v2, :cond_3

    move v0, v7

    goto :goto_1

    :cond_3
    move v0, v9

    .line 6195
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    .line 6196
    .local v2, "userData":Lcom/android/server/inputmethod/UserData;
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpAsStringNoCheckForUser(Lcom/android/server/inputmethod/UserData;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 6198
    .end local v0    # "userId":I
    .end local v2    # "userData":Lcom/android/server/inputmethod/UserData;
    :goto_2
    return-void

    .line 6185
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 6166
    .end local v9    # "currentImeUserId":I
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private dumpAsStringNoCheckForUser(Lcom/android/server/inputmethod/UserData;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 17
    .param p1, "userData"    # Lcom/android/server/inputmethod/UserData;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "isCritical"    # Z

    .line 6213
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, v3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    move-object v5, v0

    .line 6216
    .local v5, "p":Landroid/util/Printer;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  UserId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6217
    const-class v6, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v6

    .line 6218
    :try_start_0
    iget-object v0, v1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 6219
    .local v0, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    iget-object v7, v1, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 6220
    .local v7, "client":Lcom/android/server/inputmethod/ClientState;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v8

    .line 6221
    .local v8, "method":Lcom/android/server/inputmethod/IInputMethodInvoker;
    const-string v9, "    mBindingController:"

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6222
    const-string v9, "      "

    invoke-virtual {v0, v3, v9}, Lcom/android/server/inputmethod/InputMethodBindingController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6223
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    mCurClient="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6224
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    mFocusedWindowPerceptible="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v10, p0

    :try_start_1
    iget-object v11, v10, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6225
    const-string v9, "    mImeBindingState:"

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6226
    iget-object v9, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    const-string v11, "      "

    invoke-virtual {v9, v5, v11}, Lcom/android/server/inputmethod/ImeBindingState;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6227
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    mBoundToMethod="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v1, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6228
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    mEnabledSession="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6229
    const-string v9, "    mVisibilityStateComputer:"

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6230
    iget-object v9, v1, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    const-string v11, "      "

    invoke-virtual {v9, v3, v11}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6231
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    mInFullscreenMode="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v1, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6233
    iget v9, v1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-static {v9}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v9

    .line 6234
    .local v9, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object v11

    .line 6235
    .local v11, "methodList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 6236
    .local v12, "numImes":I
    const-string v13, "    Input Methods:"

    invoke-interface {v5, v13}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6237
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v12, :cond_0

    .line 6238
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodInfo;

    .line 6239
    .local v14, "info":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .local v16, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    const-string v0, "      InputMethod #"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6240
    const-string v0, "        "

    invoke-virtual {v14, v5, v0}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6237
    .end local v14    # "info":Landroid/view/inputmethod/InputMethodInfo;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    goto :goto_0

    .line 6242
    .end local v7    # "client":Lcom/android/server/inputmethod/ClientState;
    .end local v8    # "method":Lcom/android/server/inputmethod/IInputMethodInvoker;
    .end local v9    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .end local v11    # "methodList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v12    # "numImes":I
    .end local v13    # "i":I
    .end local v16    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 6237
    .restart local v0    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .restart local v7    # "client":Lcom/android/server/inputmethod/ClientState;
    .restart local v8    # "method":Lcom/android/server/inputmethod/IInputMethodInvoker;
    .restart local v9    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .restart local v11    # "methodList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v12    # "numImes":I
    .restart local v13    # "i":I
    :cond_0
    move-object/from16 v16, v0

    .line 6242
    .end local v0    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v9    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .end local v11    # "methodList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v12    # "numImes":I
    .end local v13    # "i":I
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6245
    if-eqz p5, :cond_1

    .line 6246
    return-void

    .line 6249
    :cond_1
    const-string v0, ""

    invoke-interface {v5, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6250
    if-eqz v7, :cond_2

    .line 6251
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 6253
    :try_start_2
    iget-object v0, v7, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, v2, v4}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6256
    :goto_1
    goto :goto_2

    .line 6254
    :catch_0
    move-exception v0

    .line 6255
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to dump input method client: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 6258
    :cond_2
    const-string v0, "No input method client."

    invoke-interface {v5, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6260
    :goto_2
    const-class v9, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v9

    .line 6261
    :try_start_3
    iget-object v0, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    move-object v6, v0

    .line 6262
    .local v6, "focusedWindowClient":Lcom/android/server/inputmethod/ClientState;
    if-eqz v6, :cond_3

    if-eq v7, v6, :cond_3

    .line 6263
    const-string v0, ""

    invoke-interface {v5, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6264
    const-string v0, "Warning: Current input method client doesn\'t match the last focused window."

    invoke-interface {v5, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6266
    const-string v0, "Dumping input method client in the last focused window just in case."

    invoke-interface {v5, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6267
    const-string v0, ""

    invoke-interface {v5, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6268
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6270
    :try_start_4
    iget-object v0, v6, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, v2, v4}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6273
    goto :goto_3

    .line 6275
    .end local v6    # "focusedWindowClient":Lcom/android/server/inputmethod/ClientState;
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 6271
    .restart local v6    # "focusedWindowClient":Lcom/android/server/inputmethod/ClientState;
    :catch_1
    move-exception v0

    nop

    .line 6272
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to dump input method client in focused window: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6275
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "focusedWindowClient":Lcom/android/server/inputmethod/ClientState;
    :cond_3
    :goto_3
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6277
    const-string v0, ""

    invoke-interface {v5, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6278
    if-eqz v8, :cond_4

    .line 6279
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 6281
    :try_start_6
    invoke-virtual {v8}, Lcom/android/server/inputmethod/IInputMethodInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, v2, v4}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 6284
    :goto_4
    goto :goto_5

    .line 6282
    :catch_2
    move-exception v0

    .line 6283
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to dump input method service: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 6286
    :cond_4
    const-string v0, "No input method service."

    invoke-interface {v5, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6288
    :goto_5
    return-void

    .line 6275
    :goto_6
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 6242
    .end local v7    # "client":Lcom/android/server/inputmethod/ClientState;
    .end local v8    # "method":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :catchall_2
    move-exception v0

    move-object/from16 v10, p0

    :goto_7
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method private dumpClientController(Landroid/util/Printer;)V
    .locals 3
    .param p1, "p"    # Landroid/util/Printer;

    .line 6291
    const-string v0, "  mClientController:"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6293
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;-><init>(Landroid/util/Printer;)V

    .line 6305
    .local v0, "clientControllerDump":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/inputmethod/ClientState;>;"
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 6306
    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {v2, v0}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 6307
    monitor-exit v1

    .line 6308
    return-void

    .line 6307
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 4740
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4741
    :try_start_0
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 4742
    .local v1, "userId":I
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    .line 4743
    .local v2, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v3, v2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4744
    .local v3, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    iget-object v4, v2, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 4745
    .local v4, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 4746
    .local v5, "token":J
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v7

    const-wide v8, 0x10900000001L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4747
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v7

    const-wide v8, 0x10500000002L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4748
    iget-object v7, v2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-wide v8, 0x10900000003L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4749
    iget-object v7, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v7, p1, v8}, Lcom/android/server/inputmethod/ImeBindingState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/wm/WindowManagerInternal;)V

    .line 4750
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 4751
    invoke-virtual {v4}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getLastImeTargetWindow()Landroid/os/IBinder;

    move-result-object v8

    .line 4750
    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v7

    const-wide v8, 0x10900000005L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4752
    iget-object v7, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget v7, v7, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    invoke-static {v7}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v7

    const-wide v8, 0x10900000006L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4754
    iget-object v7, v2, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v7, :cond_0

    .line 4755
    iget-object v7, v2, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-wide v8, 0x10b00000007L

    invoke-virtual {v7, p1, v8, v9}, Landroid/view/inputmethod/EditorInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    .line 4774
    .end local v1    # "userId":I
    .end local v2    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v3    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v4    # "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .end local v5    # "token":J
    :catchall_0
    move-exception v1

    goto/16 :goto_1

    .line 4757
    .restart local v1    # "userId":I
    .restart local v2    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v3    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .restart local v4    # "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .restart local v5    # "token":J
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v7

    const-wide v8, 0x10900000008L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4758
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4759
    iget-boolean v7, v2, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    const-wide v8, 0x1080000000dL

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4760
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-wide v8, 0x1090000000eL

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4761
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v7

    const-wide v8, 0x1050000000fL

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4762
    iget-boolean v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const-wide v8, 0x10800000010L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4763
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->hasMainConnection()Z

    move-result v7

    const-wide v8, 0x10800000012L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4764
    iget-boolean v7, v2, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    const-wide v8, 0x10800000013L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4765
    iget-boolean v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    const-wide v8, 0x10800000014L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4766
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v7

    const-wide v8, 0x10500000015L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4767
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getImeWindowVis()I

    move-result v7

    const-wide v8, 0x10500000016L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4768
    nop

    .line 4772
    iget-boolean v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    const-wide v8, 0x10800000019L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4773
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4774
    .end local v1    # "userId":I
    .end local v2    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v3    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v4    # "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .end local v5    # "token":J
    monitor-exit v0

    .line 4775
    return-void

    .line 4774
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpUserRepository(Landroid/util/Printer;)V
    .locals 3
    .param p1, "p"    # Landroid/util/Printer;

    .line 6311
    const-string v0, "  mUserDataRepository:"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6313
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;-><init>(Landroid/util/Printer;)V

    .line 6335
    .local v0, "userDataDump":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/inputmethod/UserData;>;"
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 6336
    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    invoke-virtual {v2, v0}, Lcom/android/server/inputmethod/UserDataRepository;->forAllUserData(Ljava/util/function/Consumer;)V

    .line 6337
    monitor-exit v1

    .line 6338
    return-void

    .line 6337
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static filterInputMethodServices(Ljava/util/List;Landroid/content/Context;Ljava/util/List;)Lcom/android/server/inputmethod/RawInputMethodMap;
    .locals 12
    .param p1, "userAwareContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Lcom/android/server/inputmethod/RawInputMethodMap;"
        }
    .end annotation

    .line 5292
    .local p0, "enabledInputMethodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 5293
    .local v0, "imiPackageCount":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 5295
    .local v1, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 5296
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 5297
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 5298
    .local v4, "si":Landroid/content/pm/ServiceInfo;
    invoke-static {v3}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v5

    .line 5299
    .local v5, "imeId":Ljava/lang/String;
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v7, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, "InputMethodManagerService"

    if-nez v6, :cond_0

    .line 5300
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping input method "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": it does not require the permission "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5303
    goto/16 :goto_4

    .line 5306
    :cond_0
    sget-object v6, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v7, "Checking %s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v6, v7, v9}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5309
    :try_start_0
    new-instance v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 5310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, p1, v3, v7}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 5311
    .local v6, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5312
    goto/16 :goto_4

    .line 5314
    :cond_1
    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 5316
    .local v7, "packageName":Ljava/lang/String;
    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_3

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 5317
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v11, 0x14

    if-ge v9, v11, :cond_2

    goto :goto_1

    .line 5325
    :cond_2
    sget-object v9, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v10, "Found an input method, but ignored due threshold: %s"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 5328
    .end local v6    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_3

    .line 5319
    .restart local v6    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_1
    nop

    .line 5320
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 5319
    invoke-virtual {v0, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5322
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5323
    sget-object v9, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v10, "Found an input method %s"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5330
    .end local v6    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    :goto_2
    goto :goto_4

    .line 5328
    :goto_3
    nop

    .line 5329
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load input method "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5295
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v5    # "imeId":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    nop

    .line 5332
    .end local v2    # "i":I
    invoke-static {v1}, Lcom/android/server/inputmethod/RawInputMethodMap;->of(Landroid/util/ArrayMap;)Lcom/android/server/inputmethod/RawInputMethodMap;

    move-result-object v2

    return-object v2
.end method

.method private finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V
    .locals 3
    .param p1, "sessionState"    # Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 2652
    if-eqz p1, :cond_0

    .line 2653
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    if-eqz v0, :cond_0

    .line 2655
    :try_start_0
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2658
    goto :goto_0

    .line 2656
    :catch_0
    move-exception v0

    .line 2657
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManagerService"

    const-string v2, "Session failed to close due to remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2659
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 2662
    :cond_0
    return-void
.end method

.method private finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V
    .locals 6
    .param p1, "sessionState"    # Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2630
    if-eqz p1, :cond_1

    .line 2631
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2633
    :try_start_0
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2640
    goto :goto_0

    .line 2634
    :catch_0
    move-exception v0

    .line 2635
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "InputMethodManagerService"

    const-string v3, "Session failed to close due to remote exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2636
    iget v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mUserId:I

    .line 2637
    .local v2, "userId":I
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v3

    .line 2638
    .local v3, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v5

    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    .line 2641
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "userId":I
    .end local v3    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :goto_0
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 2643
    :cond_0
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1

    .line 2644
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2645
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    .line 2648
    :cond_1
    return-void
.end method

.method private getEnabledInputMethodListInternal(II)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1753
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 1754
    .local v0, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1756
    .local v1, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/InputMethodSettings;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1758
    return-object v1
.end method

.method private getEnabledInputMethodSubtypeListInternal(Ljava/lang/String;ZII)Ljava/util/List;
    .locals 3
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "allowsImplicitlyEnabledSubtypes"    # Z
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZII)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 1792
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 1793
    .local v0, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    .line 1794
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v1, :cond_0

    .line 1795
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 1797
    :cond_0
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p4, p3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1798
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 1800
    :cond_1
    invoke-virtual {v0, v1, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static getExceptionForUnknownImeId(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "imeId"    # Ljava/lang/String;

    .line 4221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getInputMethodListInternal(III)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "directBootAwareness"    # I
    .param p3, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1738
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 1739
    .local v0, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/RawInputMethodMap;

    .line 1740
    invoke-static {p1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1741
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 1739
    invoke-virtual {v1, v2, p2, v3}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    .line 1742
    .local v1, "methodMap":Lcom/android/server/inputmethod/InputMethodMap;
    invoke-static {v1, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->create(Lcom/android/server/inputmethod/InputMethodMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v2

    .line 1744
    .local v2, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1746
    .local v3, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v4, p0, p3, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/InputMethodSettings;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1748
    return-object v3
.end method

.method private getInputMethodNavButtonFlagsLocked(Lcom/android/server/inputmethod/UserData;)I
    .locals 8
    .param p1, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 2747
    iget v0, p1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 2748
    .local v0, "userId":I
    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2751
    .local v1, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v2

    .line 2752
    .local v2, "tokenDisplayId":I
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2753
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_0

    .line 2754
    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v5

    .line 2753
    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->hasNavigationBar(I)Z

    move-result v3

    .line 2755
    .local v3, "hasNavigationBar":Z
    iget-object v4, p1, Lcom/android/server/inputmethod/UserData;->mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    .line 2756
    .local v4, "canImeDrawsImeNavBar":Z
    :goto_1
    const/4 v7, 0x3

    invoke-direct {p0, v7, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(II)Z

    move-result v7

    .line 2758
    .local v7, "shouldShowImeSwitcherWhenImeIsShown":Z
    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v6, v5

    .line 2759
    :goto_2
    if-eqz v7, :cond_3

    .line 2760
    const/4 v5, 0x2

    goto :goto_3

    :cond_3
    nop

    :goto_3
    or-int/2addr v5, v6

    .line 2758
    return v5
.end method

.method private static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 1382
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1383
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    goto :goto_0

    .line 1385
    :cond_0
    nop

    .line 1384
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 1385
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1382
    :goto_0
    return-object v0
.end method

.method private static getStylusInputDeviceIds(Landroid/hardware/input/InputManager;)Landroid/util/IntArray;
    .locals 7
    .param p0, "im"    # Landroid/hardware/input/InputManager;

    .line 4649
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 4650
    .local v0, "stylusIds":Landroid/util/IntArray;
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 4651
    .local v4, "id":I
    invoke-virtual {p0, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 4652
    .local v5, "device":Landroid/view/InputDevice;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/InputDevice;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusDevice(Landroid/view/InputDevice;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4653
    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V

    .line 4650
    .end local v4    # "id":I
    .end local v5    # "device":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4657
    :cond_1
    return-object v0
.end method

.method private static handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I
    .locals 2
    .param p0, "shellCommand"    # Landroid/os/ShellCommand;

    .line 6613
    nop

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 6614
    .local v0, "nextOption":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 6615
    nop

    .line 6623
    .end local v0    # "nextOption":Ljava/lang/String;
    const/4 v0, -0x2

    return v0

    .line 6617
    .restart local v0    # "nextOption":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_1
    const-string v1, "-u"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :goto_1
    const/4 v1, -0x1

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 6622
    .end local v0    # "nextOption":Ljava/lang/String;
    goto :goto_0

    .line 6620
    .restart local v0    # "nextOption":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    return v1

    :sswitch_data_0
    .sparse-switch
        0x5e8 -> :sswitch_1
        0x4f7b216b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleSetInteractive(Z)V
    .locals 11
    .param p1, "interactive"    # Z

    .line 5210
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 5212
    :try_start_0
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    move v7, v0

    .line 5213
    .local v7, "userId":I
    invoke-virtual {p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 5214
    .local v0, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    move-object v8, v2

    .line 5215
    .local v8, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 5216
    nop

    .line 5217
    if-eqz p1, :cond_0

    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodBindingController;->getImeWindowVis()I

    move-result v2

    goto :goto_0

    .line 5243
    .end local v0    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v7    # "userId":I
    .end local v8    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 5217
    .restart local v0    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v7    # "userId":I
    .restart local v8    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :cond_0
    const/4 v2, 0x0

    .line 5218
    :goto_0
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v3

    .line 5216
    invoke-direct {p0, v2, v3, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    .line 5220
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-nez v2, :cond_1

    .line 5221
    monitor-exit v1

    return-void

    .line 5223
    :cond_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    .line 5224
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethodUid()I

    move-result v3

    .line 5223
    invoke-virtual {v2, v3}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->shouldUseSetInteractiveProtocol(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5227
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    move-object v9, v2

    .line 5228
    .local v9, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v9, v2, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->onInteractiveChanged(Landroid/os/IBinder;Z)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    move-result-object v2

    move-object v10, v2

    .line 5230
    .local v10, "imeVisRes":Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;
    if-eqz v10, :cond_2

    .line 5232
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    iget-object v3, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 5233
    invoke-virtual {v10}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getState()I

    move-result v5

    invoke-virtual {v10}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getReason()I

    move-result v6

    .line 5232
    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)V

    .line 5237
    :cond_2
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    iget-boolean v4, v0, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setInteractive(ZZ)V

    .line 5239
    .end local v9    # "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .end local v10    # "imeVisRes":Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;
    goto :goto_1

    .line 5241
    :cond_3
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    iget-boolean v4, v0, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActive(ZZ)V

    .line 5243
    .end local v0    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v7    # "userId":I
    .end local v8    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :goto_1
    monitor-exit v1

    .line 5244
    return-void

    .line 5243
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I
    .locals 13
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;
    .param p2, "enabled"    # Z

    .line 6577
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v1

    .line 6578
    .local v1, "userIdToBeResolved":I
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 6579
    .local v4, "imeId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 6580
    .local v2, "hasFailed":Z
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    .line 6581
    .local v6, "out":Ljava/io/PrintWriter;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 6582
    .local v7, "error":Ljava/io/PrintWriter;
    :try_start_1
    const-class v8, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 6583
    :try_start_2
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 6584
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 6583
    invoke-static {v1, v0, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 6585
    .local v0, "userIds":[I
    array-length v9, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v10, 0x0

    move v11, v2

    move v12, v10

    .end local v2    # "hasFailed":Z
    .local v11, "hasFailed":Z
    :goto_0
    if-ge v12, v9, :cond_1

    :try_start_3
    aget v3, v0, v12

    .line 6586
    .local v3, "userId":I
    invoke-direct {p0, v3, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v2, :cond_0

    .line 6587
    move v5, p2

    goto :goto_1

    .line 6589
    :cond_0
    move-object v2, p0

    move v5, p2

    .end local p2    # "enabled":Z
    .local v5, "enabled":Z
    :try_start_4
    invoke-direct/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    or-int/2addr p2, v11

    move v11, p2

    .line 6585
    .end local v3    # "userId":I
    :goto_1
    add-int/lit8 v12, v12, 0x1

    move p2, v5

    goto :goto_0

    .line 6592
    .end local v0    # "userIds":[I
    :catchall_0
    move-exception v0

    move-object p2, v0

    move v2, v11

    goto :goto_3

    .end local v5    # "enabled":Z
    .restart local p2    # "enabled":Z
    :catchall_1
    move-exception v0

    move v5, p2

    move-object p2, v0

    move v2, v11

    .end local p2    # "enabled":Z
    .restart local v5    # "enabled":Z
    goto :goto_3

    .line 6585
    .end local v5    # "enabled":Z
    .restart local v0    # "userIds":[I
    .restart local p2    # "enabled":Z
    :cond_1
    move v5, p2

    .line 6592
    .end local v0    # "userIds":[I
    .end local p2    # "enabled":Z
    .restart local v5    # "enabled":Z
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6593
    if-eqz v7, :cond_2

    :try_start_5
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 6580
    .end local v7    # "error":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v0

    move-object p2, v0

    move v2, v11

    goto :goto_6

    .line 6593
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 6594
    .end local v6    # "out":Ljava/io/PrintWriter;
    :cond_3
    if-eqz v11, :cond_4

    const/4 v10, -0x1

    :cond_4
    return v10

    .line 6592
    .end local v5    # "enabled":Z
    .end local v11    # "hasFailed":Z
    .restart local v2    # "hasFailed":Z
    .restart local v6    # "out":Ljava/io/PrintWriter;
    .restart local v7    # "error":Ljava/io/PrintWriter;
    .restart local p2    # "enabled":Z
    :catchall_3
    move-exception v0

    move v5, p2

    move-object p2, v0

    .end local p2    # "enabled":Z
    .restart local v5    # "enabled":Z
    :goto_3
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .end local v1    # "userIdToBeResolved":I
    .end local v2    # "hasFailed":Z
    .end local v4    # "imeId":Ljava/lang/String;
    .end local v5    # "enabled":Z
    .end local v6    # "out":Ljava/io/PrintWriter;
    .end local v7    # "error":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "shellCommand":Landroid/os/ShellCommand;
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 6580
    .restart local v1    # "userIdToBeResolved":I
    .restart local v2    # "hasFailed":Z
    .restart local v4    # "imeId":Ljava/lang/String;
    .restart local v5    # "enabled":Z
    .restart local v6    # "out":Ljava/io/PrintWriter;
    .restart local v7    # "error":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "shellCommand":Landroid/os/ShellCommand;
    :catchall_4
    move-exception v0

    move-object p2, v0

    goto :goto_4

    .line 6592
    :catchall_5
    move-exception v0

    move-object p2, v0

    goto :goto_3

    .line 6580
    .end local v5    # "enabled":Z
    .restart local p2    # "enabled":Z
    :catchall_6
    move-exception v0

    move v5, p2

    move-object p2, v0

    .end local p2    # "enabled":Z
    .restart local v5    # "enabled":Z
    :goto_4
    if-eqz v7, :cond_5

    :try_start_8
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_5

    :catchall_7
    move-exception v0

    :try_start_9
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v7    # "error":Ljava/io/PrintWriter;
    :catchall_8
    move-exception v0

    move-object p2, v0

    goto :goto_6

    .end local v1    # "userIdToBeResolved":I
    .end local v2    # "hasFailed":Z
    .end local v4    # "imeId":Ljava/lang/String;
    .end local v5    # "enabled":Z
    .end local v6    # "out":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "shellCommand":Landroid/os/ShellCommand;
    .restart local v7    # "error":Ljava/io/PrintWriter;
    :cond_5
    :goto_5
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .end local v7    # "error":Ljava/io/PrintWriter;
    .restart local v1    # "userIdToBeResolved":I
    .restart local v2    # "hasFailed":Z
    .restart local v4    # "imeId":Ljava/lang/String;
    .restart local v6    # "out":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "shellCommand":Landroid/os/ShellCommand;
    .restart local p2    # "enabled":Z
    :catchall_9
    move-exception v0

    move v5, p2

    move-object p2, v0

    .end local p2    # "enabled":Z
    .restart local v5    # "enabled":Z
    :goto_6
    if-eqz v6, :cond_6

    :try_start_a
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    goto :goto_7

    :catchall_a
    move-exception v0

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_7
    throw p2
.end method

.method private handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "imeId"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .param p4, "out"    # Ljava/io/PrintWriter;
    .param p5, "error"    # Ljava/io/PrintWriter;

    .line 6641
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 6642
    .local v0, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/inputmethod/InputMethodMap;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6643
    const-string v1, "Unknown input method "

    invoke-virtual {p5, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6644
    invoke-virtual {p5, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cannot be enabled for user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"ime enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" for user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " failed due to its unrecognized IME ID."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6649
    const/4 v1, 0x0

    return v1

    .line 6652
    :cond_0
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    move-result v1

    .line 6653
    .local v1, "previouslyEnabled":Z
    const-string v2, "Input method "

    invoke-virtual {p4, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6654
    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6655
    const-string v2, ": "

    invoke-virtual {p4, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6656
    if-ne p3, v1, :cond_1

    const-string v2, "already "

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "now "

    :goto_0
    invoke-virtual {p4, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6657
    if-eqz p3, :cond_2

    const-string v2, "enabled"

    goto :goto_1

    :cond_2
    const-string v2, "disabled"

    :goto_1
    invoke-virtual {p4, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6658
    const-string v2, " for user #"

    invoke-virtual {p4, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6659
    invoke-virtual {p4, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 6660
    const/4 v2, 0x1

    return v2
.end method

.method private handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I
    .locals 16
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 6515
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 6516
    .local v0, "all":Z
    const/4 v2, 0x0

    .line 6517
    .local v2, "brief":Z
    const/4 v3, -0x2

    move v4, v3

    move v3, v2

    move v2, v0

    .line 6519
    .end local v0    # "all":Z
    .local v2, "all":Z
    .local v3, "brief":Z
    .local v4, "userIdToBeResolved":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 6520
    .local v0, "nextOption":Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_7

    .line 6521
    nop

    .line 6537
    .end local v0    # "nextOption":Ljava/lang/String;
    const-class v7, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v7

    .line 6538
    :try_start_0
    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 6539
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    .line 6538
    invoke-static {v4, v0, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    move-object v8, v0

    .line 6540
    .local v8, "userIds":[I
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6541
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    .line 6542
    .local v7, "pr":Ljava/io/PrintWriter;
    :try_start_1
    array-length v0, v8

    move v9, v6

    :goto_1
    if-ge v9, v0, :cond_4

    aget v10, v8, v9

    .line 6543
    .local v10, "userId":I
    const/16 v11, 0x7d0

    if-eqz v2, :cond_0

    .line 6544
    invoke-direct {v1, v10, v6, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(III)Ljava/util/List;

    move-result-object v11

    goto :goto_2

    .line 6541
    .end local v10    # "userId":I
    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_5

    .line 6546
    .restart local v10    # "userId":I
    :cond_0
    invoke-direct {v1, v10, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListInternal(II)Ljava/util/List;

    move-result-object v11

    :goto_2
    nop

    .line 6547
    .local v11, "methods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    array-length v12, v8

    if-le v12, v5, :cond_1

    .line 6548
    const-string v12, "User #"

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6549
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 6550
    const-string v12, ":"

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6552
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 6553
    .local v13, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v3, :cond_2

    .line 6554
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 6556
    :cond_2
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6557
    const-string v14, ":"

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6558
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v14, v7}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda16;-><init>(Ljava/io/PrintWriter;)V

    const-string v15, "  "

    invoke-virtual {v13, v14, v15}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6560
    .end local v13    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :goto_4
    goto :goto_3

    .line 6552
    :cond_3
    nop

    .line 6542
    .end local v10    # "userId":I
    .end local v11    # "methods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 6562
    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 6563
    .end local v7    # "pr":Ljava/io/PrintWriter;
    :cond_5
    return v6

    .line 6541
    .restart local v7    # "pr":Ljava/io/PrintWriter;
    :goto_5
    if-eqz v7, :cond_6

    :try_start_2
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_6
    throw v5

    .line 6540
    .end local v7    # "pr":Ljava/io/PrintWriter;
    .end local v8    # "userIds":[I
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 6523
    .restart local v0    # "nextOption":Ljava/lang/String;
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_8
    goto :goto_7

    :sswitch_0
    const-string v5, "--user"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x3

    goto :goto_8

    :sswitch_1
    const-string v5, "-u"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x2

    goto :goto_8

    :sswitch_2
    const-string v6, "-s"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_8

    :sswitch_3
    const-string v5, "-a"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    goto :goto_8

    :goto_7
    const/4 v5, -0x1

    :goto_8
    packed-switch v5, :pswitch_data_0

    goto :goto_9

    .line 6532
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v4

    goto :goto_9

    .line 6528
    :pswitch_1
    const/4 v3, 0x1

    .line 6529
    goto :goto_9

    .line 6525
    :pswitch_2
    const/4 v2, 0x1

    .line 6526
    nop

    .line 6535
    .end local v0    # "nextOption":Ljava/lang/String;
    :goto_9
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5d4 -> :sswitch_3
        0x5e6 -> :sswitch_2
        0x5e8 -> :sswitch_1
        0x4f7b216b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I
    .locals 21
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 6738
    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v2

    .line 6739
    .local v2, "userIdToBeResolved":I
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    .line 6740
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v4, v0

    .line 6741
    .local v4, "out":Ljava/io/PrintWriter;
    :try_start_1
    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 6742
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 6741
    invoke-static {v2, v0, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 6743
    .local v0, "userIds":[I
    array-length v5, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_5

    aget v8, v0, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 6744
    .local v8, "userId":I
    move-object/from16 v9, p1

    :try_start_2
    invoke-direct {v1, v8, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 6745
    move-object/from16 v18, v0

    move/from16 v19, v2

    goto/16 :goto_4

    .line 6748
    :cond_0
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v10, v8}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 6749
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v10, :cond_1

    :try_start_3
    const-string v11, "android.os.usertype.system.HEADLESS"

    iget-object v12, v10, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v11, :cond_1

    .line 6750
    move-object/from16 v18, v0

    move/from16 v19, v2

    goto/16 :goto_4

    .line 6740
    .end local v0    # "userIds":[I
    .end local v8    # "userId":I
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v0

    move-object v1, v0

    move/from16 v19, v2

    goto/16 :goto_6

    .line 6754
    .restart local v0    # "userIds":[I
    .restart local v8    # "userId":I
    .restart local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    :try_start_4
    invoke-static {v8}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v11

    .line 6755
    .local v11, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-virtual {v1, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v12

    .line 6756
    .local v12, "userData":Lcom/android/server/inputmethod/UserData;
    nop

    .line 6757
    const/4 v13, 0x0

    invoke-virtual {v1, v6, v12, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 6764
    iget-object v14, v12, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 6765
    .local v14, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v14}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 6768
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v15

    .line 6769
    .local v15, "toDisable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 6770
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object v6

    .line 6769
    invoke-static {v13, v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    .line 6771
    .local v6, "defaultEnabled":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 6772
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/inputmethod/InputMethodInfo;

    .line 6773
    .local v17, "info":Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v18, v0

    .end local v0    # "userIds":[I
    .local v18, "userIds":[I
    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "userIdToBeResolved":I
    .local v19, "userIdToBeResolved":I
    :try_start_5
    invoke-direct {v1, v0, v2, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    .line 6774
    move-object/from16 v0, v18

    move/from16 v2, v19

    .end local v17    # "info":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_1

    .line 6740
    .end local v6    # "defaultEnabled":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v8    # "userId":I
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v11    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .end local v12    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v14    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v15    # "toDisable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v18    # "userIds":[I
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_6

    .end local v19    # "userIdToBeResolved":I
    .restart local v2    # "userIdToBeResolved":I
    :catchall_2
    move-exception v0

    :goto_2
    move/from16 v19, v2

    move-object v1, v0

    .end local v2    # "userIdToBeResolved":I
    .restart local v19    # "userIdToBeResolved":I
    goto/16 :goto_6

    .line 6775
    .end local v19    # "userIdToBeResolved":I
    .restart local v0    # "userIds":[I
    .restart local v2    # "userIdToBeResolved":I
    .restart local v6    # "defaultEnabled":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v8    # "userId":I
    .restart local v10    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v11    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .restart local v12    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v14    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .restart local v15    # "toDisable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_2
    move-object/from16 v18, v0

    move/from16 v19, v2

    .end local v0    # "userIds":[I
    .end local v2    # "userIdToBeResolved":I
    .restart local v18    # "userIds":[I
    .restart local v19    # "userIdToBeResolved":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 6776
    .local v2, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v0

    const/4 v0, 0x1

    invoke-direct {v1, v13, v0, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    .line 6777
    move-object/from16 v0, v20

    .end local v2    # "info":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_3

    .line 6779
    :cond_3
    invoke-direct {v1, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6780
    const/4 v0, 0x0

    invoke-direct {v1, v0, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;I)V

    .line 6782
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    .line 6783
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 6784
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodSettings;->getUserId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 6785
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v2

    .line 6783
    invoke-static {v0, v2}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 6786
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v0

    .line 6787
    .local v0, "nextIme":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v2

    .line 6788
    .local v2, "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset current and enabled IMEs for user #"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  Selected: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6790
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6743
    .end local v0    # "nextIme":Ljava/lang/String;
    .end local v2    # "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v6    # "defaultEnabled":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v8    # "userId":I
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v11    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .end local v12    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v14    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v15    # "toDisable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_4
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, v18

    move/from16 v2, v19

    goto/16 :goto_0

    .line 6740
    .end local v18    # "userIds":[I
    .end local v19    # "userIdToBeResolved":I
    .local v2, "userIdToBeResolved":I
    :catchall_3
    move-exception v0

    move-object/from16 v9, p1

    goto/16 :goto_2

    .line 6743
    .local v0, "userIds":[I
    :cond_5
    move-object/from16 v9, p1

    move-object/from16 v18, v0

    move/from16 v19, v2

    .line 6792
    .end local v0    # "userIds":[I
    .end local v2    # "userIdToBeResolved":I
    .restart local v19    # "userIdToBeResolved":I
    if-eqz v4, :cond_6

    :try_start_6
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    goto :goto_5

    .line 6793
    .end local v4    # "out":Ljava/io/PrintWriter;
    :catchall_4
    move-exception v0

    goto :goto_8

    :cond_6
    :goto_5
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 6794
    const/16 v16, 0x0

    return v16

    .line 6740
    .restart local v4    # "out":Ljava/io/PrintWriter;
    :goto_6
    if-eqz v4, :cond_7

    :try_start_7
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_7
    nop

    .end local v19    # "userIdToBeResolved":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "shellCommand":Landroid/os/ShellCommand;
    throw v1

    .line 6793
    .end local v4    # "out":Ljava/io/PrintWriter;
    .restart local v2    # "userIdToBeResolved":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "shellCommand":Landroid/os/ShellCommand;
    :catchall_6
    move-exception v0

    move-object/from16 v9, p1

    move/from16 v19, v2

    .end local v2    # "userIdToBeResolved":I
    .restart local v19    # "userIdToBeResolved":I
    :goto_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0
.end method

.method private handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I
    .locals 19
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 6672
    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v2

    .line 6673
    .local v2, "userIdToBeResolved":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 6674
    .local v3, "imeId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 6675
    .local v4, "hasFailed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 6676
    .local v5, "out":Ljava/io/PrintWriter;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    move-object v6, v0

    .line 6677
    .local v6, "error":Ljava/io/PrintWriter;
    :try_start_1
    const-class v7, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 6678
    :try_start_2
    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 6679
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    .line 6678
    invoke-static {v2, v0, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 6680
    .local v0, "userIds":[I
    array-length v8, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/4 v10, 0x0

    :goto_0
    const/4 v11, -0x1

    if-ge v10, v8, :cond_5

    :try_start_3
    aget v12, v0, v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 6681
    .local v12, "userId":I
    move-object/from16 v13, p1

    :try_start_4
    invoke-direct {v1, v12, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 6682
    move-object/from16 v17, v0

    move/from16 v16, v2

    goto/16 :goto_4

    .line 6684
    :cond_0
    invoke-direct {v1, v3, v11, v12}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToInputMethodLocked(Ljava/lang/String;II)Z

    move-result v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    xor-int/lit8 v11, v11, 0x1

    .line 6686
    .local v11, "failedToSelectUnknownIme":Z
    if-eqz v11, :cond_1

    .line 6687
    :try_start_5
    const-string v14, "Unknown input method "

    invoke-virtual {v6, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6688
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6689
    const-string v14, " cannot be selected for user #"

    invoke-virtual {v6, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6690
    invoke-virtual {v6, v12}, Ljava/io/PrintWriter;->println(I)V

    .line 6692
    const-string v14, "InputMethodManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\"ime set "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\" for user #"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " failed due to its unrecognized IME ID."

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v17, v0

    move/from16 v16, v2

    move/from16 v18, v4

    goto/16 :goto_3

    .line 6724
    .end local v0    # "userIds":[I
    .end local v11    # "failedToSelectUnknownIme":Z
    .end local v12    # "userId":I
    :catchall_0
    move-exception v0

    move/from16 v16, v2

    goto/16 :goto_7

    .line 6695
    .restart local v0    # "userIds":[I
    .restart local v11    # "failedToSelectUnknownIme":Z
    .restart local v12    # "userId":I
    :cond_1
    :try_start_6
    const-string v9, "Input method "

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6696
    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6697
    const-string v9, " selected for user #"

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6698
    invoke-virtual {v5, v12}, Ljava/io/PrintWriter;->println(I)V

    .line 6701
    nop

    .line 6702
    invoke-static {v12}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v9

    .line 6703
    .local v9, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-virtual {v1, v12}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v14

    .line 6704
    .local v14, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v14}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDeviceIdToShowIme()I

    move-result v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 6706
    .local v15, "deviceId":I
    if-nez v15, :cond_2

    .line 6707
    :try_start_7
    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    .local v16, "settingsValue":Ljava/lang/String;
    goto :goto_1

    .line 6709
    .end local v16    # "settingsValue":Ljava/lang/String;
    :cond_2
    :try_start_8
    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedDefaultDeviceInputMethod()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    .line 6711
    .local v0, "settingsValue":Ljava/lang/String;
    .local v17, "userIds":[I
    :goto_1
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 6712
    const-string v1, "InputMethodManagerService"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move/from16 v16, v2

    .end local v2    # "userIdToBeResolved":I
    .local v16, "userIdToBeResolved":I
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move/from16 v18, v4

    .end local v4    # "hasFailed":Z
    .local v18, "hasFailed":Z
    :try_start_a
    const-string v4, "DEFAULT_INPUT_METHOD="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not updated. Fixing it up to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " See b/354782333."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6715
    if-nez v15, :cond_3

    .line 6716
    invoke-virtual {v9, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    goto :goto_3

    .line 6724
    .end local v0    # "settingsValue":Ljava/lang/String;
    .end local v9    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .end local v11    # "failedToSelectUnknownIme":Z
    .end local v12    # "userId":I
    .end local v14    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v15    # "deviceId":I
    .end local v17    # "userIds":[I
    :catchall_1
    move-exception v0

    move/from16 v4, v18

    goto :goto_7

    .line 6718
    .restart local v0    # "settingsValue":Ljava/lang/String;
    .restart local v9    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .restart local v11    # "failedToSelectUnknownIme":Z
    .restart local v12    # "userId":I
    .restart local v14    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .restart local v15    # "deviceId":I
    .restart local v17    # "userIds":[I
    :cond_3
    invoke-virtual {v9, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    goto :goto_3

    .line 6724
    .end local v0    # "settingsValue":Ljava/lang/String;
    .end local v9    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .end local v11    # "failedToSelectUnknownIme":Z
    .end local v12    # "userId":I
    .end local v14    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v15    # "deviceId":I
    .end local v17    # "userIds":[I
    .end local v18    # "hasFailed":Z
    .restart local v4    # "hasFailed":Z
    :catchall_2
    move-exception v0

    move/from16 v18, v4

    .end local v4    # "hasFailed":Z
    .restart local v18    # "hasFailed":Z
    goto :goto_7

    .end local v16    # "userIdToBeResolved":I
    .end local v18    # "hasFailed":Z
    .restart local v2    # "userIdToBeResolved":I
    .restart local v4    # "hasFailed":Z
    :catchall_3
    move-exception v0

    :goto_2
    move/from16 v16, v2

    move/from16 v18, v4

    .end local v2    # "userIdToBeResolved":I
    .end local v4    # "hasFailed":Z
    .restart local v16    # "userIdToBeResolved":I
    .restart local v18    # "hasFailed":Z
    goto :goto_7

    .line 6711
    .end local v16    # "userIdToBeResolved":I
    .end local v18    # "hasFailed":Z
    .restart local v0    # "settingsValue":Ljava/lang/String;
    .restart local v2    # "userIdToBeResolved":I
    .restart local v4    # "hasFailed":Z
    .restart local v9    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .restart local v11    # "failedToSelectUnknownIme":Z
    .restart local v12    # "userId":I
    .restart local v14    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .restart local v15    # "deviceId":I
    .restart local v17    # "userIds":[I
    :cond_4
    move/from16 v16, v2

    move/from16 v18, v4

    .line 6722
    .end local v0    # "settingsValue":Ljava/lang/String;
    .end local v2    # "userIdToBeResolved":I
    .end local v4    # "hasFailed":Z
    .end local v9    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .end local v14    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v15    # "deviceId":I
    .restart local v16    # "userIdToBeResolved":I
    .restart local v18    # "hasFailed":Z
    :goto_3
    or-int v0, v18, v11

    move v4, v0

    .line 6680
    .end local v11    # "failedToSelectUnknownIme":Z
    .end local v12    # "userId":I
    .end local v18    # "hasFailed":Z
    .restart local v4    # "hasFailed":Z
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v0, v17

    goto/16 :goto_0

    .line 6724
    .end local v16    # "userIdToBeResolved":I
    .end local v17    # "userIds":[I
    .restart local v2    # "userIdToBeResolved":I
    :catchall_4
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_2

    .line 6680
    .local v0, "userIds":[I
    :cond_5
    move-object/from16 v13, p1

    move-object/from16 v17, v0

    move/from16 v16, v2

    move/from16 v18, v4

    .line 6724
    .end local v0    # "userIds":[I
    .end local v2    # "userIdToBeResolved":I
    .end local v4    # "hasFailed":Z
    .restart local v16    # "userIdToBeResolved":I
    .restart local v18    # "hasFailed":Z
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 6725
    if-eqz v6, :cond_6

    :try_start_b
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    .line 6675
    .end local v6    # "error":Ljava/io/PrintWriter;
    :catchall_5
    move-exception v0

    move-object v1, v0

    move/from16 v4, v18

    goto :goto_a

    .line 6725
    :cond_6
    :goto_5
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 6726
    .end local v5    # "out":Ljava/io/PrintWriter;
    :cond_7
    if-eqz v18, :cond_8

    move v9, v11

    goto :goto_6

    :cond_8
    const/4 v9, 0x0

    :goto_6
    return v9

    .line 6724
    .end local v16    # "userIdToBeResolved":I
    .end local v18    # "hasFailed":Z
    .restart local v2    # "userIdToBeResolved":I
    .restart local v4    # "hasFailed":Z
    .restart local v5    # "out":Ljava/io/PrintWriter;
    .restart local v6    # "error":Ljava/io/PrintWriter;
    :catchall_6
    move-exception v0

    move-object/from16 v13, p1

    move/from16 v16, v2

    .end local v2    # "userIdToBeResolved":I
    .restart local v16    # "userIdToBeResolved":I
    :goto_7
    :try_start_c
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .end local v3    # "imeId":Ljava/lang/String;
    .end local v4    # "hasFailed":Z
    .end local v5    # "out":Ljava/io/PrintWriter;
    .end local v6    # "error":Ljava/io/PrintWriter;
    .end local v16    # "userIdToBeResolved":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "shellCommand":Landroid/os/ShellCommand;
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 6675
    .restart local v3    # "imeId":Ljava/lang/String;
    .restart local v4    # "hasFailed":Z
    .restart local v5    # "out":Ljava/io/PrintWriter;
    .restart local v6    # "error":Ljava/io/PrintWriter;
    .restart local v16    # "userIdToBeResolved":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "shellCommand":Landroid/os/ShellCommand;
    :catchall_7
    move-exception v0

    move-object v1, v0

    goto :goto_8

    .line 6724
    :catchall_8
    move-exception v0

    goto :goto_7

    .line 6675
    .end local v16    # "userIdToBeResolved":I
    .restart local v2    # "userIdToBeResolved":I
    :catchall_9
    move-exception v0

    move-object/from16 v13, p1

    move/from16 v16, v2

    move-object v1, v0

    .end local v2    # "userIdToBeResolved":I
    .restart local v16    # "userIdToBeResolved":I
    :goto_8
    if-eqz v6, :cond_9

    :try_start_e
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    goto :goto_9

    :catchall_a
    move-exception v0

    :try_start_f
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    .end local v6    # "error":Ljava/io/PrintWriter;
    :catchall_b
    move-exception v0

    move-object v1, v0

    goto :goto_a

    .end local v3    # "imeId":Ljava/lang/String;
    .end local v4    # "hasFailed":Z
    .end local v5    # "out":Ljava/io/PrintWriter;
    .end local v16    # "userIdToBeResolved":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "shellCommand":Landroid/os/ShellCommand;
    .restart local v6    # "error":Ljava/io/PrintWriter;
    :cond_9
    :goto_9
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    .end local v6    # "error":Ljava/io/PrintWriter;
    .restart local v2    # "userIdToBeResolved":I
    .restart local v3    # "imeId":Ljava/lang/String;
    .restart local v4    # "hasFailed":Z
    .restart local v5    # "out":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "shellCommand":Landroid/os/ShellCommand;
    :catchall_c
    move-exception v0

    move-object/from16 v13, p1

    move/from16 v16, v2

    move-object v1, v0

    .end local v2    # "userIdToBeResolved":I
    .restart local v16    # "userIdToBeResolved":I
    :goto_a
    if-eqz v5, :cond_a

    :try_start_10
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    goto :goto_b

    :catchall_d
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_b
    throw v1
.end method

.method private handleShellCommandTraceInputMethod(Landroid/os/ShellCommand;)I
    .locals 6
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 6825
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 6826
    .local v0, "cmd":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 6827
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "start"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_1

    .line 6826
    :catchall_0
    move-exception v2

    goto/16 :goto_3

    .line 6827
    :sswitch_1
    const-string/jumbo v2, "stop"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "save-for-bugreport"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :goto_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 6839
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown command: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6840
    const-string v2, "Input method trace options:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6841
    const-string v2, "  start: Start tracing"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6842
    const-string v2, "  stop: Stop tracing"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6844
    nop

    .line 6846
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 6844
    return v3

    .line 6835
    :pswitch_0
    :try_start_1
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/inputmethod/ImeTracing;->saveForBugreport(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6837
    nop

    .line 6846
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 6837
    :cond_1
    return v4

    .line 6832
    :pswitch_1
    :try_start_2
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/inputmethod/ImeTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 6833
    goto :goto_2

    .line 6829
    :pswitch_2
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/inputmethod/ImeTracing;->startTrace(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6830
    nop

    .line 6846
    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 6847
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_2
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v2

    .line 6848
    .local v2, "isImeTraceEnabled":Z
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    .line 6850
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$6;

    invoke-direct {v5, p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$6;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V

    invoke-virtual {v1, v5}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 6858
    monitor-exit v3

    .line 6859
    return v4

    .line 6858
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 6826
    .end local v2    # "isImeTraceEnabled":Z
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    :goto_3
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw v2

    :sswitch_data_0
    .sparse-switch
        -0x174ab7ac -> :sswitch_2
        0x360802 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static hasMultipleSubtypesForSwitcher(ZI)Z
    .locals 16
    .param p0, "nonAuxOnly"    # Z
    .param p1, "userId"    # I

    .line 2810
    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 2811
    .local v0, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2813
    .local v1, "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2814
    .local v2, "numImes":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-le v2, v3, :cond_0

    return v4

    .line 2815
    :cond_0
    const/4 v3, 0x0

    if-ge v2, v4, :cond_1

    return v3

    .line 2816
    :cond_1
    const/4 v5, 0x0

    .line 2817
    .local v5, "nonAuxCount":I
    const/4 v6, 0x0

    .line 2818
    .local v6, "auxCount":I
    const/4 v7, 0x0

    .line 2819
    .local v7, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v8, 0x0

    .line 2820
    .local v8, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v2, :cond_5

    .line 2821
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 2822
    .local v10, "imi":Landroid/view/inputmethod/InputMethodInfo;
    nop

    .line 2823
    invoke-virtual {v0, v10, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 2824
    .local v11, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 2825
    .local v12, "subtypeCount":I
    if-nez v12, :cond_2

    .line 2826
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2828
    :cond_2
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    if-ge v13, v12, :cond_4

    .line 2829
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    .line 2830
    .local v14, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v15

    if-nez v15, :cond_3

    .line 2831
    add-int/lit8 v5, v5, 0x1

    .line 2832
    move-object v7, v14

    goto :goto_2

    .line 2834
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 2835
    move-object v8, v14

    .line 2828
    .end local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2820
    .end local v10    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v11    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v12    # "subtypeCount":I
    .end local v13    # "j":I
    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    nop

    .line 2840
    .end local v9    # "i":I
    if-eqz p0, :cond_7

    .line 2841
    if-le v5, v4, :cond_6

    goto :goto_4

    :cond_6
    move v4, v3

    :goto_4
    return v4

    .line 2842
    :cond_7
    if-gt v5, v4, :cond_8

    if-le v6, v4, :cond_9

    :cond_8
    goto :goto_5

    .line 2844
    :cond_9
    if-ne v5, v4, :cond_c

    if-ne v6, v4, :cond_c

    .line 2845
    if-eqz v7, :cond_b

    if-eqz v8, :cond_b

    .line 2846
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 2847
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v9

    if-nez v9, :cond_a

    .line 2848
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_a
    nop

    .line 2849
    const-string v9, "TrySuppressingImeSwitcher"

    invoke-virtual {v7, v9}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2850
    return v3

    .line 2852
    :cond_b
    return v4

    .line 2854
    :cond_c
    return v3

    .line 2843
    :goto_5
    return v4
.end method

.method private hasSupportedStylusLocked()Z
    .locals 1

    .line 4585
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hideCurrentInputLocked(Landroid/os/IBinder;III)Z
    .locals 8
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "reason"    # I
    .param p4, "userId"    # I

    .line 3708
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v3

    .line 3709
    .local v3, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v6, p3

    move v7, p4

    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "flags":I
    .end local p3    # "reason":I
    .end local p4    # "userId":I
    .local v2, "windowToken":Landroid/os/IBinder;
    .local v4, "flags":I
    .local v6, "reason":I
    .local v7, "userId":I
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;II)Z

    move-result p1

    return p1
.end method

.method private hideMySoftInputLocked(Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/server/inputmethod/UserData;)V
    .locals 3
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "flags"    # I
    .param p3, "reason"    # I
    .param p4, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 4870
    iget v0, p4, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 4871
    .local v0, "userId":I
    nop

    .line 4872
    iget-object v1, p4, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 4874
    invoke-virtual {p0, v2, p4, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 4880
    return-void
.end method

.method private hideSoftInputLocked(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;III)Z
    .locals 14
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p4, "flags"    # I
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p6, "reason"    # I
    .param p7, "uid"    # I
    .param p8, "userId"    # I

    .line 3655
    move-object/from16 v7, p5

    move/from16 v6, p8

    invoke-virtual {p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v8

    .line 3656
    .local v8, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v9, v8, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 3657
    .local v9, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    const-string/jumbo v4, "hideSoftInput"

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move/from16 v2, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 3658
    invoke-virtual {v9}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->isInputShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3659
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v5, v2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    goto :goto_0

    .line 3662
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v5, v2}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3665
    :goto_0
    return v3

    .line 3667
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3669
    .local v10, "ident":J
    const-wide/16 v12, 0x20

    :try_start_0
    const-string v0, "IMMS.hideSoftInput"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3670
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v4, "Client requesting input be hidden"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3671
    nop

    .line 3672
    invoke-virtual {v9}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->isInputShown()Z

    move-result v0

    .line 3674
    .local v0, "wasVisible":Z
    invoke-virtual {p0, v3, v8, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3675
    const/4 v3, 0x1

    if-eqz v7, :cond_3

    .line 3676
    if-eqz v0, :cond_2

    goto :goto_1

    .line 3677
    :cond_2
    move v2, v3

    :goto_1
    nop

    .line 3676
    const/4 v4, 0x0

    invoke-virtual {v7, v2, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 3687
    .end local v0    # "wasVisible":Z
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 3679
    .restart local v0    # "wasVisible":Z
    :cond_3
    :goto_2
    nop

    .line 3687
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3688
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 3679
    return v3

    .line 3681
    :cond_4
    nop

    .line 3687
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3688
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 3681
    return v3

    .line 3687
    .end local v0    # "wasVisible":Z
    :goto_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3688
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 3689
    throw v0
.end method

.method private hideStatusBarIconLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2736
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq p1, v0, :cond_0

    .line 2737
    return-void

    .line 2739
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_1

    .line 2740
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2742
    :cond_1
    return-void
.end method

.method private static isFingerDevice(Landroid/view/InputDevice;)Z
    .locals 1
    .param p0, "inputDevice"    # Landroid/view/InputDevice;

    .line 4580
    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v0

    return v0
.end method

.method private isImeClientFocused(Landroid/os/IBinder;Lcom/android/server/inputmethod/ClientState;)Z
    .locals 4
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "cs"    # Lcom/android/server/inputmethod/ClientState;

    .line 3759
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v1, p2, Lcom/android/server/inputmethod/ClientState;->mUid:I

    iget v2, p2, Lcom/android/server/inputmethod/ClientState;->mPid:I

    iget v3, p2, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->hasInputMethodClientFocus(Landroid/os/IBinder;III)I

    move-result v0

    .line 3761
    .local v0, "imeClientFocus":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isShowRequestedForCurrentWindow(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1956
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 1957
    .local v0, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 1958
    .local v1, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowStateOrNull(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    move-result-object v2

    .line 1960
    .local v2, "state":Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->isRequestedImeVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private static isStylusDevice(Landroid/view/InputDevice;)Z
    .locals 1
    .param p0, "inputDevice"    # Landroid/view/InputDevice;

    .line 4575
    const/16 v0, 0x4002

    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v0

    nop

    if-nez v0, :cond_1

    .line 4576
    const v0, 0xc002

    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4575
    :goto_1
    return v0
.end method

.method private isStylusHandwritingEnabled(Landroid/content/Context;I)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 1727
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    .line 1728
    .local v0, "profileParentUserId":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "stylus_handwriting_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    .line 1731
    const/4 v1, 0x0

    return v1

    .line 1733
    :cond_0
    return v3
.end method

.method private synthetic lambda$clearClientSessionsLocked$10(ILcom/android/server/inputmethod/ClientState;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "c"    # Lcom/android/server/inputmethod/ClientState;

    .line 2672
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    nop

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 2674
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    nop

    .line 2675
    .local v0, "shouldClearClientSession":Z
    if-eqz v0, :cond_2

    .line 2676
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 2677
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 2679
    :cond_2
    return-void
.end method

.method private synthetic lambda$dumpAsStringNoCheck$20(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;ZLcom/android/server/inputmethod/UserData;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "isCritical"    # Z
    .param p5, "u"    # Lcom/android/server/inputmethod/UserData;

    .line 6192
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v1, p5

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    .end local p4    # "isCritical":Z
    .end local p5    # "u":Lcom/android/server/inputmethod/UserData;
    .local v1, "u":Lcom/android/server/inputmethod/UserData;
    .local v2, "fd":Ljava/io/FileDescriptor;
    .local v3, "pw":Ljava/io/PrintWriter;
    .local v4, "args":[Ljava/lang/String;
    .local v5, "isCritical":Z
    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpAsStringNoCheckForUser(Lcom/android/server/inputmethod/UserData;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method private static synthetic lambda$dumpClientController$21(Landroid/util/Printer;Lcom/android/server/inputmethod/ClientState;)V
    .locals 2
    .param p0, "p"    # Landroid/util/Printer;
    .param p1, "c"    # Lcom/android/server/inputmethod/ClientState;

    .line 6294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      fallbackInputConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/ClientState;->mFallbackInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      sessionRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      sessionRequestedForAccessibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      curSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      selfReportedDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/inputmethod/ClientState;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6304
    return-void
.end method

.method private static synthetic lambda$dumpUserRepository$22(Landroid/util/Printer;Lcom/android/server/inputmethod/UserData;)V
    .locals 3
    .param p0, "p"    # Landroid/util/Printer;
    .param p1, "u"    # Lcom/android/server/inputmethod/UserData;

    .line 6314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      unlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      hasMainConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->hasMainConnection()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      isVisibleBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->isVisibleBound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      boundToMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      curClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6320
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string v1, "        "

    if-eqz v0, :cond_0

    .line 6321
    const-string v0, "      curEditorInfo:"

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6322
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;Z)V

    goto :goto_0

    .line 6324
    :cond_0
    const-string v0, "      curEditorInfo: null"

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6326
    :goto_0
    const-string v0, "      imeBindingState:"

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6327
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/inputmethod/ImeBindingState;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      enabledSession="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      inFullscreenMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      imeDrawsNavBar="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/inputmethod/UserData;->mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6331
    const-string v0, "      switchingController:"

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6332
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mLastEnabledInputMethodsStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6334
    return-void
.end method

.method private synthetic lambda$getEnabledInputMethodListInternal$8(IILcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "settings"    # Lcom/android/server/inputmethod/InputMethodSettings;
    .param p4, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 1757
    invoke-virtual {p4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic lambda$getInputMethodListInternal$7(IILcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "settings"    # Lcom/android/server/inputmethod/InputMethodSettings;
    .param p4, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 1747
    invoke-virtual {p4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic lambda$getInputMethodWindowVisibleHeight$14(IILcom/android/internal/inputmethod/IInputMethodClient;)Ljava/lang/Integer;
    .locals 8
    .param p1, "callingUserId"    # I
    .param p2, "callingUid"    # I
    .param p3, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4460
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 4461
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v0

    move v7, v0

    .line 4462
    .local v7, "userId":I
    const-string v5, "getInputMethodWindowVisibleHeight"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    .end local p2    # "callingUid":I
    .end local p3    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .local v3, "callingUid":I
    .local v4, "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    :try_start_1
    invoke-direct/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4464
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    monitor-exit v1

    return-object p2

    .line 4470
    .end local v7    # "userId":I
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .line 4466
    .restart local v7    # "userId":I
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p2

    .line 4469
    .local p2, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result p3

    .line 4470
    .end local v7    # "userId":I
    .end local p2    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .local p3, "curTokenDisplayId":I
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4471
    iget-object p2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p2, p3}, Lcom/android/server/wm/WindowManagerInternal;->getInputMethodWindowVisibleHeight(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    return-object p2

    .line 4470
    .end local v3    # "callingUid":I
    .end local v4    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .local p2, "callingUid":I
    .local p3, "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    :catchall_1
    move-exception v0

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move-object p2, v0

    .end local p2    # "callingUid":I
    .end local p3    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .restart local v3    # "callingUid":I
    .restart local v4    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method private static synthetic lambda$handleMessage$18(Ljava/util/List;ILcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V
    .locals 0
    .param p0, "imes"    # Ljava/util/List;
    .param p1, "userId"    # I
    .param p2, "listener"    # Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;

    .line 5110
    invoke-interface {p2, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;->onInputMethodListUpdated(Ljava/util/List;I)V

    return-void
.end method

.method private static synthetic lambda$handleShellCommandResetInputMethod$23(Ljava/io/PrintWriter;Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 2
    .param p0, "out"    # Ljava/io/PrintWriter;
    .param p1, "ime"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 6790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$0(I)Lcom/android/server/inputmethod/InputMethodBindingController;
    .locals 1
    .param p1, "userId"    # I

    .line 1300
    new-instance v0, Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-direct {v0, p1, p0}, Lcom/android/server/inputmethod/InputMethodBindingController;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    return-object v0
.end method

.method private synthetic lambda$new$1(I)Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .locals 1
    .param p1, "userId"    # I

    .line 1303
    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;I)V

    return-object v0
.end method

.method private synthetic lambda$new$2(Lcom/android/server/inputmethod/ClientState;)V
    .locals 0
    .param p1, "c"    # Lcom/android/server/inputmethod/ClientState;

    .line 1315
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onClientRemoved(Lcom/android/server/inputmethod/ClientState;)V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 0

    .line 1321
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->discardHandwritingDelegationText()V

    return-void
.end method

.method private synthetic lambda$onClientRemoved$9(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/UserData;)V
    .locals 0
    .param p1, "client"    # Lcom/android/server/inputmethod/ClientState;
    .param p2, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 1847
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->onClientRemovedInternalLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method private synthetic lambda$registerImeRequestedChangedListener$6(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "imeVisible"    # Z
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 1574
    nop

    .line 1577
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->DEBUG_NOTHING:Z

    if-eqz v0, :cond_1

    .line 1578
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onImeRequestedChangedListener imeVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; statsToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_1
    if-eqz p2, :cond_2

    .line 1583
    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputInternal(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z

    goto :goto_0

    .line 1585
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputInternal(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 1588
    :goto_0
    return-void
.end method

.method private synthetic lambda$reportPerceptibleAsync$11(Landroid/os/IBinder;Z)V
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "perceptible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3527
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3528
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3529
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 3530
    .local v1, "windowPerceptible":Ljava/lang/Boolean;
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 3531
    .local v2, "userId":I
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v3

    .line 3532
    .local v3, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v4, v3, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v4, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    nop

    if-ne v4, p1, :cond_1

    if-eqz v1, :cond_0

    .line 3533
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, p2, :cond_0

    goto :goto_0

    .line 3538
    .end local v1    # "windowPerceptible":Ljava/lang/Boolean;
    .end local v2    # "userId":I
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3536
    .restart local v1    # "windowPerceptible":Ljava/lang/Boolean;
    .restart local v2    # "userId":I
    .restart local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    :cond_0
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3537
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(I)V

    .line 3538
    .end local v1    # "windowPerceptible":Ljava/lang/Boolean;
    .end local v2    # "userId":I
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    monitor-exit v0

    .line 3539
    return-void

    .line 3534
    .restart local v1    # "windowPerceptible":Ljava/lang/Boolean;
    .restart local v2    # "userId":I
    .restart local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 3538
    .end local v1    # "windowPerceptible":Ljava/lang/Boolean;
    .end local v2    # "userId":I
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static synthetic lambda$setInputMethodWithSubtypeIndexLocked$17(Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "info"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 4825
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$showInputMethodPickerFromClient$12(III)V
    .locals 2
    .param p1, "auxiliarySubtypeMode"    # I
    .param p2, "displayId"    # I
    .param p3, "userId"    # I

    .line 4138
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4139
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodPickerLocked(III)V

    .line 4140
    monitor-exit v0

    .line 4141
    return-void

    .line 4140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$showInputMethodPickerFromSystem$13(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "auxiliarySubtypeMode"    # I

    .line 4153
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4154
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result v1

    .line 4155
    .local v1, "userId":I
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodPickerLocked(III)V

    .line 4156
    .end local v1    # "userId":I
    monitor-exit v0

    .line 4157
    return-void

    .line 4156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static synthetic lambda$startImeTrace$15(Lcom/android/server/inputmethod/ClientState;)V
    .locals 2
    .param p0, "c"    # Lcom/android/server/inputmethod/ClientState;

    .line 4724
    iget-object v0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeTraceEnabled(Z)V

    return-void
.end method

.method private static synthetic lambda$stopImeTrace$16(Lcom/android/server/inputmethod/ClientState;)V
    .locals 2
    .param p0, "c"    # Lcom/android/server/inputmethod/ClientState;

    .line 4734
    iget-object v0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeTraceEnabled(Z)V

    return-void
.end method

.method private static synthetic lambda$switchToInputMethodLocked$19(Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1
    .param p0, "imeId"    # Ljava/lang/String;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 5630
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$systemRunning$4(Z)V
    .locals 3
    .param p1, "available"    # Z

    .line 1519
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 1520
    nop

    .line 1519
    const/16 v1, 0xfa0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1520
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1521
    return-void
.end method

.method private synthetic lambda$systemRunning$5(Ljava/lang/String;II)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 1534
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1535
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->onSecureSettingsChangedLocked(Ljava/lang/String;I)V

    .line 1536
    monitor-exit v0

    .line 1537
    return-void

    .line 1536
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private maybeReportToolType(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 3608
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerInternal;->getLastUsedInputDeviceId()I

    move-result v0

    .line 3609
    .local v0, "lastDeviceId":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 3610
    .local v1, "im":Landroid/hardware/input/InputManager;
    if-nez v1, :cond_0

    .line 3611
    return-void

    .line 3613
    :cond_0
    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 3614
    .local v2, "device":Landroid/view/InputDevice;
    if-nez v2, :cond_1

    .line 3615
    return-void

    .line 3618
    :cond_1
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusDevice(Landroid/view/InputDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3619
    const/4 v3, 0x2

    .local v3, "toolType":I
    goto :goto_0

    .line 3620
    .end local v3    # "toolType":I
    :cond_2
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isFingerDevice(Landroid/view/InputDevice;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3621
    const/4 v3, 0x1

    .restart local v3    # "toolType":I
    goto :goto_0

    .line 3624
    .end local v3    # "toolType":I
    :cond_3
    const/4 v3, 0x0

    .line 3626
    .restart local v3    # "toolType":I
    :goto_0
    invoke-direct {p0, v3, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUpdateEditorToolTypeLocked(II)V

    .line 3627
    return-void
.end method

.method private notifyInputMethodSubtypeChangedLocked(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 3061
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->isSuitableForPhysicalKeyboardLayoutMapping()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3062
    move-object v1, p3

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    nop

    .line 3063
    .local v1, "normalizedSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v1, :cond_1

    .line 3064
    invoke-static {p2, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object v0

    goto :goto_1

    :cond_1
    nop

    .line 3066
    .local v0, "newSubtypeHandle":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    .line 3071
    .local v2, "userData":Lcom/android/server/inputmethod/UserData;
    nop

    .line 3072
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/inputmethod/UserData;->mSubtypeForKeyboardLayoutMapping:Landroid/util/Pair;

    .line 3073
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq p1, v3, :cond_2

    .line 3074
    return-void

    .line 3076
    :cond_2
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v3, p1, v0, v1}, Lcom/android/server/input/InputManagerInternal;->onInputMethodSubtypeChangedForKeyboardLayoutMapping(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3078
    return-void
.end method

.method private notifyUserActionLocked(Lcom/android/server/inputmethod/UserData;)V
    .locals 4
    .param p1, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 4780
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Got the notification of a user action."

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4781
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4782
    .local v0, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethod()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    .line 4783
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_0

    .line 4784
    iget-object v2, p1, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 4785
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 4784
    invoke-virtual {v2, v1, v3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Z

    .line 4787
    :cond_0
    return-void
.end method

.method private onClientRemoved(Lcom/android/server/inputmethod/ClientState;)V
    .locals 2
    .param p1, "client"    # Lcom/android/server/inputmethod/ClientState;

    .line 1843
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 1844
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 1846
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/ClientState;)V

    .line 1848
    .local v0, "clientRemovedForUser":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/inputmethod/UserData;>;"
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/UserDataRepository;->forAllUserData(Ljava/util/function/Consumer;)V

    .line 1849
    return-void
.end method

.method private onClientRemovedInternalLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/UserData;)V
    .locals 5
    .param p1, "client"    # Lcom/android/server/inputmethod/ClientState;
    .param p2, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 1858
    iget v0, p2, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 1859
    .local v0, "userId":I
    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-ne v1, p1, :cond_1

    .line 1860
    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;III)Z

    .line 1862
    iget-boolean v1, p2, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    if-eqz v1, :cond_0

    .line 1863
    iput-boolean v3, p2, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    .line 1864
    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 1865
    .local v1, "userBindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v2

    .line 1866
    .local v2, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v2, :cond_0

    .line 1869
    invoke-virtual {v2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->unbindInput()V

    .line 1870
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/AccessibilityManagerInternal;->unbindInput()V

    .line 1873
    .end local v1    # "userBindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v2    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :cond_0
    iput-boolean v3, p2, Lcom/android/server/inputmethod/UserData;->mBoundToAccessibility:Z

    .line 1874
    const/4 v1, 0x0

    iput-object v1, p2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 1875
    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    if-ne v1, p1, :cond_1

    .line 1876
    invoke-static {}, Lcom/android/server/inputmethod/ImeBindingState;->newEmptyState()Lcom/android/server/inputmethod/ImeBindingState;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 1879
    :cond_1
    return-void
.end method

.method private onImeSwitchButtonClickLocked(ILcom/android/server/inputmethod/UserData;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 4195
    iget v0, p2, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 4196
    .local v0, "userId":I
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasMultipleSubtypesForSwitcher(ZI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4197
    const/4 v1, 0x0

    invoke-direct {p0, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToNextInputMethodLocked(ZLcom/android/server/inputmethod/UserData;)Z

    goto :goto_0

    .line 4199
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodPickerFromSystem(II)V

    .line 4202
    :goto_0
    return-void
.end method

.method private onSecureSettingsChangedLocked(Ljava/lang/String;I)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 663
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const-string v1, "accessibility_soft_keyboard_mode"

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "enabled_input_methods"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "selected_input_method_subtype"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_4
    const-string v0, "default_input_method"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "stylus_handwriting_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 712
    :pswitch_0
    const/4 v0, 0x0

    .line 713
    .local v0, "enabledChanged":Z
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    .line 714
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, "newEnabled":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    .line 716
    .local v2, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v3, v2, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 717
    iput-object v1, v2, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    .line 718
    const/4 v0, 0x1

    .line 720
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    .line 721
    goto :goto_2

    .line 704
    .end local v0    # "enabledChanged":Z
    .end local v1    # "newEnabled":Ljava/lang/String;
    .end local v2    # "userData":Lcom/android/server/inputmethod/UserData;
    :pswitch_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalStylusHandwritingAvailabilityCaches()V

    .line 706
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalConnectionlessStylusHandwritingAvailabilityCaches()V

    .line 707
    goto :goto_2

    .line 673
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 674
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 673
    invoke-static {v0, v1, v3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 676
    .local v0, "accessibilitySoftKeyboardSetting":I
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    .line 677
    .local v1, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v4, v1, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 678
    .local v4, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    invoke-virtual {v4}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getImePolicy()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->setA11yRequestNoSoftKeyboard(I)V

    .line 680
    invoke-virtual {v4}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getImePolicy()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->isA11yRequestNoSoftKeyboard()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 681
    nop

    .line 682
    const/16 v2, 0x10

    invoke-direct {p0, v3, v2, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    .line 684
    .local v2, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 685
    .end local v2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    goto :goto_2

    .line 690
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 691
    nop

    .line 692
    const/16 v3, 0x9

    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v3

    .line 694
    .local v3, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 695
    .end local v3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    goto :goto_2

    .line 665
    .end local v0    # "accessibilitySoftKeyboardSetting":I
    .end local v1    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v4    # "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    :pswitch_3
    nop

    .line 724
    :cond_3
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6cf7725e -> :sswitch_5
        -0x69f07bcc -> :sswitch_4
        0x15ab4237 -> :sswitch_3
        0x472be455 -> :sswitch_2
        0x685851c2 -> :sswitch_1
        0x7ebbf7bf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onStylusHandwritingReadyLocked(IILcom/android/server/inputmethod/UserData;)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "pid"    # I
    .param p3, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 5205
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;-><init>(IILcom/android/server/inputmethod/UserData;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V

    const/16 v2, 0x44c

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5206
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5207
    return-void
.end method

.method private onUpdateEditorToolTypeLocked(II)V
    .locals 1
    .param p1, "toolType"    # I
    .param p2, "userId"    # I

    .line 1343
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    .line 1344
    .local v0, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v0, :cond_0

    .line 1345
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->updateEditorToolType(I)V

    .line 1347
    :cond_0
    return-void
.end method

.method private onUpdateResourceOverlay(I)V
    .locals 9
    .param p1, "userId"    # I

    .line 5434
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    .line 5435
    .local v0, "profileParentId":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5436
    invoke-static {v1, v0}, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor;->evaluate(Landroid/content/Context;I)Z

    move-result v1

    .line 5437
    .local v1, "value":Z
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/UserManagerInternal;->getProfileIds(IZ)[I

    move-result-object v2

    .line 5438
    .local v2, "profileUserIds":[I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5439
    .local v4, "updatedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/inputmethod/UserData;>;"
    array-length v5, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget v6, v2, v3

    .line 5440
    .local v6, "profileUserId":I
    invoke-virtual {p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v7

    .line 5441
    .local v7, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v8, v7, Lcom/android/server/inputmethod/UserData;->mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5442
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5439
    .end local v6    # "profileUserId":I
    .end local v7    # "userData":Lcom/android/server/inputmethod/UserData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5444
    :cond_0
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    .line 5445
    :try_start_0
    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda25;

    invoke-direct {v5, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 5446
    monitor-exit v3

    .line 5447
    return-void

    .line 5446
    :catchall_0
    move-exception v5

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private static parseUserIdFromDumpArgs([Ljava/lang/String;)I
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .line 6202
    const-string v0, "--user"

    invoke-static {p0, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 6203
    .local v0, "userIdx":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    .line 6206
    :cond_1
    add-int/lit8 v1, v0, 0x1

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 6204
    :goto_0
    const/16 v1, -0x2710

    return v1
.end method

.method private prepareClientSwitchLocked(Lcom/android/server/inputmethod/ClientState;I)V
    .locals 3
    .param p1, "cs"    # Lcom/android/server/inputmethod/ClientState;
    .param p2, "userId"    # I

    .line 2317
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V

    .line 2319
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v1, :cond_0

    .line 2320
    iget-object v1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActive(ZZ)V

    .line 2322
    :cond_0
    return-void
.end method

.method private publishLocalService()V
    .locals 2

    .line 5724
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 5725
    return-void
.end method

.method static queryRawInputMethodServiceMap(Landroid/content/Context;I)Lcom/android/server/inputmethod/RawInputMethodMap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 5262
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 5263
    move-object v0, p0

    goto :goto_0

    .line 5264
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    :goto_0
    nop

    .line 5266
    .local v0, "userAwareContext":Landroid/content/Context;
    const v1, 0xc8080

    .line 5276
    .local v1, "flags":I
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.view.InputMethod"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5278
    const-wide/32 v4, 0xc8080

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v4

    .line 5276
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v2

    .line 5282
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    nop

    .line 5283
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getEnabledInputMethodIdsForFiltering(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    .line 5285
    .local v3, "enabledInputMethodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->filterInputMethodServices(Ljava/util/List;Landroid/content/Context;Ljava/util/List;)Lcom/android/server/inputmethod/RawInputMethodMap;

    move-result-object v4

    return-object v4
.end method

.method private registerDeviceListenerAndCheckStylusSupport()V
    .locals 4

    .line 4491
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 4492
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getStylusInputDeviceIds(Landroid/hardware/input/InputManager;)Landroid/util/IntArray;

    move-result-object v1

    .line 4493
    .local v1, "stylusIds":Landroid/util/IntArray;
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4494
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    .line 4495
    :try_start_0
    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    .line 4496
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 4497
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4499
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$4;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/hardware/input/InputManager;)V

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 4538
    return-void
.end method

.method private removeStylusDeviceIdLocked(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .line 4559
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 4563
    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    move v1, v0

    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 4564
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->remove(I)V

    .line 4565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stylus deviceId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " removed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4567
    :cond_2
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 4569
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController;->reset()V

    .line 4570
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleRemoveStylusHandwritingWindow()V

    .line 4572
    :cond_3
    return-void

    .line 4560
    .end local v1    # "index":I
    :goto_0
    return-void
.end method

.method private removeVirtualStylusIdForTestSessionLocked()V
    .locals 1

    .line 4645
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->VIRTUAL_STYLUS_ID_FOR_TEST:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeStylusDeviceIdLocked(I)V

    .line 4646
    return-void
.end method

.method private reportFullscreenModeLocked(ZLcom/android/server/inputmethod/UserData;)V
    .locals 1
    .param p1, "fullscreen"    # Z
    .param p2, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 6057
    iget-object v0, p2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v0, :cond_0

    .line 6058
    iput-boolean p1, p2, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    .line 6059
    iget-object v0, p2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->reportFullscreenMode(Z)V

    .line 6061
    :cond_0
    return-void
.end method

.method private reportStartInputLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)V
    .locals 2
    .param p1, "startInputToken"    # Landroid/os/IBinder;
    .param p2, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 2897
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 2898
    .local v0, "targetWindow":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 2899
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerInternal;->updateInputMethodTargetWindow(Landroid/os/IBinder;)V

    .line 2901
    :cond_0
    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 2902
    .local v1, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setLastImeTargetWindow(Landroid/os/IBinder;)V

    .line 2903
    return-void
.end method

.method private resetDefaultImeLocked(Landroid/content/Context;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 1360
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    .line 1362
    .local v0, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v1

    .line 1363
    .local v1, "selectedMethodId":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v2

    .line 1364
    .local v2, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v3

    .line 1365
    .local v3, "selectedImi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1366
    return-void

    .line 1368
    :cond_0
    nop

    .line 1369
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1368
    invoke-static {p1, v4}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1370
    .local v4, "suitableImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1371
    const-string v5, "InputMethodManagerService"

    const-string v6, "No default found"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    return-void

    .line 1374
    :cond_1
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 1375
    .local v6, "defIm":Landroid/view/inputmethod/InputMethodInfo;
    sget-object v7, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Default found, using %s"

    invoke-static {v7, v9, v8}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1376
    const/4 v7, -0x1

    invoke-direct {p0, v6, v7, v5, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V

    .line 1377
    return-void
.end method

.method private resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;I)V
    .locals 9
    .param p1, "newDefaultIme"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5581
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    .line 5582
    .local v0, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->setDisplayIdToShowIme(I)V

    .line 5583
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->setDeviceIdToShowIme(I)V

    .line 5585
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v2

    .line 5586
    .local v2, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    .line 5588
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v3

    .line 5589
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v4, -0x1

    .line 5591
    .local v4, "lastSubtypeIndex":I
    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5592
    invoke-virtual {v2, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastSubtypeForInputMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5593
    .local v5, "subtypeHashCode":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 5595
    nop

    .line 5596
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 5595
    invoke-static {v3, v6}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 5599
    goto :goto_0

    .line 5597
    :catch_0
    move-exception v6

    .line 5598
    .local v6, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HashCode for subtype looks broken: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "InputMethodManagerService"

    invoke-static {v8, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5602
    .end local v5    # "subtypeHashCode":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v4, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V

    .line 5603
    return-void
.end method

.method private resetStylusHandwritingLocked(I)V
    .locals 3
    .param p1, "requestId"    # I

    .line 4810
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v0

    .line 4811
    .local v0, "curRequest":Ljava/util/OptionalInt;
    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 4812
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IME requested to finish handwriting with a mismatched requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4815
    :cond_1
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeVirtualStylusIdForTestSessionLocked()V

    .line 4816
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    .line 4817
    return-void
.end method

.method private resolveImeUserIdFromDisplayIdLocked(I)I
    .locals 1
    .param p1, "displayId"    # I

    .line 399
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 399
    :goto_0
    return v0
.end method

.method private resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 412
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    move-result v0

    .line 414
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v1

    return v1

    .line 416
    .end local v0    # "displayId":I
    :cond_0
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    return v0
.end method

.method private resolveImeUserIdLocked(I)I
    .locals 1
    .param p1, "callingProcessUserId"    # I

    .line 361
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    :goto_0
    return v0
.end method

.method private resolveImeUserIdLocked(ILcom/android/internal/inputmethod/IInputMethodClient;)I
    .locals 3
    .param p1, "callingProcessUserId"    # I
    .param p2, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 379
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_1

    .line 380
    if-nez p1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object v0

    .line 382
    .local v0, "clientState":Lcom/android/server/inputmethod/ClientState;
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v2, v0, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v1

    return v1

    .line 385
    .end local v0    # "clientState":Lcom/android/server/inputmethod/ClientState;
    :cond_0
    return p1

    .line 387
    :cond_1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    return v0
.end method

.method private sendResultReceiverFailureLocked(Landroid/os/ResultReceiver;I)V
    .locals 5
    .param p1, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p2, "userId"    # I

    .line 3170
    if-nez p1, :cond_0

    .line 3171
    return-void

    .line 3173
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 3174
    .local v0, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 3175
    .local v1, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    invoke-virtual {v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->isInputShown()Z

    move-result v2

    .line 3176
    .local v2, "isInputShown":Z
    if-eqz v2, :cond_1

    .line 3177
    const/4 v3, 0x0

    goto :goto_0

    .line 3178
    :cond_1
    const/4 v3, 0x1

    :goto_0
    nop

    .line 3176
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 3179
    return-void
.end method

.method private setImeWindowStatusLocked(IILcom/android/server/inputmethod/UserData;)V
    .locals 6
    .param p1, "vis"    # I
    .param p2, "backDisposition"    # I
    .param p3, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 2862
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    move-result v0

    .line 2864
    .local v0, "topFocusedDisplayId":I
    iget v1, p3, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 2865
    .local v1, "userId":I
    iget-object v2, p3, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2870
    .local v2, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v3

    .line 2871
    .local v3, "tokenDisplayId":I
    if-eq v3, v0, :cond_0

    if-eqz v3, :cond_0

    .line 2872
    return-void

    .line 2874
    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->setImeWindowVis(I)V

    .line 2875
    invoke-virtual {v2, p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->setBackDisposition(I)V

    .line 2876
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    .line 2879
    packed-switch p2, :pswitch_data_0

    .line 2888
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .local v4, "dismissImeOnBackKeyPressed":Z
    :goto_0
    goto :goto_1

    .line 2881
    .end local v4    # "dismissImeOnBackKeyPressed":Z
    :pswitch_0
    const/4 v4, 0x1

    .line 2882
    .restart local v4    # "dismissImeOnBackKeyPressed":Z
    goto :goto_1

    .line 2884
    .end local v4    # "dismissImeOnBackKeyPressed":Z
    :pswitch_1
    const/4 v4, 0x0

    .line 2885
    .restart local v4    # "dismissImeOnBackKeyPressed":Z
    nop

    .line 2891
    :goto_1
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowManagerInternal;->setDismissImeOnBackKeyPressed(Z)V

    .line 2892
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setInputMethodAndSubtypeLocked(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/server/inputmethod/UserData;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p3, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 4228
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4229
    .local v0, "callingUid":I
    iget v1, p3, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 4230
    .local v1, "userId":I
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v2

    .line 4231
    .local v2, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v3

    .line 4232
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v3, :cond_1

    .line 4233
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4232
    invoke-direct {p0, v4, v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4236
    if-eqz p2, :cond_0

    .line 4237
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v4

    goto :goto_0

    .line 4238
    :cond_0
    const/4 v4, -0x1

    :goto_0
    nop

    .line 4239
    .local v4, "subtypeIndex":I
    invoke-direct {p0, p1, v4, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIndexLocked(Ljava/lang/String;II)V

    .line 4240
    return-void

    .line 4234
    .end local v4    # "subtypeIndex":I
    :cond_1
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getExceptionForUnknownImeId(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4
.end method

.method private setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 5491
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 5492
    .local v0, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 5493
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object v3

    .line 5494
    .local v3, "enabledImeIdsStr":Ljava/lang/String;
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->concatEnabledImeIds(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5496
    .local v4, "newEnabledImeIdsStr":Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5499
    return v2

    .line 5501
    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 5503
    return v1

    .line 5505
    .end local v3    # "enabledImeIdsStr":Ljava/lang/String;
    .end local v4    # "newEnabledImeIdsStr":Ljava/lang/String;
    :cond_1
    nop

    .line 5506
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsAndSubtypeList()Ljava/util/List;

    move-result-object v3

    .line 5507
    .local v3, "enabledInputMethodsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 5508
    .local v4, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4, v3, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingId(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5510
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v1

    .line 5511
    .local v1, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDeviceIdToShowIme()I

    move-result v5

    if-nez v5, :cond_3

    .line 5513
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    .line 5514
    .local v5, "selId":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 5515
    const-string v6, "InputMethodManagerService"

    const-string v7, "Can\'t find new IME, unsetting the current input method."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5516
    const-string v6, ""

    invoke-direct {p0, v6, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;I)V

    .line 5518
    .end local v5    # "selId":Ljava/lang/String;
    :cond_2
    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedDefaultDeviceInputMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5521
    nop

    .line 5523
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v5

    .line 5522
    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v5

    .line 5524
    .local v5, "newDefaultIme":Landroid/view/inputmethod/InputMethodInfo;
    nop

    .line 5525
    if-nez v5, :cond_4

    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 5524
    :goto_0
    invoke-virtual {v0, v6}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    .line 5528
    .end local v5    # "newDefaultIme":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v2

    .line 5532
    .end local v1    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :cond_5
    return v1
.end method

.method private setInputMethodWithSubtypeIndexLocked(Ljava/lang/String;II)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtypeIndex"    # I
    .param p3, "userId"    # I

    .line 4822
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 4823
    .local v0, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    nop

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda26;

    invoke-direct {v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda26;-><init>(Ljava/lang/String;)V

    .line 4824
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4825
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4826
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested IME is not enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4828
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4830
    .local v1, "ident":J
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4832
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4833
    nop

    .line 4834
    return-void

    .line 4832
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4833
    throw v3
.end method

.method private setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V
    .locals 5
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtypeIndex"    # I
    .param p3, "setSubtypeOnly"    # Z
    .param p4, "userId"    # I

    .line 5540
    invoke-static {p4}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 5541
    .local v0, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v1

    .line 5542
    .local v1, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v2

    .line 5543
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 5542
    invoke-virtual {v0, v2, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 5548
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    goto :goto_0

    .line 5552
    :cond_1
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    if-ge p2, v2, :cond_2

    .line 5553
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 5554
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    .line 5555
    .local v3, "newSubtypeHashcode":I
    nop

    .line 5556
    .local v2, "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_1

    .line 5558
    .end local v2    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "newSubtypeHashcode":I
    :cond_2
    const/4 v3, -0x1

    .line 5561
    .restart local v3    # "newSubtypeHashcode":I
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .restart local v2    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_1

    .line 5549
    .end local v2    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "newSubtypeHashcode":I
    :goto_0
    const/4 v3, -0x1

    .line 5550
    .restart local v3    # "newSubtypeHashcode":I
    const/4 v2, 0x0

    .line 5564
    .restart local v2    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedSubtype(I)V

    .line 5565
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->setCurrentSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 5566
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getUserId()I

    move-result v4

    invoke-direct {p0, v4, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyInputMethodSubtypeChangedLocked(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 5568
    if-nez p3, :cond_4

    .line 5570
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    const-string v4, ""

    :goto_2
    invoke-virtual {v0, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5573
    :cond_4
    nop

    .line 5574
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->onInputMethodSubtypeChanged()V

    .line 5576
    return-void
.end method

.method static shouldEnableConcurrentMultiUserMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 345
    :goto_0
    return v0
.end method

.method private shouldOfferSwitchingToNextInputMethodLocked(Lcom/android/server/inputmethod/UserData;)Z
    .locals 8
    .param p1, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 4339
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4340
    .local v0, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethod()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v3

    .line 4341
    .local v3, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v7, 0x0

    if-nez v3, :cond_0

    .line 4342
    return v7

    .line 4344
    :cond_0
    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 4346
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    .line 4345
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;IZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v1

    .line 4348
    .local v1, "nextSubtype":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-eqz v1, :cond_1

    const/4 v7, 0x1

    :cond_1
    return v7
.end method

.method private shouldPreventImeStartupLocked(Ljava/lang/String;III)Z
    .locals 4
    .param p1, "selectedMethodId"    # Ljava/lang/String;
    .param p2, "startInputFlags"    # I
    .param p3, "unverifiedTargetSdkVersion"    # I
    .param p4, "userId"    # I

    .line 2293
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreventImeStartupUnlessTextEditor:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2294
    return v1

    .line 2296
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2297
    return v1

    .line 2299
    :cond_1
    invoke-static {p3, p2}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2300
    return v1

    .line 2302
    :cond_2
    invoke-static {p4}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 2303
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 2304
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v0, :cond_3

    .line 2305
    return v1

    .line 2307
    :cond_3
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNonPreemptibleInputMethods:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2308
    return v1

    .line 2310
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method private shouldShowImeSwitcherLocked(II)Z
    .locals 5
    .param p1, "visibility"    # I
    .param p2, "userId"    # I

    .line 2766
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2769
    :cond_0
    nop

    .line 2770
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuControllerNew:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->isShowing()Z

    move-result v0

    .line 2771
    nop

    .line 2772
    .local v0, "switcherMenuShowing":Z
    if-eqz v0, :cond_1

    .line 2773
    return v1

    .line 2776
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v2

    .line 2777
    .local v2, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v3

    .line 2778
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v4

    .line 2777
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2779
    return v1

    .line 2781
    :cond_2
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    nop

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2782
    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardSecure(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2783
    return v1

    .line 2785
    :cond_3
    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_4

    .line 2786
    return v1

    .line 2788
    :cond_4
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v3

    .line 2794
    and-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_5

    .line 2795
    return v1

    .line 2798
    :cond_5
    invoke-static {v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasMultipleSubtypesForSwitcher(ZI)Z

    move-result v1

    return v1
.end method

.method private showCurrentInputLocked(Landroid/os/IBinder;III)Z
    .locals 9
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "reason"    # I
    .param p4, "userId"    # I

    .line 3546
    const/4 v0, 0x1

    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v3

    .line 3547
    .local v3, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v7, p3

    move v8, p4

    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "flags":I
    .end local p3    # "reason":I
    .end local p4    # "userId":I
    .local v2, "windowToken":Landroid/os/IBinder;
    .local v4, "flags":I
    .local v7, "reason":I
    .local v8, "userId":I
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;II)Z

    move-result p1

    return p1
.end method

.method private showInputMethodPickerLocked(III)V
    .locals 12
    .param p1, "auxiliarySubtypeMode"    # I
    .param p2, "displayId"    # I
    .param p3, "userId"    # I

    .line 4970
    const-string v0, "InputMethodManagerService"

    packed-switch p1, :pswitch_data_0

    .line 4984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown subtype picker mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4985
    return-void

    .line 4982
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "showAuxSubtypes":Z
    goto :goto_0

    .line 4980
    .end local v1    # "showAuxSubtypes":Z
    :pswitch_1
    const/4 v1, 0x1

    .restart local v1    # "showAuxSubtypes":Z
    goto :goto_0

    .line 4975
    .end local v1    # "showAuxSubtypes":Z
    :pswitch_2
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    .line 4976
    .local v1, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v2, v1, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 4977
    .local v2, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    invoke-virtual {v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->isInputShown()Z

    move-result v1

    .line 4978
    .end local v2    # "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .local v1, "showAuxSubtypes":Z
    nop

    .line 4988
    :goto_0
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v2

    .line 4989
    .local v2, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardLocked()Z

    move-result v3

    const/4 v4, 0x1

    nop

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 4990
    invoke-virtual {v3, p3}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardSecure(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move v9, v3

    .line 4991
    .local v9, "isScreenLocked":Z
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v7

    .line 4992
    .local v7, "lastInputMethodId":Ljava/lang/String;
    nop

    .line 4993
    invoke-virtual {v2, v7}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeIndex(Ljava/lang/String;)I

    move-result v3

    .line 4995
    .local v3, "lastInputMethodSubtypeIndex":I
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 4996
    invoke-static {v1, v9, v4, v5, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeList(ZZZLandroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)Ljava/util/List;

    move-result-object v6

    .line 4999
    .local v6, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5000
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Show switching menu failed, imList is empty, showAuxSubtypes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isScreenLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " userId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5004
    return-void

    .line 5007
    :cond_1
    nop

    .line 5008
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 5013
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v4, v5, v7, v8}, [Ljava/lang/Object;

    move-result-object v4

    .line 5008
    const-string v5, "Show IME switcher menu, showAuxSubtypes=%s displayId=%s preferredInputMethodId=%s preferredInputMethodSubtypeIndex=%s"

    invoke-static {v0, v5, v4}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5015
    move v0, v3

    .line 5016
    .local v0, "selectedSubtypeIndex":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    .line 5018
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v4

    .line 5019
    .local v4, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 5020
    .local v5, "curSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v5, :cond_2

    .line 5021
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v8

    .line 5022
    .local v8, "curMethodId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v10

    .line 5023
    .local v10, "curImi":Landroid/view/inputmethod/InputMethodInfo;
    nop

    .line 5024
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v11

    .line 5023
    invoke-static {v10, v11}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    move v8, v0

    goto :goto_2

    .line 5028
    .end local v4    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v5    # "curSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v8    # "curMethodId":Ljava/lang/String;
    .end local v10    # "curImi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    move v8, v0

    .end local v0    # "selectedSubtypeIndex":I
    .local v8, "selectedSubtypeIndex":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuControllerNew:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    move v10, p2

    move v11, p3

    .end local p2    # "displayId":I
    .end local p3    # "userId":I
    .local v10, "displayId":I
    .local v11, "userId":I
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->show(Ljava/util/List;Ljava/lang/String;IZII)V

    .line 5030
    .end local v8    # "selectedSubtypeIndex":I
    nop

    .line 5034
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showMySoftInputLocked(Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/server/inputmethod/UserData;)V
    .locals 3
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "flags"    # I
    .param p3, "reason"    # I
    .param p4, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 4887
    iget v0, p4, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 4888
    .local v0, "userId":I
    nop

    .line 4889
    iget-object v1, p4, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 4890
    invoke-virtual {p0, v2, p4, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 4897
    return-void
.end method

.method private showSoftInputLocked(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;III)Z
    .locals 13
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p4, "flags"    # I
    .param p5, "lastClickToolType"    # I
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p7, "reason"    # I
    .param p8, "uid"    # I
    .param p9, "userId"    # I

    .line 3209
    move-object/from16 v7, p6

    const-string/jumbo v4, "showSoftInput"

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move/from16 v2, p8

    move/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result v0

    const-wide/16 v2, 0x20

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 3211
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/4 v6, 0x3

    invoke-interface {v0, v5, v6}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3213
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3214
    return v4

    .line 3216
    :cond_0
    move/from16 v6, p9

    invoke-virtual {p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v8

    .line 3217
    .local v8, "userData":Lcom/android/server/inputmethod/UserData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 3219
    .local v9, "ident":J
    :try_start_0
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v11, "Client requesting input be shown"

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v0, v11, v12}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3220
    nop

    .line 3221
    iget-object v0, v8, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 3222
    .local v0, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->isInputShown()Z

    move-result v11

    .line 3223
    .local v11, "wasVisible":Z
    invoke-virtual {p0, v4, v8, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3224
    if-eqz v7, :cond_2

    .line 3225
    nop

    .line 3226
    if-eqz v11, :cond_1

    goto :goto_0

    .line 3227
    :cond_1
    const/4 v4, 0x2

    :goto_0
    nop

    .line 3225
    const/4 v12, 0x0

    invoke-virtual {v7, v4, v12}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3237
    .end local v0    # "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .end local v11    # "wasVisible":Z
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 3229
    .restart local v0    # "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .restart local v11    # "wasVisible":Z
    :cond_2
    :goto_1
    nop

    .line 3237
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3238
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3229
    const/4 v2, 0x1

    return v2

    .line 3231
    :cond_3
    nop

    .line 3237
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3238
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3231
    return v4

    .line 3237
    .end local v0    # "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .end local v11    # "wasVisible":Z
    :goto_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3238
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3239
    throw v0
.end method

.method private startInputOrWindowGainedFocusInternalLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILcom/android/server/inputmethod/InputMethodBindingController;Landroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/ClientState;Z)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 29
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "startInputFlags"    # I
    .param p5, "softInputMode"    # I
    .param p6, "windowFlags"    # I
    .param p7, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p8, "inputContext"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .param p9, "remoteAccessibilityInputConnection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p10, "unverifiedTargetSdkVersion"    # I
    .param p11, "bindingController"    # Lcom/android/server/inputmethod/InputMethodBindingController;
    .param p12, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;
    .param p13, "cs"    # Lcom/android/server/inputmethod/ClientState;
    .param p14, "imeRequestedVisible"    # Z

    .line 3960
    move-object/from16 v0, p0

    move-object/from16 v10, p3

    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 3972
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 3973
    invoke-static/range {p4 .. p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    move-result-object v15

    .line 3974
    invoke-static/range {p5 .. p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v16

    .line 3975
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 3976
    invoke-static/range {p14 .. p14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v14, p7

    move-object/from16 v13, p8

    move-object/from16 v19, p11

    move-object/from16 v20, p12

    move-object/from16 v21, p13

    filled-new-array/range {v11 .. v22}, [Ljava/lang/Object;

    move-result-object v2

    .line 3960
    move-object v4, v14

    const-string/jumbo v3, "startInputOrWindowGainedFocusInternalLocked: reason=%s client=%s inputContext=%s editorInfo=%s startInputFlags=%s softInputMode=%s windowFlags=#%s unverifiedTargetSdkVersion=%s bindingController=%s imeDispatcher=%s cs=%s imeRequestedVisible=%s"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3978
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result v11

    .line 3979
    .local v11, "userId":I
    invoke-virtual {v0, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v12

    .line 3980
    .local v12, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v1, v12, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-ne v1, v10, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v13, v1

    .line 3981
    .local v13, "sameWindowFocused":Z
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move/from16 v18, v1

    .line 3982
    .local v18, "isTextEditor":Z
    and-int/lit8 v1, p4, 0x8

    if-eqz v1, :cond_2

    move/from16 v19, v6

    goto :goto_2

    :cond_2
    move/from16 v19, v2

    .line 3984
    .local v19, "startInputByWinGainedFocus":Z
    :goto_2
    if-eqz v4, :cond_3

    .line 3985
    invoke-virtual {v4}, Landroid/view/inputmethod/EditorInfo;->getInitialToolType()I

    move-result v1

    move/from16 v20, v1

    goto :goto_3

    :cond_3
    move/from16 v20, v2

    .line 3989
    .local v20, "toolType":I
    :goto_3
    new-instance v14, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    if-nez v13, :cond_4

    move/from16 v17, v6

    goto :goto_4

    :cond_4
    move/from16 v17, v2

    :goto_4
    move/from16 v15, p5

    move/from16 v16, p6

    invoke-direct/range {v14 .. v20}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;-><init>(IIZZZI)V

    .line 3992
    .local v14, "windowState":Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
    iget-object v15, v12, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 3993
    .local v15, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    invoke-virtual {v15, v10, v14}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setWindowState(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V

    .line 3995
    if-eqz v13, :cond_6

    if-eqz v18, :cond_6

    .line 3996
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 4000
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p2

    filled-new-array {v3, v4, v10, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 3996
    const-string v5, "Window already focused, ignoring focus gain of: %s editorInfo=%s, token=%s, startInputReason=%s"

    invoke-static {v1, v5, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4001
    if-eqz v4, :cond_5

    .line 4002
    move/from16 v6, p1

    move/from16 v5, p4

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move/from16 v7, p10

    move-object/from16 v9, p11

    move-object/from16 v8, p12

    move-object/from16 v1, p13

    invoke-direct/range {v0 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v16

    move-object v7, v0

    move v8, v5

    return-object v16

    .line 4007
    :cond_5
    move/from16 v8, p4

    move-object v7, v0

    new-instance v21, Lcom/android/internal/inputmethod/InputBindResult;

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v21 .. v28}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    return-object v21

    .line 3995
    :cond_6
    move/from16 v8, p4

    move-object v7, v0

    .line 4012
    new-instance v0, Lcom/android/server/inputmethod/ImeBindingState;

    invoke-virtual/range {p11 .. p11}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result v1

    move/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v4, p13

    move-object v2, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/ImeBindingState;-><init>(ILandroid/os/IBinder;ILcom/android/server/inputmethod/ClientState;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, v12, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 4014
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4020
    const/16 v16, 0x0

    .line 4021
    .local v16, "didStart":Z
    const/16 v17, 0x0

    .line 4023
    .local v17, "res":Lcom/android/internal/inputmethod/InputBindResult;
    nop

    .line 4024
    move/from16 v0, p10

    invoke-static {v0, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v1

    .line 4023
    move/from16 v2, p14

    invoke-virtual {v15, v14, v1, v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->computeState(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;ZZ)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    move-result-object v21

    .line 4026
    .local v21, "imeVisRes":Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;
    if-eqz v21, :cond_9

    .line 4027
    const/4 v1, 0x0

    .line 4028
    .local v1, "isShow":Z
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getReason()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move-object v0, v7

    goto :goto_5

    .line 4033
    :sswitch_0
    const/16 v22, 0x1

    .line 4035
    .end local v1    # "isShow":Z
    .local v22, "isShow":Z
    if-eqz p7, :cond_7

    .line 4036
    move-object v1, v7

    move v7, v0

    move-object v0, v1

    move/from16 v6, p1

    move-object/from16 v4, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v9, p11

    move-object/from16 v1, p13

    move v5, v8

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v17

    .line 4040
    const/16 v16, 0x1

    move/from16 v1, v22

    goto :goto_5

    .line 4035
    :cond_7
    move-object v0, v7

    move/from16 v1, v22

    .line 4044
    .end local v22    # "isShow":Z
    .restart local v1    # "isShow":Z
    :goto_5
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getReason()I

    move-result v2

    invoke-direct {v0, v1, v2, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v6

    .line 4046
    .local v6, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    iget-object v2, v12, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v5, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 4047
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getState()I

    move-result v7

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getReason()I

    move-result v8

    .line 4046
    move v9, v11

    .end local v11    # "userId":I
    .local v9, "userId":I
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)V

    .line 4048
    .end local v9    # "userId":I
    .restart local v11    # "userId":I
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getReason()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_8

    .line 4054
    move-object/from16 v4, p13

    iget v2, v4, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-virtual/range {p11 .. p11}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v3

    if-eq v2, v3, :cond_a

    .line 4055
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    goto :goto_6

    .line 4048
    :cond_8
    move-object/from16 v4, p13

    goto :goto_6

    .line 4026
    .end local v1    # "isShow":Z
    .end local v6    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :cond_9
    move-object/from16 v4, p13

    move-object v0, v7

    .line 4059
    :cond_a
    :goto_6
    if-nez v16, :cond_c

    .line 4060
    if-eqz p7, :cond_b

    .line 4061
    move/from16 v6, p1

    move/from16 v5, p4

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move/from16 v7, p10

    move-object/from16 v9, p11

    move-object/from16 v8, p12

    move-object v1, v4

    move-object/from16 v4, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v17

    goto :goto_7

    .line 4066
    :cond_b
    sget-object v17, Lcom/android/internal/inputmethod/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/inputmethod/InputBindResult;

    .line 4069
    :cond_c
    :goto_7
    return-object v17

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method private startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 20
    .param p1, "cs"    # Lcom/android/server/inputmethod/ClientState;
    .param p2, "inputConnection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .param p3, "remoteAccessibilityInputConnection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p4, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p5, "startInputFlags"    # I
    .param p6, "startInputReason"    # I
    .param p7, "unverifiedTargetSdkVersion"    # I
    .param p8, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;
    .param p9, "bindingController"    # Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2102
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p9

    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result v6

    .line 2103
    .local v6, "userId":I
    invoke-virtual {v0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v7

    .line 2104
    .local v7, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v8, v7, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 2108
    .local v8, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    iget-object v9, v7, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v9, v9, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v8, v9}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowStateOrNull(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    move-result-object v9

    .line 2110
    .local v9, "winState":Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
    if-nez v9, :cond_0

    .line 2111
    sget-object v10, Lcom/android/internal/inputmethod/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v10

    .line 2113
    :cond_0
    iget v10, v1, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    .line 2114
    .local v10, "csDisplayId":I
    nop

    .line 2115
    invoke-virtual {v8, v9, v10}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->computeImeDisplayId(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;I)I

    move-result v11

    .line 2114
    invoke-virtual {v5, v11}, Lcom/android/server/inputmethod/InputMethodBindingController;->setDisplayIdToShowIme(I)V

    .line 2119
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v11

    .line 2120
    .local v11, "selectedMethodId":Ljava/lang/String;
    nop

    .line 2121
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result v12

    .line 2120
    invoke-direct {v0, v12, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeCurrentDeviceMethodIdLocked(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2122
    .local v12, "deviceMethodId":Ljava/lang/String;
    const/4 v13, 0x1

    if-nez v12, :cond_1

    .line 2123
    invoke-virtual {v8}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getImePolicy()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->setImeHiddenByDisplayPolicy(Z)V

    goto :goto_0

    .line 2124
    :cond_1
    invoke-static {v12, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 2125
    nop

    .line 2126
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDeviceIdToShowIme()I

    move-result v14

    .line 2125
    const/4 v15, -0x1

    invoke-virtual {v0, v12, v15, v14, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;III)V

    .line 2127
    move-object v11, v12

    .line 2130
    :cond_2
    :goto_0
    invoke-virtual {v8}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getImePolicy()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->isImeHiddenByDisplayPolicy()Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_3

    .line 2131
    iget-object v13, v7, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v13, v13, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/16 v14, 0x1b

    invoke-direct {v0, v13, v15, v14, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;III)Z

    .line 2133
    sget-object v13, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v13

    .line 2137
    :cond_3
    if-nez v11, :cond_4

    .line 2138
    sget-object v13, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v13

    .line 2141
    :cond_4
    iget-object v14, v7, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eq v14, v1, :cond_5

    .line 2142
    invoke-direct {v0, v1, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->prepareClientSwitchLocked(Lcom/android/server/inputmethod/ClientState;I)V

    .line 2145
    :cond_5
    iget-object v14, v7, Lcom/android/server/inputmethod/UserData;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    if-eqz v14, :cond_6

    move v14, v13

    goto :goto_1

    :cond_6
    move v14, v15

    .line 2148
    .local v14, "connectionWasActive":Z
    :goto_1
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->advanceSequenceNumber()V

    .line 2150
    iput-object v1, v7, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 2151
    move-object/from16 v13, p2

    iput-object v13, v7, Lcom/android/server/inputmethod/UserData;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 2152
    move-object/from16 v15, p3

    iput-object v15, v7, Lcom/android/server/inputmethod/UserData;->mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 2153
    move-object/from16 v17, v8

    move-object/from16 v8, p8

    .end local v8    # "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .local v17, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    iput-object v8, v7, Lcom/android/server/inputmethod/UserData;->mCurImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 2155
    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v8, :cond_7

    .line 2156
    const-class v8, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2158
    :cond_7
    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v8, :cond_8

    iget-object v8, v2, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    if-nez v8, :cond_8

    .line 2159
    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-object/from16 v18, v9

    .end local v9    # "winState":Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
    .local v18, "winState":Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
    iget v9, v1, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-virtual {v8, v9}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getPreferredLocaleListForUid(I)Landroid/os/LocaleList;

    move-result-object v8

    .line 2160
    .local v8, "hintsFromVirtualDevice":Landroid/os/LocaleList;
    if-eqz v8, :cond_9

    .line 2161
    iput-object v8, v2, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    goto :goto_2

    .line 2158
    .end local v8    # "hintsFromVirtualDevice":Landroid/os/LocaleList;
    .end local v18    # "winState":Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
    .restart local v9    # "winState":Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
    :cond_8
    move-object/from16 v18, v9

    .line 2164
    .end local v9    # "winState":Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
    .restart local v18    # "winState":Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
    :cond_9
    :goto_2
    iput-object v2, v7, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 2167
    iget-object v8, v7, Lcom/android/server/inputmethod/UserData;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    .line 2168
    .local v8, "connectionIsActive":Z
    :goto_3
    if-eq v8, v14, :cond_b

    .line 2169
    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v9, v8}, Lcom/android/server/input/InputManagerInternal;->notifyInputMethodConnectionActive(Z)V

    .line 2173
    :cond_b
    move/from16 v9, p7

    invoke-direct {v0, v11, v3, v9, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldPreventImeStartupLocked(Ljava/lang/String;III)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 2175
    sget-object v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v3, "Avoiding IME startup and unbinding current input method."

    move-object/from16 v19, v7

    const/4 v7, 0x0

    .end local v7    # "userData":Lcom/android/server/inputmethod/UserData;
    .local v19, "userData":Lcom/android/server/inputmethod/UserData;
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v7}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2176
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->invalidateAutofillSession()V

    .line 2177
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 2178
    sget-object v2, Lcom/android/internal/inputmethod/InputBindResult;->NO_EDITOR:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v2

    .line 2184
    .end local v19    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v7    # "userData":Lcom/android/server/inputmethod/UserData;
    :cond_c
    move-object/from16 v19, v7

    .end local v7    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v19    # "userData":Lcom/android/server/inputmethod/UserData;
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v2

    .line 2185
    .local v2, "curId":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDisplayIdToShowIme()I

    move-result v3

    .line 2186
    .local v3, "displayIdToShowIme":I
    if-eqz v2, :cond_10

    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2187
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v7

    if-ne v3, v7, :cond_10

    .line 2188
    iget-object v7, v1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v7, :cond_f

    .line 2196
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    .line 2197
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 2200
    and-int/lit8 v16, p5, 0x4

    if-eqz v16, :cond_d

    const/4 v7, 0x1

    :cond_d
    invoke-direct {v0, v4, v7, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IZI)V

    .line 2202
    and-int/lit8 v7, p5, 0x4

    if-eqz v7, :cond_e

    const/4 v7, 0x1

    goto :goto_4

    :cond_e
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v0, v4, v7, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZI)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v7

    return-object v7

    .line 2206
    :cond_f
    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->tryReuseConnectionLocked(Lcom/android/server/inputmethod/InputMethodBindingController;Lcom/android/server/inputmethod/ClientState;I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v7

    .line 2207
    .local v7, "bindResult":Lcom/android/internal/inputmethod/InputBindResult;
    if-eqz v7, :cond_10

    .line 2208
    return-object v7

    .line 2212
    .end local v7    # "bindResult":Lcom/android/internal/inputmethod/InputBindResult;
    :cond_10
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 2213
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v7

    return-object v7
.end method

.method private startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V
    .locals 6
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "acceptingDelegation"    # Z

    .line 3353
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .end local p1    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local p2    # "acceptingDelegation":Z
    .local v1, "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .local v2, "acceptingDelegation":Z
    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ZLcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)Z

    .line 3354
    return-void
.end method

.method private startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ZLcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)Z
    .locals 16
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "acceptingDelegation"    # Z
    .param p3, "connectionlessCallback"    # Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    .param p4, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;
    .param p5, "isConnectionlessForDelegation"    # Z

    .line 3359
    move-object/from16 v1, p0

    const-string v0, "IMMS.startStylusHandwriting"

    const-wide/16 v7, 0x20

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3361
    :try_start_0
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v2, "InputMethodManagerService#startStylusHandwriting"

    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 3363
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3364
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v9, v0

    .line 3365
    .local v9, "callingUserId":I
    const-class v10, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 3366
    :try_start_1
    invoke-direct {v1, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v6

    .line 3367
    .local v6, "userId":I
    if-nez p2, :cond_0

    .line 3368
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    goto :goto_0

    .line 3416
    .end local v6    # "userId":I
    :catchall_0
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p5

    goto/16 :goto_2

    .line 3370
    .restart local v6    # "userId":I
    :cond_0
    :goto_0
    const-string/jumbo v4, "startStylusHandwriting"

    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 3372
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3418
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 3372
    return v3

    .line 3374
    :cond_1
    :try_start_2
    invoke-direct {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasSupportedStylusLocked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3375
    const-string v0, "InputMethodManagerService"

    const-string v4, "No supported Stylus hardware found on device. Ignoring startStylusHandwriting()"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3418
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 3377
    return v3

    .line 3379
    :cond_2
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3381
    .local v4, "ident":J
    :try_start_4
    invoke-virtual {v1, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    .line 3382
    .local v0, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result v11

    if-nez v11, :cond_3

    .line 3383
    const-string v11, "InputMethodManagerService"

    const-string v12, "Stylus HW unsupported by IME. Ignoring startStylusHandwriting()"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3385
    nop

    .line 3414
    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3418
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 3385
    return v3

    .line 3414
    .end local v0    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :catchall_1
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p5

    goto/16 :goto_1

    .line 3388
    .restart local v0    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :cond_3
    :try_start_6
    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v11}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v11

    .line 3389
    .local v11, "requestId":Ljava/util/OptionalInt;
    invoke-virtual {v11}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v12

    if-nez v12, :cond_4

    .line 3390
    const-string v12, "InputMethodManagerService"

    const-string v13, "Stylus handwriting was not initialized."

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3391
    nop

    .line 3414
    :try_start_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3418
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 3391
    return v3

    .line 3393
    :cond_4
    :try_start_8
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v12}, Lcom/android/server/inputmethod/HandwritingModeController;->isStylusGestureOngoing()Z

    move-result v12

    if-nez v12, :cond_5

    .line 3394
    const-string v12, "InputMethodManagerService"

    const-string v13, "There is no ongoing stylus gesture to start stylus handwriting."

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3396
    nop

    .line 3414
    :try_start_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3418
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 3396
    return v3

    .line 3398
    :cond_5
    :try_start_a
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v12}, Lcom/android/server/inputmethod/HandwritingModeController;->hasOngoingStylusHandwritingSession()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 3400
    const-string v12, "InputMethodManagerService"

    const-string v13, "Stylus handwriting session is already ongoing. Ignoring startStylusHandwriting()."

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3403
    nop

    .line 3414
    :try_start_b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 3418
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 3403
    return v3

    .line 3405
    :cond_6
    :try_start_c
    sget-object v12, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v13, "Client requesting Stylus Handwriting to be started"

    new-array v14, v3, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3406
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v12

    .line 3407
    .local v12, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v12, :cond_7

    .line 3408
    invoke-virtual {v11}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p5

    :try_start_d
    invoke-virtual {v12, v3, v13, v14, v15}, Lcom/android/server/inputmethod/IInputMethodInvoker;->canStartStylusHandwriting(ILcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 3411
    nop

    .line 3414
    :try_start_e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 3418
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 3411
    const/4 v3, 0x1

    return v3

    .line 3416
    .end local v0    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v4    # "ident":J
    .end local v6    # "userId":I
    .end local v11    # "requestId":Ljava/util/OptionalInt;
    .end local v12    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 3414
    .restart local v4    # "ident":J
    .restart local v6    # "userId":I
    :catchall_3
    move-exception v0

    goto :goto_1

    .line 3407
    .restart local v0    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .restart local v11    # "requestId":Ljava/util/OptionalInt;
    .restart local v12    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :cond_7
    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p5

    .line 3414
    .end local v0    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v11    # "requestId":Ljava/util/OptionalInt;
    .end local v12    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :try_start_f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3415
    nop

    .line 3416
    .end local v4    # "ident":J
    .end local v6    # "userId":I
    monitor-exit v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 3418
    .end local v2    # "uid":I
    .end local v9    # "callingUserId":I
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 3419
    nop

    .line 3420
    return v3

    .line 3414
    .restart local v2    # "uid":I
    .restart local v4    # "ident":J
    .restart local v6    # "userId":I
    .restart local v9    # "callingUserId":I
    :goto_1
    :try_start_10
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3415
    nop

    .end local v2    # "uid":I
    .end local v9    # "callingUserId":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local p2    # "acceptingDelegation":Z
    .end local p3    # "connectionlessCallback":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    .end local p4    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local p5    # "isConnectionlessForDelegation":Z
    throw v0

    .line 3416
    .end local v4    # "ident":J
    .end local v6    # "userId":I
    .restart local v2    # "uid":I
    .restart local v9    # "callingUserId":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .restart local p2    # "acceptingDelegation":Z
    .restart local p3    # "connectionlessCallback":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    .restart local p4    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .restart local p5    # "isConnectionlessForDelegation":Z
    :goto_2
    monitor-exit v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local p2    # "acceptingDelegation":Z
    .end local p3    # "connectionlessCallback":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    .end local p4    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local p5    # "isConnectionlessForDelegation":Z
    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 3418
    .end local v2    # "uid":I
    .end local v9    # "callingUserId":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .restart local p2    # "acceptingDelegation":Z
    .restart local p3    # "connectionlessCallback":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    .restart local p4    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .restart local p5    # "isConnectionlessForDelegation":Z
    :catchall_4
    move-exception v0

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p5

    :goto_3
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 3419
    throw v0
.end method

.method private switchKeyboardLayoutLocked(ILcom/android/server/inputmethod/UserData;)V
    .locals 11
    .param p1, "direction"    # I
    .param p2, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 5667
    iget v0, p2, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 5668
    .local v0, "userId":I
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    .line 5670
    .local v1, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5671
    .local v2, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v3

    .line 5672
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v4

    .line 5671
    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v7

    .line 5673
    .local v7, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v7, :cond_0

    .line 5674
    return-void

    .line 5676
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    .line 5678
    .local v8, "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    nop

    .line 5679
    iget-object v5, p2, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    if-lez p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v10, v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 5680
    :goto_1
    const/4 v6, 0x0

    const/4 v9, 0x2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodForHardware(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;IZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v3

    .line 5683
    .local v3, "nextItem":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v3, :cond_2

    .line 5684
    const-string v4, "InputMethodManagerService"

    const-string v5, "Hardware keyboard switching shortcut, next input method and subtype not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5686
    return-void

    .line 5689
    :cond_2
    iget v4, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeIndex:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-le v4, v6, :cond_3

    .line 5690
    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iget v9, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeIndex:I

    invoke-virtual {v4, v9}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v5

    .line 5691
    .local v4, "nextSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_2
    iget-object v9, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v9, v4}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object v3

    .line 5692
    .end local v4    # "nextSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v3, "nextSubtypeHandle":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    nop

    .line 5698
    if-nez v3, :cond_4

    .line 5699
    return-void

    .line 5701
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->getImeId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v4

    .line 5702
    .local v4, "nextImi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v4, :cond_5

    .line 5703
    return-void

    .line 5706
    :cond_5
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v9

    .line 5707
    .local v9, "subtypeCount":I
    if-nez v9, :cond_7

    .line 5708
    invoke-static {v4, v5}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5709
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v6, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;II)V

    .line 5711
    :cond_6
    return-void

    .line 5714
    :cond_7
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v9, :cond_9

    .line 5715
    nop

    .line 5716
    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object v6

    .line 5715
    invoke-virtual {v3, v6}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5717
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v5, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;II)V

    .line 5718
    return-void

    .line 5714
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    nop

    .line 5721
    .end local v5    # "i":I
    return-void
.end method

.method private switchToInputMethodLocked(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "subtypeIndex"    # I
    .param p3, "userId"    # I

    .line 5628
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 5629
    .local v0, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v1

    .line 5630
    .local v1, "enabledImes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda27;

    invoke-direct {v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda27;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5631
    const/4 v2, 0x0

    return v2

    .line 5633
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;II)V

    .line 5634
    const/4 v2, 0x1

    return v2
.end method

.method private switchToNextInputMethodLocked(ZLcom/android/server/inputmethod/UserData;)Z
    .locals 8
    .param p1, "onlyCurrentIme"    # Z
    .param p2, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 4319
    iget-object v0, p2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4320
    .local v0, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethod()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v3

    .line 4321
    .local v3, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v7, 0x0

    if-nez v3, :cond_0

    .line 4322
    return v7

    .line 4324
    :cond_0
    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 4326
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    .line 4325
    const/4 v5, 0x2

    const/4 v6, 0x1

    move v2, p1

    .end local p1    # "onlyCurrentIme":Z
    .local v2, "onlyCurrentIme":Z
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;IZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object p1

    .line 4328
    .local p1, "nextSubtype":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez p1, :cond_1

    .line 4329
    return v7

    .line 4331
    :cond_1
    iget-object v1, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget v4, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeIndex:I

    iget v5, p2, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIndexLocked(Ljava/lang/String;II)V

    .line 4333
    const/4 v1, 0x1

    return v1
.end method

.method private switchToPreviousInputMethodLocked(Lcom/android/server/inputmethod/UserData;)Z
    .locals 17
    .param p1, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 4245
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 4246
    .local v1, "userId":I
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4247
    .local v2, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    .line 4248
    .local v3, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastInputMethodAndSubtype()Landroid/util/Pair;

    move-result-object v4

    .line 4250
    .local v4, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 4251
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v5

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v5

    .local v5, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_0

    .line 4253
    .end local v5    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    const/4 v5, 0x0

    .line 4255
    .restart local v5    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v6

    .line 4256
    .local v6, "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v7, 0x0

    .line 4257
    .local v7, "targetLastImiId":Ljava/lang/String;
    const/4 v8, -0x1

    .line 4258
    .local v8, "subtypeIndex":I
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 4259
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 4260
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v10

    .line 4259
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 4261
    .local v9, "imiIdIsSame":Z
    iget-object v10, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 4262
    .local v10, "lastSubtypeHash":I
    if-nez v6, :cond_1

    const/4 v11, -0x1

    goto :goto_1

    .line 4263
    :cond_1
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v11

    :goto_1
    nop

    .line 4266
    .local v11, "currentSubtypeHash":I
    if-eqz v9, :cond_2

    if-eq v10, v11, :cond_3

    .line 4267
    :cond_2
    iget-object v12, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v12

    check-cast v7, Ljava/lang/String;

    .line 4268
    invoke-static {v5, v10}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v8

    .line 4272
    .end local v9    # "imiIdIsSame":Z
    .end local v10    # "lastSubtypeHash":I
    .end local v11    # "currentSubtypeHash":I
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_9

    .line 4273
    invoke-static {v6}, Lcom/android/server/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 4277
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v9

    .line 4278
    .local v9, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    .line 4280
    .local v12, "enabledCount":I
    if-eqz v6, :cond_4

    .line 4281
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 4282
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v13

    .local v13, "locale":Ljava/lang/String;
    goto :goto_2

    .line 4284
    .end local v13    # "locale":Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->get(I)Landroid/os/LocaleList;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4286
    .restart local v13    # "locale":Ljava/lang/String;
    :goto_2
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v12, :cond_7

    .line 4287
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/inputmethod/InputMethodInfo;

    .line 4288
    .local v15, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v16

    if-lez v16, :cond_5

    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 4289
    nop

    .line 4291
    move/from16 v16, v10

    invoke-static {v15}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v10

    .line 4290
    const-string/jumbo v0, "keyboard"

    invoke-static {v10, v0, v13, v11}, Lcom/android/server/inputmethod/SubtypeUtils;->findLastResortApplicableSubtype(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 4293
    .local v0, "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v0, :cond_6

    .line 4294
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 4295
    nop

    .line 4296
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v10

    .line 4295
    invoke-static {v15, v10}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v8

    .line 4297
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 4298
    goto :goto_4

    .line 4288
    .end local v0    # "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    move/from16 v16, v10

    .line 4286
    .end local v15    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    move/from16 v10, v16

    goto :goto_3

    :cond_7
    move/from16 v16, v10

    goto :goto_4

    .line 4273
    .end local v9    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v12    # "enabledCount":I
    .end local v13    # "locale":Ljava/lang/String;
    .end local v14    # "i":I
    :cond_8
    move/from16 v16, v10

    goto :goto_4

    .line 4272
    :cond_9
    move/from16 v16, v10

    .line 4305
    :goto_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4306
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 4307
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v9, v10, v12, v13}, [Ljava/lang/Object;

    move-result-object v9

    .line 4306
    const-string v10, "Switch to: %s, %s, from: %s, %s"

    invoke-static {v0, v10, v9}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4308
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIndexLocked(Ljava/lang/String;II)V

    .line 4309
    return v11

    .line 4311
    :cond_a
    move-object/from16 v0, p0

    return v16
.end method

.method private switchUserOnHandlerLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .locals 10
    .param p1, "newUserId"    # I
    .param p2, "clientToBeReset"    # Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 1391
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 1392
    .local v0, "prevUserId":I
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1393
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 1392
    const-string v3, "Switching user stage 1/3. newUserId=%s prevUserId=%s"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1398
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUnbindCurrentMethodByReset(I)V

    .line 1402
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v1

    .line 1403
    .local v1, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 1405
    const/4 v2, 0x6

    invoke-virtual {p0, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V

    .line 1409
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    .line 1412
    .local v2, "newUserData":Lcom/android/server/inputmethod/UserData;
    const-string v3, ""

    iput-object v3, v2, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    .line 1414
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 1415
    const-string v3, "default_input_method"

    const/4 v4, 0x0

    invoke-static {v3, v4, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1418
    .local v3, "defaultImiId":Ljava/lang/String;
    sget-object v4, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Switching user stage 2/3. newUserId=%s defaultImiId=%s"

    invoke-static {v4, v6, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1426
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1428
    .local v4, "initialUserSwitch":Z
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v5

    .line 1429
    .local v5, "newSettings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-virtual {p0, v4, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(ZI)V

    .line 1431
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1434
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;I)V

    .line 1436
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {p0, v6, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(ZI)V

    .line 1443
    iget-object v6, v2, Lcom/android/server/inputmethod/UserData;->mSubtypeForKeyboardLayoutMapping:Landroid/util/Pair;

    if-eqz v6, :cond_1

    .line 1444
    iget-object v6, v2, Lcom/android/server/inputmethod/UserData;->mSubtypeForKeyboardLayoutMapping:Landroid/util/Pair;

    .line 1445
    .local v6, "subtypeHandleAndSubtype":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;>;"
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/server/input/InputManagerInternal;->onInputMethodSubtypeChangedForKeyboardLayoutMapping(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 1449
    .end local v6    # "subtypeHandleAndSubtype":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_1
    if-eqz v4, :cond_2

    .line 1450
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1451
    invoke-static {v6, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1452
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v7

    .line 1450
    invoke-static {v6, v7}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 1455
    :cond_2
    sget-object v6, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1456
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 1455
    const-string v8, "Switching user stage 3/3. newUserId=%s selectedIme=%s"

    invoke-static {v6, v8, v7}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1458
    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v6, :cond_4

    if-eqz p2, :cond_4

    .line 1459
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object v6

    .line 1460
    .local v6, "cs":Lcom/android/server/inputmethod/ClientState;
    if-nez v6, :cond_3

    .line 1462
    return-void

    .line 1464
    :cond_3
    iget-object v7, v6, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-boolean v8, v2, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    invoke-virtual {v7, v8}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->scheduleStartInputIfNecessary(Z)V

    .line 1466
    .end local v6    # "cs":Lcom/android/server/inputmethod/ClientState;
    :cond_4
    return-void
.end method

.method private tryReuseConnectionLocked(Lcom/android/server/inputmethod/InputMethodBindingController;Lcom/android/server/inputmethod/ClientState;I)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 13
    .param p1, "bindingController"    # Lcom/android/server/inputmethod/InputMethodBindingController;
    .param p2, "cs"    # Lcom/android/server/inputmethod/ClientState;
    .param p3, "userId"    # I

    .line 2329
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->hasMainConnection()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2330
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2331
    nop

    .line 2337
    new-instance v1, Lcom/android/internal/inputmethod/InputBindResult;

    .line 2340
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v6

    .line 2341
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v7

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    .line 2337
    return-object v1

    .line 2343
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getLastBindTime()J

    move-result-wide v0

    .line 2344
    .local v0, "lastBindTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 2345
    .local v2, "bindingDuration":J
    const-wide/16 v4, 0xbb8

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 2353
    new-instance v5, Lcom/android/internal/inputmethod/InputBindResult;

    .line 2356
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v10

    .line 2357
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v11

    const/4 v12, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    .line 2353
    return-object v5

    .line 2359
    :cond_1
    nop

    .line 2360
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 2359
    const/16 v5, 0x7d00

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2364
    .end local v0    # "lastBindTime":J
    .end local v2    # "bindingDuration":J
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateDefaultVoiceImeIfNeededLocked(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 5451
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 5452
    .local v0, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5453
    const v2, 0x104002e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5454
    .local v1, "systemSpeechRecognizer":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getDefaultVoiceInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 5455
    .local v2, "currentDefaultVoiceImeId":Ljava/lang/String;
    nop

    .line 5456
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v3

    .line 5455
    invoke-static {v3, v1, v2}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->chooseSystemVoiceIme(Lcom/android/server/inputmethod/InputMethodMap;Ljava/lang/String;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v3

    .line 5457
    .local v3, "newSystemVoiceIme":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v3, :cond_1

    .line 5458
    sget-object v4, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Found no valid default Voice IME. If the user is still locked, this may be expected."

    invoke-static {v4, v6, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5462
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5463
    const-string v4, ""

    invoke-virtual {v0, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->putDefaultVoiceInputMethod(Ljava/lang/String;)V

    .line 5467
    :cond_0
    return-void

    .line 5469
    :cond_1
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5470
    return-void

    .line 5472
    :cond_2
    sget-object v4, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 5473
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 5472
    const-string v6, "Enabling the default Voice IME: %s userId: %s"

    invoke-static {v4, v6, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5474
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    .line 5475
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->putDefaultVoiceInputMethod(Ljava/lang/String;)V

    .line 5476
    return-void
.end method

.method private updateImeWindowStatusLocked(ZI)V
    .locals 4
    .param p1, "disableImeIcon"    # Z
    .param p2, "displayId"    # I

    .line 2907
    invoke-direct {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result v0

    .line 2908
    .local v0, "userId":I
    if-eqz p1, :cond_0

    .line 2909
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v1

    .line 2910
    .local v1, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    .line 2911
    .end local v1    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    goto :goto_0

    .line 2912
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(I)V

    .line 2914
    :goto_0
    return-void
.end method

.method private updateStatusIconLocked(Ljava/lang/String;ILcom/android/server/inputmethod/UserData;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .param p3, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 2701
    iget v1, p3, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 2704
    .local v1, "userId":I
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq v1, v0, :cond_0

    .line 2705
    return-void

    .line 2707
    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 2708
    sget-object v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo v3, "hide the small icon for the input method"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2709
    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideStatusBarIconLocked(I)V

    move-object v8, p1

    move v9, p2

    goto :goto_4

    .line 2710
    :cond_1
    if-eqz p1, :cond_5

    .line 2711
    sget-object v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo v3, "show a small icon for the input method"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2712
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2713
    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2714
    .local v2, "userAwarePackageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 2716
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 2717
    const-wide/16 v4, 0x0

    :try_start_0
    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v0

    .line 2716
    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 2719
    goto :goto_0

    .line 2718
    :catch_0
    move-exception v0

    .line 2720
    :goto_0
    const/4 v0, 0x0

    if-eqz v3, :cond_2

    .line 2721
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1

    .line 2722
    :cond_2
    move-object v4, v0

    :goto_1
    nop

    .line 2723
    .local v4, "contentDescription":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v5, :cond_4

    .line 2724
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 2725
    if-eqz v4, :cond_3

    .line 2726
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v11, v0

    goto :goto_3

    :cond_3
    goto :goto_2

    .line 2724
    :goto_3
    const/4 v10, 0x0

    move-object v8, p1

    move v9, p2

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "iconId":I
    .local v8, "packageName":Ljava/lang/String;
    .local v9, "iconId":I
    invoke-interface/range {v6 .. v11}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2727
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_4

    .line 2723
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "iconId":I
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "iconId":I
    :cond_4
    move-object v8, p1

    move v9, p2

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "iconId":I
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "iconId":I
    goto :goto_4

    .line 2710
    .end local v2    # "userAwarePackageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "contentDescription":Ljava/lang/CharSequence;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "iconId":I
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "iconId":I
    :cond_5
    move-object v8, p1

    move v9, p2

    .line 2730
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "iconId":I
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "iconId":I
    :goto_4
    return-void
.end method

.method private updateSystemUiLocked(III)V
    .locals 12
    .param p1, "vis"    # I
    .param p2, "backDisposition"    # I
    .param p3, "userId"    # I

    .line 2929
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq p3, v0, :cond_0

    .line 2930
    return-void

    .line 2932
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 2933
    .local v0, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2934
    .local v1, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurToken()Landroid/os/IBinder;

    move-result-object v2

    .line 2935
    .local v2, "curToken":Landroid/os/IBinder;
    if-nez v2, :cond_1

    .line 2936
    return-void

    .line 2938
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v3

    .line 2939
    .local v3, "curTokenDisplayId":I
    sget-object v4, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    and-int/lit8 v6, p1, 0x1

    .line 2940
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    and-int/lit8 v7, p1, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2941
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v5

    .line 2939
    const-string v6, "IME window vis: %s active: %s visible: %s displayId: %s"

    invoke-static {v4, v6, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2942
    iget-object v4, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v4, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 2943
    .local v4, "focusedWindowToken":Landroid/os/IBinder;
    if-eqz v4, :cond_2

    .line 2944
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 2948
    .local v5, "windowPerceptible":Ljava/lang/Boolean;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2950
    .local v6, "ident":J
    if-eqz v5, :cond_3

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_3

    .line 2951
    and-int/lit8 p1, p1, -0x3

    goto :goto_1

    .line 2970
    :catchall_0
    move-exception v8

    goto :goto_2

    .line 2953
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v8

    .line 2955
    .local v8, "curId":Ljava/lang/String;
    nop

    .line 2956
    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuControllerNew:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->isShowing()Z

    move-result v9

    .line 2957
    nop

    .line 2958
    .local v9, "switcherMenuShowing":Z
    if-nez v9, :cond_4

    .line 2959
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 2962
    :cond_4
    const/4 p2, 0x3

    .line 2964
    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(II)Z

    move-result v10

    .line 2965
    .local v10, "needsToShowImeSwitcher":Z
    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v11, :cond_6

    .line 2966
    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v11, v3, p1, p2, v10}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setImeWindowStatus(IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2970
    .end local v8    # "curId":Ljava/lang/String;
    .end local v9    # "switcherMenuShowing":Z
    .end local v10    # "needsToShowImeSwitcher":Z
    :cond_6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2971
    nop

    .line 2972
    return-void

    .line 2970
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2971
    throw v8
.end method

.method private userHasDebugPriv(ILandroid/os/ShellCommand;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "shellCommand"    # Landroid/os/ShellCommand;

    .line 6869
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const-string/jumbo v1, "no_debugging_features"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6871
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is restricted with DISALLOW_DEBUGGING_FEATURES."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6873
    const/4 v0, 0x0

    return v0

    .line 6875
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private verifyDelegator(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "delegatePackageName"    # Ljava/lang/String;
    .param p3, "delegatorPackageName"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .line 3498
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3499
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/inputmethod/ClientController;->verifyClientAndPackageMatch(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3500
    const-string v1, "InputMethodManagerService"

    const-string v3, "Delegate package does not belong to the same user. Ignoring startStylusHandwriting"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    monitor-exit v0

    return v2

    .line 3519
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3504
    :cond_0
    and-int/lit8 v1, p4, 0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 3507
    .local v1, "homeDelegatorAllowed":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/HandwritingModeController;->getDelegatorPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    if-nez v4, :cond_3

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 3509
    invoke-virtual {v4}, Lcom/android/server/inputmethod/HandwritingModeController;->isDelegatorFromDefaultHomePackage()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3510
    :cond_2
    const-string v3, "InputMethodManagerService"

    const-string v4, "Delegator package does not match. Ignoring startStylusHandwriting"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    monitor-exit v0

    return v2

    .line 3514
    :cond_3
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/HandwritingModeController;->getDelegatePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3515
    const-string v3, "InputMethodManagerService"

    const-string v4, "Delegate package does not match. Ignoring startStylusHandwriting"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    monitor-exit v0

    return v2

    .line 3514
    :cond_4
    nop

    .line 3519
    .end local v1    # "homeDelegatorAllowed":Z
    monitor-exit v0

    .line 3520
    return v3

    .line 3519
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private waitForUserInitialization()V
    .locals 12

    .line 1469
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 1470
    .local v0, "userIds":[I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1471
    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 1472
    .local v1, "deadlineNanos":J
    const/4 v3, 0x0

    .line 1474
    .local v3, "interrupted":Z
    :try_start_0
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, v0, v5

    .line 1475
    .local v6, "userId":I
    invoke-virtual {p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/inputmethod/UserData;->mBackgroundLoadLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1479
    .local v7, "latch":Ljava/util/concurrent/CountDownLatch;
    :goto_1
    nop

    .line 1480
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    sub-long v8, v1, v8

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1481
    .local v8, "remainingNanos":J
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v10
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1482
    .local v10, "awaitResult":Z
    nop

    .line 1487
    .end local v8    # "remainingNanos":J
    if-nez v10, :cond_0

    .line 1488
    :try_start_2
    const-string v8, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Timed out for user#"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " to be initialized"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1492
    .end local v6    # "userId":I
    .end local v7    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v10    # "awaitResult":Z
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 1474
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1483
    .restart local v6    # "userId":I
    .restart local v7    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catch_0
    move-exception v8

    nop

    .line 1484
    .local v8, "ignored":Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    .line 1485
    .end local v8    # "ignored":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1492
    .end local v6    # "userId":I
    .end local v7    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_1
    if-eqz v3, :cond_2

    .line 1493
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1496
    :cond_2
    return-void

    .line 1492
    :goto_3
    if-eqz v3, :cond_3

    .line 1493
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 1495
    :cond_3
    throw v4
.end method


# virtual methods
.method public acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "userId"    # I
    .param p3, "delegatePackageName"    # Ljava/lang/String;
    .param p4, "delegatorPackageName"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .line 3469
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusHandwritingEnabled(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3470
    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not accept stylus handwriting delegation. Stylus handwriting pref is disabled for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    return v1

    .line 3474
    :cond_0
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->verifyDelegator(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3475
    return v1

    .line 3477
    :cond_1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3478
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v2

    .line 3479
    .local v2, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/HandwritingModeController;->isDelegationUsingConnectionlessFlow()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 3480
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v3

    .line 3481
    .local v3, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-nez v3, :cond_2

    .line 3482
    monitor-exit v0

    return v1

    .line 3489
    .end local v2    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v3    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3484
    .restart local v2    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .restart local v3    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->commitHandwritingDelegationTextIfAvailable()V

    .line 3485
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    .line 3486
    .end local v3    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    goto :goto_0

    .line 3487
    :cond_3
    invoke-direct {p0, p1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V

    .line 3489
    .end local v2    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :goto_0
    monitor-exit v0

    .line 3490
    return v4

    .line 3489
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "userId"    # I
    .param p3, "delegatePackageName"    # Ljava/lang/String;
    .param p4, "delegatorPackageName"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "callback"    # Lcom/android/internal/inputmethod/IBooleanListener;

    .line 3452
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 3455
    .local v1, "result":Z
    :try_start_0
    invoke-interface {p6, v1}, Lcom/android/internal/inputmethod/IBooleanListener;->onResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3459
    goto :goto_0

    .line 3456
    :catch_0
    move-exception v0

    .line 3457
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to report result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodManagerService"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3458
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3460
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .locals 7
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "fallbackInputConnection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .param p3, "selfReportedDisplayId"    # I

    .line 1824
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1825
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1832
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1833
    .local v4, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1834
    .local v5, "callerPid":I
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->create(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/Handler;)Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    move-result-object v1

    .line 1835
    .local v1, "clientInvoker":Lcom/android/server/inputmethod/IInputMethodClientInvoker;
    const-class v6, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v6

    .line 1836
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p2

    move v3, p3

    .end local p2    # "fallbackInputConnection":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .end local p3    # "selfReportedDisplayId":I
    .local v2, "fallbackInputConnection":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .local v3, "selfReportedDisplayId":I
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/ClientController;->addClient(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/IRemoteInputConnection;III)Lcom/android/server/inputmethod/ClientState;

    .line 1838
    monitor-exit v6

    .line 1839
    return-void

    .line 1838
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .end local v2    # "fallbackInputConnection":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .end local v3    # "selfReportedDisplayId":I
    .restart local p2    # "fallbackInputConnection":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .restart local p3    # "selfReportedDisplayId":I
    :catchall_1
    move-exception v0

    move-object v2, p2

    move v3, p3

    move-object p2, v0

    .end local p2    # "fallbackInputConnection":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .end local p3    # "selfReportedDisplayId":I
    .restart local v2    # "fallbackInputConnection":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .restart local v3    # "selfReportedDisplayId":I
    :goto_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 10
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 4596
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4597
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 4598
    .local v7, "callingUserId":I
    const-class v8, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v8

    .line 4599
    :try_start_0
    invoke-direct {p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v6

    .line 4600
    .local v6, "userId":I
    const-string v4, "addVirtualStylusIdForTestSession"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    .end local p1    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .local v3, "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4602
    monitor-exit v8

    return-void

    .line 4611
    .end local v6    # "userId":I
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 4604
    .restart local v6    # "userId":I
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4606
    .local v4, "ident":J
    :try_start_2
    sget-object p1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v0, "Adding virtual stylus id for session"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p1, v0, v9}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4607
    sget-object p1, Lcom/android/server/inputmethod/InputMethodManagerService;->VIRTUAL_STYLUS_ID_FOR_TEST:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->addStylusDeviceIdLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4609
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4610
    nop

    .line 4611
    .end local v4    # "ident":J
    .end local v6    # "userId":I
    monitor-exit v8

    .line 4612
    return-void

    .line 4609
    .restart local v4    # "ident":J
    .restart local v6    # "userId":I
    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4610
    nop

    .end local v2    # "uid":I
    .end local v3    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v7    # "callingUserId":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    throw p1

    .line 4611
    .end local v4    # "ident":J
    .end local v6    # "userId":I
    .restart local v2    # "uid":I
    .restart local v7    # "callingUserId":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    :catchall_2
    move-exception v0

    move-object v1, p0

    move-object v3, p1

    move-object p1, v0

    .end local p1    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .restart local v3    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    :goto_0
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method attachNewInputLocked(IZI)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 32
    .param p1, "startInputReason"    # I
    .param p2, "initial"    # Z
    .param p3, "userId"    # I

    .line 1967
    move-object/from16 v0, p0

    move/from16 v2, p3

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v14

    .line 1968
    .local v14, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v15, v14, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 1969
    .local v15, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    iget-boolean v1, v14, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 1970
    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    iget-object v4, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v4, v4, Lcom/android/server/inputmethod/ClientState;->mBinding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v1, v4}, Lcom/android/server/inputmethod/IInputMethodInvoker;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    .line 1971
    iput-boolean v3, v14, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    .line 1974
    :cond_0
    xor-int/lit8 v7, p2, 0x1

    move/from16 v20, v7

    .line 1975
    .local v20, "restarting":Z
    new-instance v17, Landroid/os/Binder;

    invoke-direct/range {v17 .. v17}, Landroid/os/Binder;-><init>()V

    .line 1976
    .local v17, "startInputToken":Landroid/os/Binder;
    new-instance v1, Lcom/android/server/inputmethod/StartInputInfo;

    .line 1977
    move v4, v3

    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurToken()Landroid/os/IBinder;

    move-result-object v3

    move v5, v4

    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v4

    .line 1978
    move v6, v5

    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget v7, v7, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 1979
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    iget-object v7, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget v9, v7, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    iget-object v7, v14, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v10, v7, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    iget-object v11, v14, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v7, v14, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget v12, v7, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    .line 1983
    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v13

    move/from16 v6, p1

    move-object/from16 v23, v15

    move-object/from16 v15, v17

    move/from16 v7, v20

    .end local v17    # "startInputToken":Landroid/os/Binder;
    .end local v20    # "restarting":Z
    .local v7, "restarting":Z
    .local v15, "startInputToken":Landroid/os/Binder;
    .local v23, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-direct/range {v1 .. v13}, Lcom/android/server/inputmethod/StartInputInfo;-><init>(ILandroid/os/IBinder;ILjava/lang/String;IZIILandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V

    .end local v7    # "restarting":Z
    .restart local v20    # "restarting":Z
    move-object v7, v1

    .line 1984
    .local v7, "info":Lcom/android/server/inputmethod/StartInputInfo;
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    iget-object v3, v14, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v1, v15, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

    invoke-virtual {v1, v7}, Lcom/android/server/inputmethod/StartInputHistory;->addEntry(Lcom/android/server/inputmethod/StartInputInfo;)V

    .line 1992
    iget-object v1, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget v1, v1, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 1993
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1994
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethodUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    iget-object v3, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget v5, v3, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 1993
    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 1998
    :cond_1
    nop

    .line 1999
    invoke-direct {v0, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked(Lcom/android/server/inputmethod/UserData;)I

    move-result v21

    .line 2000
    .local v21, "navButtonFlags":I
    iget-object v1, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2001
    .local v1, "session":Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;
    invoke-virtual {v0, v1, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->setEnabledSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;Lcom/android/server/inputmethod/UserData;)V

    .line 2002
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object v4, v14, Lcom/android/server/inputmethod/UserData;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iget-object v5, v14, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v6, v14, Lcom/android/server/inputmethod/UserData;->mCurImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v22, v6

    move-object/from16 v17, v15

    .end local v15    # "startInputToken":Landroid/os/Binder;
    .restart local v17    # "startInputToken":Landroid/os/Binder;
    invoke-virtual/range {v16 .. v22}, Lcom/android/server/inputmethod/IInputMethodInvoker;->startInput(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IRemoteInputConnection;Landroid/view/inputmethod/EditorInfo;ZILandroid/window/ImeOnBackInvokedDispatcher;)V

    .line 2004
    .end local v17    # "startInputToken":Landroid/os/Binder;
    .restart local v15    # "startInputToken":Landroid/os/Binder;
    nop

    .line 2005
    invoke-direct {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v14, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-eqz v3, :cond_3

    .line 2008
    iget-object v3, v14, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz v3, :cond_2

    iget-object v3, v14, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/4 v5, 0x1

    goto :goto_0

    .line 2009
    :cond_2
    const/4 v3, 0x2

    const/4 v5, 0x1

    invoke-direct {v0, v5, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v3

    :goto_0
    nop

    .line 2011
    .local v3, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    iput-object v4, v14, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 2012
    iget-object v6, v14, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v6, v6, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v0, v6, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputInternal(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 2013
    .end local v3    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    goto :goto_1

    .line 2005
    :cond_3
    const/4 v5, 0x1

    .line 2030
    :goto_1
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v3

    .line 2031
    .local v3, "curId":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v6

    .line 2032
    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v6

    .line 2033
    .local v6, "curInputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v6, :cond_4

    .line 2034
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->suppressesSpellChecker()Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_2
    move/from16 v31, v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :goto_3
    nop

    .line 2035
    .local v31, "suppressesSpellChecker":Z
    iget-object v5, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 2036
    invoke-direct {v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v27

    .line 2038
    .local v27, "accessibilityInputMethodSessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;>;"
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasSupportedStylusLocked()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2039
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    new-instance v8, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;

    invoke-direct {v8, v0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V

    invoke-virtual {v5, v8}, Lcom/android/server/inputmethod/HandwritingModeController;->setInkWindowInitializer(Ljava/lang/Runnable;)V

    .line 2041
    :cond_5
    new-instance v24, Lcom/android/internal/inputmethod/InputBindResult;

    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 2043
    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    if-eqz v8, :cond_6

    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v4

    :cond_6
    move-object/from16 v28, v4

    .line 2044
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v30

    const/16 v25, 0x0

    move-object/from16 v29, v3

    move-object/from16 v26, v5

    .end local v3    # "curId":Ljava/lang/String;
    .local v29, "curId":Ljava/lang/String;
    invoke-direct/range {v24 .. v31}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    .line 2041
    return-object v24
.end method

.method clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V
    .locals 2
    .param p1, "cs"    # Lcom/android/server/inputmethod/ClientState;

    .line 2612
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2613
    iget-object v1, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    .line 2612
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2615
    .end local v0    # "i":I
    iget-object v0, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2616
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    .line 2617
    return-void
.end method

.method clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;I)V
    .locals 2
    .param p1, "cs"    # Lcom/android/server/inputmethod/ClientState;
    .param p2, "id"    # I

    .line 2621
    iget-object v0, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 2622
    .local v0, "session":Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;
    if-eqz v0, :cond_0

    .line 2623
    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    .line 2624
    iget-object v1, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2626
    :cond_0
    return-void
.end method

.method clearClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V
    .locals 1
    .param p1, "cs"    # Lcom/android/server/inputmethod/ClientState;

    .line 2605
    iget-object v0, p1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 2606
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2607
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    .line 2608
    return-void
.end method

.method clearClientSessionsLocked(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .locals 5
    .param p1, "bindingController"    # Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2666
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result v0

    .line 2667
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    .line 2668
    .local v1, "userData":Lcom/android/server/inputmethod/UserData;
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2670
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;I)V

    .line 2680
    .local v2, "clearClientSession":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/inputmethod/ClientState;>;"
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 2682
    iget-object v3, v1, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-direct {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 2683
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v1, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2684
    iget-object v4, v1, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 2685
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 2684
    invoke-direct {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    .line 2683
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2687
    .end local v3    # "i":I
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2688
    iget-object v3, v1, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 2689
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleNotifyImeUidToAudioService(I)V

    .line 2691
    .end local v2    # "clearClientSession":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/inputmethod/ClientState;>;"
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideStatusBarIconLocked(I)V

    .line 2692
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    .line 2693
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->setDismissImeOnBackKeyPressed(Z)V

    .line 2694
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    .line 2695
    return-void
.end method

.method computeImeDisplayIdForVisibleBackgroundUserOnAutomotive(IILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "userId"    # I
    .param p3, "checker"    # Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    .line 2402
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->getMainDisplayAssignedToUser(I)I

    move-result v0

    .line 2403
    .local v0, "mainDisplayId":I
    invoke-static {p1, p3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTargetInner(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;I)I

    move-result v1

    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 6136
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "InputMethodManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6138
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6139
    return-void
.end method

.method public getClientStateLocked(Lcom/android/internal/inputmethod/IInputMethodClient;)Lcom/android/server/inputmethod/ClientState;
    .locals 2
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 1885
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object v0

    return-object v0
.end method

.method getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;
    .locals 1

    .line 619
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;
    .locals 3
    .param p1, "userId"    # I

    .line 1595
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    :cond_0
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 1601
    .local v0, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    nop

    .line 1607
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 1609
    .local v1, "selectedImeId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    return-object v2
.end method

.method public getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3
    .param p1, "userId"    # I

    .line 5614
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 5615
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5618
    :cond_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5619
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v1

    .line 5621
    .local v1, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 5622
    .end local v1    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .locals 4
    .param p1, "userId"    # I

    .line 1638
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1643
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v0

    return-object v0

    .line 1645
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1646
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1648
    .local v1, "ident":J
    nop

    .line 1649
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListInternal(II)Ljava/util/List;

    move-result-object v3

    .line 1648
    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1651
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1648
    return-object v3

    .line 1651
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1652
    throw v3
.end method

.method public getEnabledInputMethodListLegacy(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1680
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1685
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1687
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1688
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1690
    .local v1, "ident":J
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListInternal(II)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1692
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1690
    return-object v3

    .line 1692
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1693
    throw v3
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;
    .locals 4
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "allowsImplicitlyEnabledSubtypes"    # Z
    .param p3, "userId"    # I

    .line 1774
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1780
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1782
    .local v1, "ident":J
    nop

    .line 1783
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodSubtypeListInternal(Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v3

    .line 1782
    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1786
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1782
    return-object v3

    .line 1786
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1787
    throw v3
.end method

.method public getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;
    .locals 1

    .line 6881
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    return-object v0
.end method

.method getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;
    .locals 1
    .param p1, "userId"    # I

    .line 593
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    return-object v0
.end method

.method public getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "directBootAwareness"    # I

    .line 1617
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1622
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v0

    return-object v0

    .line 1624
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1625
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1627
    .local v1, "ident":J
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(III)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1627
    return-object v3

    .line 1630
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1631
    throw v3
.end method

.method public getInputMethodListLegacy(II)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "directBootAwareness"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1660
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1665
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1667
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1668
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1670
    .local v1, "ident":J
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(III)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1672
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1670
    return-object v3

    .line 1672
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1673
    throw v3
.end method

.method public getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I
    .locals 3
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4456
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4457
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 4458
    .local v1, "callingUserId":I
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/internal/inputmethod/IInputMethodClient;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3
    .param p1, "userId"    # I

    .line 4353
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 4354
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4357
    :cond_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4358
    :try_start_0
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4359
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUserData(I)Lcom/android/server/inputmethod/UserData;
    .locals 1
    .param p1, "userId"    # I

    .line 587
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/UserDataRepository;->getOrCreate(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    return-object v0
.end method

.method getVisibilityApplierLocked()Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;
    .locals 1

    .line 4902
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 5040
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 5196
    return v1

    .line 5116
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v0, :cond_0

    .line 5117
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 5119
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-eqz v0, :cond_1

    .line 5120
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->setInputMethodServiceUid(I)V

    .line 5122
    :cond_1
    return v2

    .line 5107
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5108
    .local v0, "userId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 5109
    .local v1, "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 5111
    return v2

    .line 5099
    .end local v0    # "userId":I
    .end local v1    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_2
    nop

    .line 5102
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5103
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedToAllImesLocked()V

    .line 5104
    monitor-exit v0

    .line 5105
    return v2

    .line 5104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5094
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleSetInteractive(Z)V

    .line 5095
    return v2

    .line 5142
    :sswitch_4
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5143
    :try_start_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 5144
    .local v3, "userId":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 5145
    .local v4, "delegate":Ljava/lang/String;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 5146
    .local v5, "delegator":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v6, v3, v4, v5, v1}, Lcom/android/server/inputmethod/HandwritingModeController;->prepareStylusHandwritingDelegation(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 5148
    .end local v3    # "userId":I
    .end local v4    # "delegate":Ljava/lang/String;
    .end local v5    # "delegator":Ljava/lang/String;
    monitor-exit v0

    .line 5149
    return v2

    .line 5148
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 5188
    :sswitch_5
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5189
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    .line 5190
    .local v1, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v1, :cond_3

    .line 5191
    invoke-virtual {v1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->removeStylusHandwritingWindow()V

    goto :goto_0

    .line 5193
    .end local v1    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :catchall_2
    move-exception v1

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit v0

    .line 5194
    return v2

    .line 5193
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 5180
    :sswitch_6
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5181
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    .line 5182
    .restart local v1    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5183
    invoke-virtual {v1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->finishStylusHandwriting()V

    goto :goto_2

    .line 5185
    .end local v1    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :catchall_3
    move-exception v1

    goto :goto_3

    :cond_4
    :goto_2
    monitor-exit v0

    .line 5186
    return v2

    .line 5185
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    .line 5151
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;

    .line 5152
    .local v0, "handwritingRequest":Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 5153
    :try_start_4
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->-$$Nest$fgetuserData(Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;)Lcom/android/server/inputmethod/UserData;

    move-result-object v3

    .line 5154
    .local v3, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v4, v3, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5155
    .local v4, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v5

    .line 5156
    .local v5, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v5, :cond_5

    iget-object v6, v3, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v6, v6, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-nez v6, :cond_6

    :cond_5
    goto :goto_4

    .line 5159
    :cond_6
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->-$$Nest$fgetrequestId(Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;)I

    move-result v7

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->-$$Nest$fgetpid(Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;)I

    move-result v8

    .line 5163
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethodUid()I

    move-result v9

    iget-object v10, v3, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v10, v10, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 5160
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/inputmethod/HandwritingModeController;->startHandwritingSession(IIILandroid/os/IBinder;)Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;

    move-result-object v6

    .line 5165
    .local v6, "session":Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
    if-nez v6, :cond_7

    .line 5166
    const-string v7, "InputMethodManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to start handwriting session for requestId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5168
    monitor-exit v1

    return v2

    .line 5177
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v4    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v5    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    .end local v6    # "session":Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
    :catchall_4
    move-exception v2

    goto :goto_5

    .line 5171
    .restart local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v4    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .restart local v5    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    .restart local v6    # "session":Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
    :cond_7
    invoke-virtual {v6}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->getRequestId()I

    move-result v7

    .line 5172
    invoke-virtual {v6}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->getHandwritingChannel()Landroid/view/InputChannel;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->getRecordedEvents()Ljava/util/List;

    move-result-object v9

    .line 5171
    invoke-virtual {v5, v7, v8, v9}, Lcom/android/server/inputmethod/IInputMethodInvoker;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 5174
    const-string v7, "InputMethodManagerService"

    const-string v8, "Resetting handwriting mode."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5175
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    .line 5177
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v4    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v5    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    .end local v6    # "session":Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
    :cond_8
    monitor-exit v1

    .line 5178
    return v2

    .line 5157
    .restart local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v4    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .restart local v5    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :goto_4
    monitor-exit v1

    return v2

    .line 5177
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v4    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v5    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :goto_5
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v2

    .line 5126
    .end local v0    # "handwritingRequest":Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;
    :sswitch_8
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5127
    :try_start_5
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 5128
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v1

    .line 5129
    .local v1, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5130
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 5131
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasSupportedStylusLocked()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5132
    const-string v3, "InputMethodManagerService"

    const-string v4, "Initializing Handwriting Spy"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5133
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 5134
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v4

    .line 5133
    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/HandwritingModeController;->initializeHandwritingSpy(I)V

    goto :goto_6

    .line 5138
    .end local v1    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :catchall_5
    move-exception v1

    goto :goto_7

    .line 5136
    .restart local v1    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :cond_9
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/HandwritingModeController;->reset()V

    .line 5138
    .end local v1    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :goto_6
    monitor-exit v0

    .line 5139
    return v2

    .line 5138
    :goto_7
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v1

    .line 5075
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 5076
    .local v0, "windowToken":Landroid/os/IBinder;
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 5077
    :try_start_6
    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result v3

    .line 5078
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 5080
    .local v4, "userData":Lcom/android/server/inputmethod/UserData;
    :try_start_7
    iget-object v5, v4, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v5, v5, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-ne v0, v5, :cond_a

    iget-object v5, v4, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v5, :cond_a

    iget-object v5, v4, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v5, :cond_a

    .line 5083
    iget-object v5, v4, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {v5}, Lcom/android/internal/inputmethod/IInputMethodSession;->removeImeSurface()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_8

    .line 5087
    .end local v3    # "userId":I
    .end local v4    # "userData":Lcom/android/server/inputmethod/UserData;
    :catchall_6
    move-exception v2

    goto :goto_a

    .line 5085
    .restart local v3    # "userId":I
    .restart local v4    # "userData":Lcom/android/server/inputmethod/UserData;
    :catch_0
    move-exception v5

    goto :goto_9

    .line 5086
    :cond_a
    :goto_8
    nop

    .line 5087
    .end local v3    # "userId":I
    .end local v4    # "userData":Lcom/android/server/inputmethod/UserData;
    :goto_9
    :try_start_8
    monitor-exit v1

    .line 5088
    return v2

    .line 5087
    :goto_a
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw v2

    .line 5059
    .end local v0    # "windowToken":Landroid/os/IBinder;
    :sswitch_a
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5061
    :try_start_9
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 5062
    .local v1, "userId":I
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 5064
    .local v3, "userData":Lcom/android/server/inputmethod/UserData;
    :try_start_a
    iget-object v4, v3, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v4, :cond_b

    iget-object v4, v3, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v4, :cond_b

    .line 5066
    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 5067
    iget-object v4, v3, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {v4}, Lcom/android/internal/inputmethod/IInputMethodSession;->removeImeSurface()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_b

    .line 5071
    .end local v1    # "userId":I
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    :catchall_7
    move-exception v1

    goto :goto_d

    .line 5069
    .restart local v1    # "userId":I
    .restart local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    :catch_1
    move-exception v4

    goto :goto_c

    .line 5070
    :cond_b
    :goto_b
    nop

    .line 5071
    .end local v1    # "userId":I
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    :goto_c
    :try_start_b
    monitor-exit v0

    .line 5072
    return v2

    .line 5071
    :goto_d
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v1

    .line 5042
    :sswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5043
    .local v0, "reason":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 5044
    .local v3, "originatingDisplayId":I
    const-class v4, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v4

    .line 5045
    :try_start_c
    invoke-direct {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result v5

    .line 5046
    .local v5, "userId":I
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v6

    .line 5047
    .local v6, "userData":Lcom/android/server/inputmethod/UserData;
    nop

    .line 5048
    const/4 v7, 0x0

    invoke-virtual {p0, v1, v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 5055
    .end local v5    # "userId":I
    .end local v6    # "userData":Lcom/android/server/inputmethod/UserData;
    monitor-exit v4

    .line 5056
    return v2

    .line 5055
    :catchall_8
    move-exception v1

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x40b -> :sswitch_b
        0x424 -> :sswitch_a
        0x425 -> :sswitch_9
        0x442 -> :sswitch_8
        0x44c -> :sswitch_7
        0x456 -> :sswitch_6
        0x460 -> :sswitch_5
        0x46a -> :sswitch_4
        0xbd6 -> :sswitch_3
        0xfa0 -> :sswitch_2
        0x1392 -> :sswitch_1
        0x1b58 -> :sswitch_0
    .end sparse-switch
.end method

.method hideCurrentInputInternal(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z
    .locals 13
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 3264
    const-string v0, "IMMS.hideCurrentInputInternal"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3265
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v3, "InputMethodManagerService#hideSoftInput"

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 3267
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    .line 3268
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result v0

    move v10, v0

    .line 3269
    .local v10, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-wide v11, v4

    .line 3271
    .local v11, "ident":J
    :try_start_1
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v4, "Client requesting input be hidden"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3272
    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v5, "windowToken":Landroid/os/IBinder;
    .local v6, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :try_start_2
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;II)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3276
    :try_start_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3277
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3

    .line 3272
    return p1

    .line 3279
    .end local v10    # "userId":I
    .end local v11    # "ident":J
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 3276
    .restart local v10    # "userId":I
    .restart local v11    # "ident":J
    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v5    # "windowToken":Landroid/os/IBinder;
    .end local v6    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    .restart local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :catchall_2
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move-object p1, v0

    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v5    # "windowToken":Landroid/os/IBinder;
    .restart local v6    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_0
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3277
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3278
    nop

    .end local v5    # "windowToken":Landroid/os/IBinder;
    .end local v6    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    throw p1

    .line 3279
    .end local v10    # "userId":I
    .end local v11    # "ident":J
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    .restart local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :catchall_3
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move-object p1, v0

    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local v5    # "windowToken":Landroid/os/IBinder;
    .restart local v6    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;II)Z
    .locals 11
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p3, "flags"    # I
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p5, "reason"    # I
    .param p6, "userId"    # I

    .line 3717
    move/from16 v5, p6

    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v6

    .line 3718
    .local v6, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v7, v6, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 3719
    .local v7, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    iget-object v8, v6, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 3720
    .local v8, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    invoke-virtual {v8, p2, p3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->canHideIme(Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3721
    return v1

    .line 3732
    :cond_0
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v9

    .line 3733
    .local v9, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v9, :cond_2

    .line 3734
    invoke-virtual {v8}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->isInputShown()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 3735
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->getImeWindowVis()I

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    move v10, v2

    .line 3737
    .local v10, "shouldHideSoftInput":Z
    invoke-virtual {v8, p1, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->requestImeVisibility(Landroid/os/IBinder;Z)V

    .line 3738
    const/16 v0, 0xa

    if-eqz v10, :cond_3

    .line 3743
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3744
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->performHideIme(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;Landroid/os/ResultReceiver;II)V

    goto :goto_1

    .line 3747
    :cond_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3749
    :goto_1
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->setCurrentMethodNotVisible()V

    .line 3750
    invoke-virtual {v8}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->clearImeShowFlags()V

    .line 3752
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/16 v3, 0x8

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3754
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 3755
    return v10
.end method

.method public hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z
    .locals 12
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p4, "flags"    # I
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p6, "reason"    # I
    .param p7, "async"    # Z

    .line 3633
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManagerService#hideSoftInput"

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 3635
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 3636
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v9, v0

    .line 3637
    .local v9, "uid":I
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3638
    .local v0, "callingUserId":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(ILcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3639
    .local v10, "userId":I
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    :try_start_1
    invoke-direct/range {v2 .. v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideSoftInputLocked(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;III)Z

    move-result v11

    .line 3643
    .local v11, "result":Z
    if-nez v11, :cond_0

    .line 3644
    move-object/from16 v7, p5

    invoke-direct {p0, v7, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendResultReceiverFailureLocked(Landroid/os/ResultReceiver;I)V

    goto :goto_0

    .line 3647
    .end local v0    # "callingUserId":I
    .end local v9    # "uid":I
    .end local v10    # "userId":I
    .end local v11    # "result":Z
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3643
    .restart local v0    # "callingUserId":I
    .restart local v9    # "uid":I
    .restart local v10    # "userId":I
    .restart local v11    # "result":Z
    :cond_0
    move-object/from16 v7, p5

    .line 3646
    :goto_0
    monitor-exit v1

    return v11

    .line 3647
    .end local v0    # "callingUserId":I
    .end local v9    # "uid":I
    .end local v10    # "userId":I
    .end local v11    # "result":Z
    :catchall_1
    move-exception v0

    move-object/from16 v7, p5

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hideSoftInputFromServerForTest()V
    .locals 7

    .line 3695
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3696
    .local v0, "callingUserId":I
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 3697
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v2

    .line 3698
    .local v2, "userId":I
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v3

    .line 3699
    .local v3, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v4, v3, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v4, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;III)Z

    .line 3701
    nop

    .end local v2    # "userId":I
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    monitor-exit v1

    .line 3702
    return-void

    .line 3701
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method initializeImeLocked(Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .locals 4
    .param p1, "inputMethod"    # Lcom/android/server/inputmethod/IInputMethodInvoker;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "bindingController"    # Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2426
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 2427
    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 2426
    const-string v2, "Sending attach of token: %s for display: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2428
    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result v0

    .line 2429
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    .line 2430
    .local v1, "userData":Lcom/android/server/inputmethod/UserData;
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;

    invoke-direct {v2, p0, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)V

    .line 2432
    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked(Lcom/android/server/inputmethod/UserData;)I

    move-result v3

    .line 2430
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->initializeInternal(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;I)V

    .line 2433
    return-void
.end method

.method public isImeTraceEnabled()Z
    .locals 1

    .line 4715
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isInputMethodPickerShownForTest()Z
    .locals 2

    .line 4165
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4166
    nop

    .line 4167
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuControllerNew:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->isShowing()Z

    move-result v1

    .line 4168
    monitor-exit v0

    .line 4166
    return v1

    .line 4169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isStylusHandwritingAvailableAsUser(IZ)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "connectionless"    # Z

    .line 1699
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1700
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    :cond_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1705
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusHandwritingEnabled(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1706
    monitor-exit v0

    return v2

    .line 1721
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1710
    :cond_1
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    const/4 v3, 0x1

    if-ne p1, v1, :cond_4

    .line 1711
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v1

    .line 1712
    .local v1, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result v4

    nop

    if-eqz v4, :cond_3

    if-eqz p2, :cond_2

    .line 1714
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsConnectionlessStylusHandwriting()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    nop

    :goto_0
    monitor-exit v0

    .line 1712
    return v2

    .line 1716
    .end local v1    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :cond_4
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    .line 1717
    .local v1, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v4

    .line 1718
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    .line 1717
    invoke-virtual {v4, v5}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v4

    .line 1719
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->supportsStylusHandwriting()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz p2, :cond_5

    .line 1720
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->supportsConnectionlessStylusHandwriting()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    nop

    :goto_1
    monitor-exit v0

    .line 1719
    return v2

    .line 1721
    .end local v1    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onActionLocaleChanged(Landroid/os/LocaleList;Landroid/os/LocaleList;)V
    .locals 11
    .param p1, "prevLocales"    # Landroid/os/LocaleList;
    .param p2, "newLocales"    # Landroid/os/LocaleList;

    .line 767
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo v1, "onActionLocaleChanged prev=%s new=%s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 769
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 770
    monitor-exit v0

    return-void

    .line 791
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 772
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v1, v4

    .line 776
    .local v5, "userId":I
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v6

    .line 777
    .local v6, "userData":Lcom/android/server/inputmethod/UserData;
    invoke-static {v5}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v7

    .line 778
    .local v7, "additionalSubtypeMap":Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryRawInputMethodServiceMap(Landroid/content/Context;I)Lcom/android/server/inputmethod/RawInputMethodMap;

    move-result-object v8

    .line 779
    .local v8, "rawMethodMap":Lcom/android/server/inputmethod/RawInputMethodMap;
    iget-object v9, v6, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 780
    iget-object v9, v6, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 782
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    .line 780
    invoke-virtual {v8, v7, v3, v9}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v9

    .line 783
    .local v9, "methodMap":Lcom/android/server/inputmethod/InputMethodMap;
    invoke-static {v9, v5}, Lcom/android/server/inputmethod/InputMethodSettings;->create(Lcom/android/server/inputmethod/InputMethodMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v10

    .line 784
    .local v10, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-static {v5, v10}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    .line 786
    .end local v6    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v7    # "additionalSubtypeMap":Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .end local v8    # "rawMethodMap":Lcom/android/server/inputmethod/RawInputMethodMap;
    .end local v9    # "methodMap":Lcom/android/server/inputmethod/InputMethodMap;
    .end local v10    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(ZI)V

    .line 788
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;I)V

    .line 789
    invoke-virtual {p0, v6, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(ZI)V

    .line 772
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 791
    :cond_1
    monitor-exit v0

    .line 792
    return-void

    .line 791
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onApplyImeVisibilityFromComputerLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;I)V
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p3, "result"    # Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;
    .param p4, "userId"    # I

    .line 4909
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    invoke-virtual {p3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getState()I

    move-result v3

    .line 4910
    invoke-virtual {p3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getReason()I

    move-result v4

    .line 4909
    move-object v1, p1

    move-object v2, p2

    move v5, p4

    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .end local p4    # "userId":I
    .local v1, "windowToken":Landroid/os/IBinder;
    .local v2, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .local v5, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)V

    .line 4911
    return-void
.end method

.method public onImeSwitchButtonClickFromSystem(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 4177
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4178
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result v1

    .line 4179
    .local v1, "userId":I
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    .line 4181
    .local v2, "userData":Lcom/android/server/inputmethod/UserData;
    invoke-direct {p0, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->onImeSwitchButtonClickLocked(ILcom/android/server/inputmethod/UserData;)V

    .line 4182
    .end local v1    # "userId":I
    .end local v2    # "userData":Lcom/android/server/inputmethod/UserData;
    monitor-exit v0

    .line 4183
    return-void

    .line 4182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onSessionCreated(Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/view/InputChannel;I)V
    .locals 13
    .param p1, "method"    # Lcom/android/server/inputmethod/IInputMethodInvoker;
    .param p2, "session"    # Lcom/android/internal/inputmethod/IInputMethodSession;
    .param p3, "channel"    # Landroid/view/InputChannel;
    .param p4, "userId"    # I

    .line 2463
    move/from16 v5, p4

    const-string v0, "IMMS.onSessionCreated"

    const-wide/16 v6, 0x20

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2465
    :try_start_0
    const-class v8, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2466
    :try_start_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v0, :cond_0

    .line 2469
    invoke-virtual/range {p3 .. p3}, Landroid/view/InputChannel;->dispose()V

    .line 2470
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2496
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2470
    return-void

    .line 2491
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 2472
    :cond_0
    :try_start_2
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    move-object v9, v0

    .line 2473
    .local v9, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v0, v9, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    move-object v10, v0

    .line 2474
    .local v10, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    move-object v11, v0

    .line 2475
    .local v11, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v11, :cond_2

    if-eqz p1, :cond_2

    .line 2476
    invoke-virtual {v11}, Lcom/android/server/inputmethod/IInputMethodInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 2477
    iget-object v0, v9, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v0, :cond_2

    .line 2478
    iget-object v0, v9, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 2479
    iget-object v12, v9, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v1, v9, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/view/InputChannel;I)V

    iput-object v0, v12, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2481
    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZI)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v2

    .line 2483
    .local v2, "res":Lcom/android/internal/inputmethod/InputBindResult;
    invoke-direct {p0, v1, v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IZI)V

    .line 2485
    iget-object v0, v2, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v0, :cond_1

    .line 2486
    iget-object v0, v9, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindMethod(Lcom/android/internal/inputmethod/InputBindResult;)V

    .line 2488
    :cond_1
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2496
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2488
    return-void

    .line 2491
    .end local v2    # "res":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v9    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v10    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v11    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :cond_2
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2494
    :try_start_4
    invoke-virtual/range {p3 .. p3}, Landroid/view/InputChannel;->dispose()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2496
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2497
    nop

    .line 2498
    return-void

    .line 2496
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 2491
    :goto_0
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "method":Lcom/android/server/inputmethod/IInputMethodInvoker;
    .end local p2    # "session":Lcom/android/internal/inputmethod/IInputMethodSession;
    .end local p3    # "channel":Landroid/view/InputChannel;
    .end local p4    # "userId":I
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2496
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "method":Lcom/android/server/inputmethod/IInputMethodInvoker;
    .restart local p2    # "session":Lcom/android/internal/inputmethod/IInputMethodSession;
    .restart local p3    # "channel":Landroid/view/InputChannel;
    .restart local p4    # "userId":I
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2497
    throw v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;Landroid/os/Binder;)V
    .locals 9
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p7, "self"    # Landroid/os/Binder;

    .line 6346
    move-object v7, p6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 6348
    .local v8, "callingUid":I
    if-eqz v8, :cond_2

    const/16 v0, 0x7d0

    if-eq v8, v0, :cond_2

    .line 6352
    if-eqz v7, :cond_0

    .line 6353
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p6, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 6355
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputMethodManagerService does not support shell commands from non-shell users. callingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6357
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6358
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-static {v8}, Landroid/os/Process;->isCoreUid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6360
    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6361
    return-void

    .line 6363
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6365
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v1, p7

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 6367
    return-void
.end method

.method onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V
    .locals 20
    .param p1, "show"    # Z
    .param p2, "requestImeToken"    # Landroid/os/IBinder;
    .param p3, "reason"    # I
    .param p4, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p5, "userId"    # I

    .line 4843
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v13, p5

    invoke-virtual {v0, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v14

    .line 4844
    .local v14, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v15, v14, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 4845
    .local v15, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    move-object/from16 v2, p2

    invoke-virtual {v15, v2, v13}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowTokenFrom(Landroid/os/IBinder;I)Landroid/os/IBinder;

    move-result-object v3

    .line 4847
    .local v3, "requestToken":Landroid/os/IBinder;
    iget-object v4, v14, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4848
    .local v4, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v6, v14, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v6, v6, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 4851
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v7

    .line 4849
    move/from16 v8, p1

    invoke-virtual {v5, v8, v6, v3, v7}, Lcom/android/server/wm/WindowManagerInternal;->onToggleImeRequested(ZLandroid/os/IBinder;Landroid/os/IBinder;I)Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;

    move-result-object v5

    .line 4852
    .local v5, "info":Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;
    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    new-instance v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;

    iget-object v7, v14, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v7, v7, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v9, v14, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v9, v9, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v10, v5, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->focusedWindowName:Ljava/lang/String;

    iget-object v11, v14, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget v11, v11, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    iget-boolean v8, v14, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    move-object v12, v4

    move-object v4, v9

    .end local v4    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .local v12, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    iget-object v9, v5, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->requestWindowName:Ljava/lang/String;

    move-object/from16 v16, v10

    iget-object v10, v5, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeControlTargetName:Ljava/lang/String;

    move-object/from16 v17, v6

    move v6, v11

    iget-object v11, v5, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeLayerTargetName:Ljava/lang/String;

    move-object/from16 v18, v12

    .end local v12    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .local v18, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    iget-object v12, v5, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeSurfaceParentName:Ljava/lang/String;

    move-object/from16 v19, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v14

    move-object v14, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v3

    move-object v3, v7

    move/from16 v7, p3

    .end local v3    # "requestToken":Landroid/os/IBinder;
    .end local v5    # "info":Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;
    .end local v15    # "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .local v14, "info":Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;
    .local v16, "requestToken":Landroid/os/IBinder;
    .local v17, "userData":Lcom/android/server/inputmethod/UserData;
    .local v19, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    invoke-direct/range {v2 .. v13}, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;-><init>(Lcom/android/server/inputmethod/ClientState;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v15, v2}, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->addEntry(Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;)V

    .line 4860
    if-eqz v1, :cond_0

    .line 4861
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    iget-object v3, v14, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->requestWindowName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/inputmethod/ImeTrackerService;->onImmsUpdate(Landroid/view/inputmethod/ImeTracker$Token;Ljava/lang/String;)V

    .line 4863
    :cond_0
    return-void
.end method

.method onUnbindCurrentMethodByReset(I)V
    .locals 11
    .param p1, "userId"    # I

    .line 1933
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 1934
    .local v0, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 1935
    .local v1, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowStateOrNull(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    move-result-object v2

    .line 1937
    .local v2, "winState":Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->isRequestedImeVisible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1938
    invoke-virtual {v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->isInputShown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1946
    const/4 v3, 0x0

    const/16 v4, 0x32

    invoke-direct {p0, v3, v4, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v7

    .line 1948
    .local v7, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    iget-object v3, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v6, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, p1

    .end local p1    # "userId":I
    .local v10, "userId":I
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)V

    goto :goto_0

    .line 1938
    .end local v7    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .end local v10    # "userId":I
    .restart local p1    # "userId":I
    :cond_0
    move v10, p1

    .end local p1    # "userId":I
    .restart local v10    # "userId":I
    goto :goto_0

    .line 1937
    .end local v10    # "userId":I
    .restart local p1    # "userId":I
    :cond_1
    move v10, p1

    .line 1952
    .end local p1    # "userId":I
    .restart local v10    # "userId":I
    :goto_0
    return-void
.end method

.method onUserReadyLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 1556
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1557
    return-void

    .line 1560
    :cond_0
    const-string v0, "default_input_method"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1562
    .local v0, "defaultImiId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 1563
    .local v1, "imeSelectedOnBoot":Z
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    .line 1564
    .local v3, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    if-nez v1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v4, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(ZI)V

    .line 1566
    invoke-virtual {p0, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(ZI)V

    .line 1567
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1568
    invoke-static {v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1567
    invoke-static {v2, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 1569
    return-void
.end method

.method postInputMethodSettingUpdatedLocked(ZI)V
    .locals 12
    .param p1, "resetDefaultEnabledIme"    # Z
    .param p2, "userId"    # I

    .line 5338
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 5339
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 5338
    const-string v2, "--- re-buildInputMethodList reset = %s \n ------ caller=%s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5340
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const-string v1, "InputMethodManagerService"

    if-nez v0, :cond_0

    .line 5341
    const-string v0, "buildInputMethodListLocked is not allowed until system is ready"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5342
    return-void

    .line 5345
    :cond_0
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 5347
    .local v0, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    const/4 v2, 0x0

    .line 5349
    .local v2, "reenableMinimumNonAuxSystemImes":Z
    const/4 v3, 0x0

    if-nez p1, :cond_4

    .line 5350
    const/4 v4, 0x0

    .line 5351
    .local v4, "enabledImeFound":Z
    const/4 v5, 0x0

    .line 5352
    .local v5, "enabledNonAuxImeFound":Z
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v6

    .line 5353
    .local v6, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 5354
    .local v7, "numImes":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 5355
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 5356
    .local v9, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v10

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/inputmethod/InputMethodMap;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 5357
    const/4 v4, 0x1

    .line 5358
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v10

    if-nez v10, :cond_1

    .line 5359
    const/4 v5, 0x1

    .line 5360
    goto :goto_1

    .line 5354
    .end local v9    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 5364
    .end local v8    # "i":I
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 5365
    sget-object v8, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v9, "All the enabled IMEs are gone. Reset default enabled IMEs."

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5367
    const/4 p1, 0x1

    .line 5368
    const-string v8, ""

    invoke-direct {p0, v8, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;I)V

    goto :goto_2

    .line 5369
    :cond_3
    if-nez v5, :cond_4

    .line 5370
    sget-object v8, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v9, "All the enabled non-Aux IMEs are gone. Do partial reset."

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5371
    const/4 v2, 0x1

    .line 5375
    .end local v4    # "enabledImeFound":Z
    .end local v5    # "enabledNonAuxImeFound":Z
    .end local v6    # "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v7    # "numImes":I
    :cond_4
    :goto_2
    const/4 v4, 0x1

    if-nez p1, :cond_5

    if-eqz v2, :cond_6

    .line 5376
    :cond_5
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5377
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 5379
    .local v5, "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5380
    .local v6, "numImes":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v6, :cond_6

    .line 5381
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 5382
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    sget-object v9, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v10, "--- enable ime = %s"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5383
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v4, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    .line 5380
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 5387
    .end local v5    # "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v6    # "numImes":I
    .end local v7    # "i":I
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    .line 5388
    .local v5, "defaultImiId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 5389
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/inputmethod/InputMethodMap;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 5390
    const-string v6, "Default IME is uninstalled. Choose new default IME."

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5391
    invoke-direct {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5392
    invoke-virtual {p0, v4, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    goto :goto_4

    .line 5396
    :cond_7
    invoke-direct {p0, v5, v4, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    .line 5400
    :cond_8
    :goto_4
    invoke-direct {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateDefaultVoiceImeIfNeededLocked(I)V

    .line 5402
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    .line 5403
    .local v1, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v4, v1, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)V

    .line 5404
    iget-object v4, v1, Lcom/android/server/inputmethod/UserData;->mHardwareKeyboardShortcutController:Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    invoke-virtual {v4, v0}, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->update(Lcom/android/server/inputmethod/InputMethodSettings;)V

    .line 5406
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V

    .line 5409
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object v4

    .line 5410
    .local v4, "inputMethodList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x1392

    invoke-virtual {v6, v7, p2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 5411
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 5412
    return-void
.end method

.method public prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "userId"    # I
    .param p3, "delegatePackageName"    # Ljava/lang/String;
    .param p4, "delegatorPackageName"    # Ljava/lang/String;

    .line 3429
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusHandwritingEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3430
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not prepare stylus handwriting delegation. Stylus handwriting pref is disabled for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    return-void

    .line 3434
    :cond_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3435
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {v1, p1, p4}, Lcom/android/server/inputmethod/ClientController;->verifyClientAndPackageMatch(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3440
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3441
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->schedulePrepareStylusHandwritingDelegation(ILjava/lang/String;Ljava/lang/String;)V

    .line 3443
    return-void

    .line 3440
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 3437
    :cond_1
    :try_start_1
    const-string v1, "InputMethodManagerService"

    const-string/jumbo v2, "prepareStylusHandwritingDelegation() fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3438
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Delegator doesn\'t match Uid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local p2    # "userId":I
    .end local p3    # "delegatePackageName":Ljava/lang/String;
    .end local p4    # "delegatorPackageName":Ljava/lang/String;
    throw v1

    .line 3440
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .restart local p2    # "userId":I
    .restart local p3    # "delegatePackageName":Ljava/lang/String;
    .restart local p4    # "delegatorPackageName":Ljava/lang/String;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method reRequestCurrentClientSessionLocked(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 2525
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 2526
    .local v0, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v1, :cond_0

    .line 2527
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 2528
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 2529
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/ClientState;I)V

    .line 2530
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 2532
    :cond_0
    return-void
.end method

.method registerImeRequestedChangedListener()V
    .locals 2

    .line 1572
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->setOnImeRequestedChangedListener(Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;)V

    .line 1589
    return-void
.end method

.method public removeImeSurface(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 4480
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x424

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4481
    return-void
.end method

.method public removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 4487
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x425

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4488
    return-void
.end method

.method public reportPerceptibleAsync(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "perceptible"    # Z

    .line 3526
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 3540
    return-void
.end method

.method requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V
    .locals 3
    .param p1, "cs"    # Lcom/android/server/inputmethod/ClientState;

    .line 2592
    iget-boolean v0, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    if-nez v0, :cond_1

    .line 2593
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v1, "Creating new accessibility sessions for client %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2594
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    .line 2595
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2596
    .local v0, "ignoreSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2597
    iget-object v2, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2596
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2599
    .end local v1    # "i":I
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/AccessibilityManagerInternal;->createImeSession(Landroid/util/ArraySet;)V

    .line 2601
    .end local v0    # "ignoreSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method

.method requestClientSessionLocked(Lcom/android/server/inputmethod/ClientState;I)V
    .locals 7
    .param p1, "cs"    # Lcom/android/server/inputmethod/ClientState;
    .param p2, "userIdInt"    # I

    .line 2543
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_DUAL_APPS_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtDualAppsService;

    .line 2544
    invoke-interface {v0, p2}, Lcom/nothing/server/ext/INtDualAppsService;->isDualAppsUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2545
    const/4 v0, 0x0

    .local v0, "userId":I
    goto :goto_0

    .line 2547
    .end local v0    # "userId":I
    :cond_0
    move v0, p2

    .line 2551
    .restart local v0    # "userId":I
    :goto_0
    iget-boolean v1, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    if-nez v1, :cond_2

    .line 2552
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v2, "Creating new session for client %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2556
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ClientState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v1

    .line 2557
    .local v1, "channels":[Landroid/view/InputChannel;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 2558
    .local v2, "serverChannel":Landroid/view/InputChannel;
    const/4 v3, 0x1

    aget-object v1, v1, v3

    .line 2561
    .local v1, "clientChannel":Landroid/view/InputChannel;
    iput-boolean v3, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    .line 2563
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v3

    .line 2564
    .local v3, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v4

    .line 2565
    .local v4, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$2;

    invoke-direct {v5, p0, v4, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/view/InputChannel;I)V

    .line 2579
    .local v5, "callback":Lcom/android/internal/inputmethod/IInputMethodSessionCallback$Stub;
    :try_start_0
    invoke-virtual {v4, v1, v5}, Lcom/android/server/inputmethod/IInputMethodInvoker;->createSession(Landroid/view/InputChannel;Lcom/android/internal/inputmethod/IInputMethodSessionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2583
    if-eqz v1, :cond_2

    .line 2584
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    goto :goto_1

    .line 2583
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_1

    .line 2584
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 2586
    :cond_1
    throw v6

    .line 2588
    .end local v1    # "clientChannel":Landroid/view/InputChannel;
    .end local v2    # "serverChannel":Landroid/view/InputChannel;
    .end local v3    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v4    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    .end local v5    # "callback":Lcom/android/internal/inputmethod/IInputMethodSessionCallback$Stub;
    :cond_2
    :goto_1
    return-void
.end method

.method resetCurrentMethodAndClientLocked(II)V
    .locals 2
    .param p1, "unbindClientReason"    # I
    .param p2, "userId"    # I

    .line 2513
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    .line 2514
    .local v0, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->setSelectedMethodId(Ljava/lang/String;)V

    .line 2518
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUnbindCurrentMethodByReset(I)V

    .line 2519
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 2520
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V

    .line 2521
    return-void
.end method

.method resetSystemUiLocked(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .locals 4
    .param p1, "bindingController"    # Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2503
    const/4 v0, 0x0

    .line 2504
    .local v0, "imeWindowVis":I
    const/4 v1, 0x0

    .line 2505
    .local v1, "backDisposition":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->setImeWindowVis(I)V

    .line 2506
    invoke-virtual {p1, v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->setBackDisposition(I)V

    .line 2507
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result v3

    invoke-direct {p0, v2, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    .line 2508
    return-void
.end method

.method scheduleNotifyImeUidToAudioService(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 2455
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2456
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2457
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2458
    return-void
.end method

.method schedulePrepareStylusHandwritingDelegation(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "delegatePackageName"    # Ljava/lang/String;
    .param p3, "delegatorPackageName"    # Ljava/lang/String;

    .line 2443
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x46a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2445
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2446
    return-void
.end method

.method scheduleRemoveStylusHandwritingWindow()V
    .locals 2

    .line 2450
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x460

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2451
    return-void
.end method

.method scheduleResetStylusHandwriting()V
    .locals 2

    .line 2437
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x442

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2438
    return-void
.end method

.method scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "clientToBeReset"    # Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 1244
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v0, :cond_1

    .line 1245
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    if-ne v0, p1, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    iput-object p2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mClientToBeReset:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 1247
    return-void

    .line 1249
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1253
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 1254
    .local v0, "userData":Lcom/android/server/inputmethod/UserData;
    nop

    .line 1255
    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    .line 1257
    .local v1, "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 1258
    .end local v1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    nop

    .line 1262
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 1264
    .local v1, "task":Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    .line 1265
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1266
    return-void
.end method

.method sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V
    .locals 3
    .param p1, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 5423
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5424
    .local v0, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    .line 5425
    .local v1, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-nez v1, :cond_0

    .line 5427
    return-void

    .line 5429
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked(Lcom/android/server/inputmethod/UserData;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->onNavButtonFlagsChanged(I)V

    .line 5430
    return-void
.end method

.method sendOnNavButtonFlagsChangedToAllImesLocked()V
    .locals 5

    .line 5416
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 5417
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V

    .line 5416
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5419
    :cond_0
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    .locals 16
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;
    .param p3, "userId"    # I

    .line 4365
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 4366
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4369
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 4373
    .local v11, "callingUid":I
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v2, :cond_2

    :cond_1
    goto/16 :goto_4

    .line 4374
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4375
    .local v8, "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    array-length v0, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_4

    aget-object v6, v2, v5

    .line 4376
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 4377
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4379
    :cond_3
    const-string v7, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicated subtype definition found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4380
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4379
    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4375
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4383
    :cond_4
    invoke-virtual {v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v5

    .line 4384
    .local v5, "userData":Lcom/android/server/inputmethod/UserData;
    const-class v12, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v12

    .line 4385
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_5

    .line 4386
    monitor-exit v12

    return-void

    .line 4408
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 4389
    :cond_5
    invoke-static {v3}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v9

    .line 4390
    .local v9, "additionalSubtypeMap":Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v6

    .line 4391
    .local v6, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/inputmethod/InputMethodSettings;->getNewAdditionalSubtypeMap(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/inputmethod/AdditionalSubtypeMap;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v0

    move-object v7, v0

    .line 4393
    .local v7, "newAdditionalSubtypeMap":Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    if-eq v9, v7, :cond_6

    .line 4394
    nop

    .line 4395
    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v0

    .line 4394
    invoke-static {v3, v7, v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->putAndSave(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V

    .line 4396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4398
    .local v13, "ident":J
    :try_start_1
    iget-object v0, v5, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/RawInputMethodMap;

    .line 4399
    invoke-static {v3}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v10

    iget-object v15, v5, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4400
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v15

    .line 4398
    invoke-virtual {v0, v10, v4, v15}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v0

    .line 4401
    .local v0, "methodMap":Lcom/android/server/inputmethod/InputMethodMap;
    invoke-static {v0, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->create(Lcom/android/server/inputmethod/InputMethodMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v10

    .line 4402
    .local v10, "newSettings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-static {v3, v10}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    .line 4403
    invoke-virtual {v1, v4, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4405
    .end local v0    # "methodMap":Lcom/android/server/inputmethod/InputMethodMap;
    .end local v10    # "newSettings":Lcom/android/server/inputmethod/InputMethodSettings;
    :try_start_2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4406
    goto :goto_2

    .line 4405
    :catchall_1
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4406
    nop

    .end local v5    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v8    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v11    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "imiId":Ljava/lang/String;
    .end local p2    # "subtypes":[Landroid/view/inputmethod/InputMethodSubtype;
    .end local p3    # "userId":I
    throw v0

    .line 4408
    .end local v6    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .end local v7    # "newAdditionalSubtypeMap":Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .end local v9    # "additionalSubtypeMap":Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .end local v13    # "ident":J
    .restart local v5    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v8    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v11    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "imiId":Ljava/lang/String;
    .restart local p2    # "subtypes":[Landroid/view/inputmethod/InputMethodSubtype;
    .restart local p3    # "userId":I
    :cond_6
    :goto_2
    monitor-exit v12

    .line 4409
    return-void

    .line 4408
    :goto_3
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4373
    .end local v5    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v8    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_4
    return-void
.end method

.method setEnabledSessionForAccessibilityLocked(Landroid/util/SparseArray;Lcom/android/server/inputmethod/UserData;)V
    .locals 6
    .param p2, "userData"    # Lcom/android/server/inputmethod/UserData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;",
            ">;",
            "Lcom/android/server/inputmethod/UserData;",
            ")V"
        }
    .end annotation

    .line 4935
    .local p1, "accessibilitySessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4936
    .local v0, "disabledSessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4937
    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4938
    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 4939
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 4940
    .local v2, "sessionState":Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;
    if-eqz v2, :cond_0

    .line 4941
    iget-object v3, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 4936
    .end local v2    # "sessionState":Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 4946
    .end local v1    # "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4947
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/AccessibilityManagerInternal;->setImeSessionEnabled(Landroid/util/SparseArray;Z)V

    .line 4950
    :cond_2
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 4951
    .local v1, "enabledSessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 4952
    iget-object v3, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4953
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 4954
    .local v3, "sessionState":Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;
    if-eqz v3, :cond_3

    .line 4955
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 4951
    .end local v3    # "sessionState":Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 4959
    .end local v2    # "i":I
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 4960
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/server/AccessibilityManagerInternal;->setImeSessionEnabled(Landroid/util/SparseArray;Z)V

    .line 4963
    :cond_5
    iput-object p1, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 4964
    return-void
.end method

.method setEnabledSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;Lcom/android/server/inputmethod/UserData;)V
    .locals 4
    .param p1, "session"    # Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;
    .param p2, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 4915
    iget-object v0, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eq v0, p1, :cond_1

    .line 4916
    iget-object v0, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v0, :cond_0

    .line 4917
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4918
    iget-object v0, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->setSessionEnabled(Lcom/android/internal/inputmethod/IInputMethodSession;Z)V

    .line 4921
    :cond_0
    iput-object p1, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 4922
    iget-object v0, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v0, :cond_1

    .line 4923
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabling: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4924
    iget-object v0, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->setSessionEnabled(Lcom/android/internal/inputmethod/IInputMethodSession;Z)V

    .line 4928
    :cond_1
    return-void
.end method

.method public setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    .locals 8
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "subtypeHashCodes"    # [I
    .param p3, "userId"    # I

    .line 4414
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p3, :cond_0

    .line 4415
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4418
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4420
    .local v0, "callingUid":I
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 4421
    .local v1, "imeComponentName":Landroid/content/ComponentName;
    :cond_1
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 4422
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4421
    invoke-static {v2, v0, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/content/pm/PackageManagerInternal;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4426
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4428
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4430
    .local v2, "ident":J
    :try_start_0
    const-class v4, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4431
    :try_start_1
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v5

    .line 4432
    .local v5, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-virtual {v5, p1, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->setEnabledInputMethodSubtypes(Ljava/lang/String;[I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4433
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4441
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4433
    return-void

    .line 4439
    .end local v5    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    :catchall_0
    move-exception v5

    goto :goto_0

    .line 4436
    .restart local v5    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    :cond_2
    :try_start_2
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v6

    .line 4437
    .local v6, "userData":Lcom/android/server/inputmethod/UserData;
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    .line 4438
    const/4 v7, 0x0

    invoke-virtual {p0, v7, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    .line 4439
    .end local v5    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .end local v6    # "userData":Lcom/android/server/inputmethod/UserData;
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4441
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4442
    nop

    .line 4443
    return-void

    .line 4439
    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "callingUid":I
    .end local v1    # "imeComponentName":Landroid/content/ComponentName;
    .end local v2    # "ident":J
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "imeId":Ljava/lang/String;
    .end local p2    # "subtypeHashCodes":[I
    .end local p3    # "userId":I
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4441
    .restart local v0    # "callingUid":I
    .restart local v1    # "imeComponentName":Landroid/content/ComponentName;
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "imeId":Ljava/lang/String;
    .restart local p2    # "subtypeHashCodes":[I
    .restart local p3    # "userId":I
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4442
    throw v4

    .line 4423
    .end local v2    # "ident":J
    :cond_3
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling UID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not belong to imeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "userData"    # Lcom/android/server/inputmethod/UserData;
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 6800
    nop

    .line 6801
    iget-object v0, p2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v0, :cond_1

    .line 6802
    iget-object v0, p2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 6806
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImeVisibilityOnFocusedWindowClient visible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; callers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6808
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 6810
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0x39

    invoke-interface {v0, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 6813
    const/4 v0, 0x0

    return v0
.end method

.method setInputMethodLocked(Ljava/lang/String;II)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtypeIndex"    # I
    .param p3, "userId"    # I

    .line 3082
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;III)V

    .line 3083
    return-void
.end method

.method setInputMethodLocked(Ljava/lang/String;III)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtypeIndex"    # I
    .param p3, "deviceId"    # I
    .param p4, "userId"    # I

    .line 3087
    invoke-static {p4}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 3088
    .local v0, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    .line 3089
    .local v1, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_9

    .line 3093
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v2

    .line 3095
    .local v2, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3096
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    .line 3097
    .local v3, "subtypeCount":I
    if-gtz v3, :cond_0

    .line 3098
    const/4 v4, 0x0

    invoke-direct {p0, p4, v1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyInputMethodSubtypeChangedLocked(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3099
    return-void

    .line 3101
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    .line 3103
    .local v4, "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-ltz p2, :cond_1

    if-ge p2, v3, :cond_1

    .line 3104
    invoke-virtual {v1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .local v5, "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_1

    .line 3108
    .end local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    const/4 p2, -0x1

    .line 3110
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 3111
    .restart local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v5, :cond_3

    .line 3112
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_3

    .line 3113
    invoke-virtual {v1, v6}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3114
    move p2, v6

    .line 3115
    goto :goto_1

    .line 3112
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3120
    .end local v6    # "i":I
    :cond_3
    :goto_1
    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 3121
    const/4 v6, 0x1

    invoke-direct {p0, v1, p2, v6, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V

    .line 3122
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v6

    .line 3123
    .local v6, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v6, :cond_4

    .line 3124
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getImeWindowVis()I

    move-result v7

    .line 3125
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v8

    .line 3124
    invoke-direct {p0, v7, v8, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    .line 3126
    invoke-virtual {v6, v5}, Lcom/android/server/inputmethod/IInputMethodInvoker;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3129
    .end local v6    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :cond_4
    return-void

    .line 3133
    .end local v3    # "subtypeCount":I
    .end local v4    # "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v5    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDeviceIdToShowIme()I

    move-result v3

    if-eqz v3, :cond_6

    if-nez p3, :cond_6

    .line 3139
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    .line 3140
    return-void

    .line 3142
    :cond_6
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v3

    .line 3143
    .local v3, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v3, :cond_7

    .line 3144
    invoke-virtual {v3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->removeStylusHandwritingWindow()V

    .line 3146
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3148
    .local v4, "ident":J
    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, v1, p2, v6, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V

    .line 3152
    invoke-virtual {v2, p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->setSelectedMethodId(Ljava/lang/String;)V

    .line 3154
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v6}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3155
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3156
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v7, 0x20000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3157
    const-string/jumbo v7, "input_method_id"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3158
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 3163
    .end local v6    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v6

    goto :goto_3

    .line 3160
    :cond_8
    :goto_2
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 3161
    const/4 v6, 0x2

    invoke-virtual {p0, v6, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3163
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3164
    nop

    .line 3165
    return-void

    .line 3163
    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3164
    throw v6

    .line 3090
    .end local v2    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v3    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    .end local v4    # "ident":J
    :cond_9
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getExceptionForUnknownImeId(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    .locals 9
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "timeout"    # J

    .line 4625
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4626
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 4627
    .local v7, "callingUserId":I
    const-class v8, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v8

    .line 4628
    :try_start_0
    invoke-direct {p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v6

    .line 4629
    .local v6, "userId":I
    const-string/jumbo v4, "setStylusWindowIdleTimeoutForTest"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    .end local p1    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .local v3, "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4631
    monitor-exit v8

    return-void

    .line 4640
    .end local v6    # "userId":I
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 4633
    .restart local v6    # "userId":I
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v4, v0

    .line 4635
    .local v4, "ident":J
    :try_start_2
    sget-object p1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v0, "Setting stylus window idle timeout"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4636
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->setStylusWindowIdleTimeoutForTest(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4638
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4639
    nop

    .line 4640
    .end local v4    # "ident":J
    .end local v6    # "userId":I
    monitor-exit v8

    .line 4641
    return-void

    .line 4638
    .restart local v4    # "ident":J
    .restart local v6    # "userId":I
    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4639
    nop

    .end local v2    # "uid":I
    .end local v3    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local v7    # "callingUserId":I
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p2    # "timeout":J
    throw p1

    .line 4640
    .end local v4    # "ident":J
    .end local v6    # "userId":I
    .restart local v2    # "uid":I
    .restart local v7    # "callingUserId":I
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .restart local p2    # "timeout":J
    :catchall_2
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    .end local p1    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .restart local v3    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    :goto_0
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public shouldShowImeSwitcherButtonForTest()Z
    .locals 4

    .line 4210
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4211
    .local v0, "callingUserId":I
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 4212
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v2

    .line 4213
    .local v2, "userId":I
    const/4 v3, 0x3

    invoke-direct {p0, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(II)Z

    move-result v3

    monitor-exit v1

    return v3

    .line 4215
    .end local v2    # "userId":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method showCurrentInputInternal(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z
    .locals 14
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 3244
    const-string v0, "IMMS.showCurrentInputInternal"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3245
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v3, "InputMethodManagerService#showSoftInput"

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 3247
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    .line 3248
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result v0

    move v11, v0

    .line 3249
    .local v11, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v12, v4

    .line 3251
    .local v12, "ident":J
    :try_start_1
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v4, "Client requesting input be shown"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3252
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;II)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3256
    :try_start_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3257
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3

    .line 3252
    return v0

    .line 3259
    .end local v11    # "userId":I
    .end local v12    # "ident":J
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 3256
    .restart local v11    # "userId":I
    .restart local v12    # "ident":J
    :catchall_1
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3257
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3258
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "windowToken":Landroid/os/IBinder;
    .end local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    throw v0

    .line 3259
    .end local v11    # "userId":I
    .end local v12    # "ident":J
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    .restart local p2    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method showCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;II)Z
    .locals 14
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p3, "flags"    # I
    .param p4, "lastClickToolType"    # I
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p6, "reason"    # I
    .param p7, "userId"    # I

    .line 3556
    move-object/from16 v2, p2

    move/from16 v6, p7

    invoke-virtual {p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v7

    .line 3557
    .local v7, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v8, v7, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 3558
    .local v8, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    move/from16 v9, p3

    invoke-virtual {v8, v2, v9}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->onImeShowFlags(Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3559
    return v1

    .line 3562
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const/4 v3, 0x5

    if-nez v0, :cond_1

    .line 3563
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3564
    return v1

    .line 3566
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3568
    const/4 v10, 0x1

    invoke-virtual {v8, p1, v10}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->requestImeVisibility(Landroid/os/IBinder;Z)V

    .line 3571
    iget-object v11, v7, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 3572
    .local v11, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodBindingController;->setCurrentMethodVisible()V

    .line 3573
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v12

    .line 3574
    .local v12, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    iget-object v3, v7, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/16 v4, 0x8

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3577
    nop

    .line 3578
    if-eqz v12, :cond_2

    iget-object v0, v7, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_2

    move v0, v10

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    move v13, v0

    .line 3584
    .local v13, "readyToDispatchToIme":Z
    if-eqz v13, :cond_3

    .line 3585
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3586
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 3588
    nop

    .line 3589
    invoke-direct {p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->maybeReportToolType(I)V

    .line 3593
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    .line 3594
    invoke-virtual {v8}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getShowFlagsForInputMethodServiceOnly()I

    move-result v3

    .line 3593
    move-object v1, p1

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->performShowIme(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;II)V

    .line 3596
    invoke-virtual {v8, v10}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setInputShown(Z)V

    .line 3597
    return v10

    .line 3599
    :cond_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3600
    iput-object v2, v7, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 3602
    return v1
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    .locals 7
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"    # I

    .line 4120
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_0

    .line 4121
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "showInputMethodPickerFromClient is not enabled on automotive"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4122
    return-void

    .line 4124
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4125
    .local v0, "callingUserId":I
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 4126
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v2

    .line 4127
    .local v2, "userId":I
    invoke-direct {p0, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->canShowInputMethodPickerLocked(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4128
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring showInputMethodPickerFromClient of uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4129
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4128
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    monitor-exit v1

    return-void

    .line 4142
    .end local v2    # "userId":I
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 4132
    .restart local v2    # "userId":I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v3

    .line 4135
    .local v3, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v4, v3, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v4, :cond_2

    .line 4136
    iget-object v4, v3, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget v4, v4, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 4137
    .local v4, "displayId":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0, p2, v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;III)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4142
    nop

    .end local v2    # "userId":I
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v4    # "displayId":I
    monitor-exit v1

    .line 4143
    return-void

    .line 4142
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public showInputMethodPickerFromSystem(II)V
    .locals 2
    .param p1, "auxiliarySubtypeMode"    # I
    .param p2, "displayId"    # I

    .line 4152
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4158
    return-void
.end method

.method public showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z
    .locals 13
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p4, "flags"    # I
    .param p5, "lastClickToolType"    # I
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p7, "reason"    # I
    .param p8, "async"    # Z

    .line 3186
    const-wide/16 v0, 0x20

    const-string v2, "IMMS.showSoftInput"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3187
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v1, "InputMethodManagerService#showSoftInput"

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 3189
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 3190
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v10, v0

    .line 3191
    .local v10, "uid":I
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3192
    .local v0, "callingUserId":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(ILcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3193
    .local v11, "userId":I
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    :try_start_1
    invoke-direct/range {v2 .. v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->showSoftInputLocked(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;III)Z

    move-result v12

    .line 3197
    .local v12, "result":Z
    if-nez v12, :cond_0

    .line 3198
    move-object/from16 v8, p6

    invoke-direct {p0, v8, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendResultReceiverFailureLocked(Landroid/os/ResultReceiver;I)V

    goto :goto_0

    .line 3201
    .end local v0    # "callingUserId":I
    .end local v10    # "uid":I
    .end local v11    # "userId":I
    .end local v12    # "result":Z
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3197
    .restart local v0    # "callingUserId":I
    .restart local v10    # "uid":I
    .restart local v11    # "userId":I
    .restart local v12    # "result":Z
    :cond_0
    move-object/from16 v8, p6

    .line 3200
    :goto_0
    monitor-exit v1

    return v12

    .line 3201
    .end local v0    # "callingUserId":I
    .end local v10    # "uid":I
    .end local v11    # "userId":I
    .end local v12    # "result":Z
    :catchall_1
    move-exception v0

    move-object/from16 v8, p6

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .locals 10
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p2, "userId"    # I
    .param p3, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;
    .param p4, "delegatePackageName"    # Ljava/lang/String;
    .param p5, "delegatorPackageName"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    .line 3294
    move-object v4, p5

    move-object/from16 v5, p6

    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    .line 3295
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    move-object v6, v0

    .line 3296
    .local v6, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsConnectionlessStylusHandwriting()Z

    move-result v0

    const/4 v7, 0x1

    if-nez v0, :cond_0

    .line 3297
    const-string v0, "InputMethodManagerService"

    const-string v8, "Connectionless stylus handwriting mode unsupported by IME."

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3299
    :try_start_1
    invoke-interface {v5, v7}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3303
    goto :goto_0

    .line 3306
    .end local v6    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :catchall_0
    move-exception v0

    move-object v9, v5

    goto/16 :goto_6

    .line 3300
    .restart local v6    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :catch_0
    move-exception v0

    .line 3301
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "InputMethodManagerService"

    const-string v8, "Failed to report CONNECTIONLESS_HANDWRITING_ERROR_UNSUPPORTED"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3302
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3304
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v2

    return-void

    .line 3296
    :cond_0
    nop

    .line 3306
    .end local v6    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3308
    move-object/from16 v6, p6

    .line 3309
    .local v6, "immsCallback":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    if-eqz p4, :cond_1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 3310
    .local v7, "isForDelegation":Z
    :goto_1
    const/4 v8, 0x2

    if-eqz v7, :cond_3

    .line 3311
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    .line 3312
    :try_start_3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {v0, p1, p5}, Lcom/android/server/inputmethod/ClientController;->verifyClientAndPackageMatch(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3322
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3323
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$3;

    move-object v1, p0

    move v2, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService$3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    move-object v9, v5

    move-object v6, v0

    move-object v4, v6

    goto :goto_4

    .line 3322
    :catchall_1
    move-exception v0

    move-object v9, v5

    goto :goto_3

    .line 3313
    :cond_2
    move-object v9, v5

    :try_start_4
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "startConnectionlessStylusHandwriting() fail"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3315
    :try_start_5
    invoke-interface {v9, v8}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3319
    goto :goto_2

    .line 3322
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 3316
    :catch_1
    move-exception v0

    .line 3317
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v1, "InputMethodManagerService"

    const-string v3, "Failed to report CONNECTIONLESS_HANDWRITING_ERROR_OTHER"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3318
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3320
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Delegator doesn\'t match UID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6    # "immsCallback":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    .end local v7    # "isForDelegation":Z
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local p2    # "userId":I
    .end local p3    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .end local p4    # "delegatePackageName":Ljava/lang/String;
    .end local p5    # "delegatorPackageName":Ljava/lang/String;
    .end local p6    # "callback":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    throw v0

    .line 3322
    .restart local v6    # "immsCallback":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    .restart local v7    # "isForDelegation":Z
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .restart local p2    # "userId":I
    .restart local p3    # "cursorAnchorInfo":Landroid/view/inputmethod/CursorAnchorInfo;
    .restart local p4    # "delegatePackageName":Ljava/lang/String;
    .restart local p5    # "delegatorPackageName":Ljava/lang/String;
    .restart local p6    # "callback":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    :goto_3
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 3310
    :cond_3
    move-object v9, v5

    move-object v4, v6

    .line 3341
    .end local v6    # "immsCallback":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    .local v4, "immsCallback":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    :goto_4
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move v6, v7

    .end local v7    # "isForDelegation":Z
    .local v6, "isForDelegation":Z
    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ZLcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3344
    :try_start_7
    invoke-interface {v9, v8}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 3348
    goto :goto_5

    .line 3345
    :catch_2
    move-exception v0

    .line 3346
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManagerService"

    const-string v2, "Failed to report CONNECTIONLESS_HANDWRITING_ERROR_OTHER"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3347
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3350
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_5
    return-void

    .line 3306
    .end local v4    # "immsCallback":Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;
    .end local v6    # "isForDelegation":Z
    :goto_6
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_6
.end method

.method public startImeTrace()V
    .locals 3

    .line 4722
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/ImeTracing;->startTrace(Ljava/io/PrintWriter;)V

    .line 4723
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4724
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 4725
    monitor-exit v0

    .line 4726
    return-void

    .line 4725
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;Z)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 27
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "startInputFlags"    # I
    .param p5, "softInputMode"    # I
    .param p6, "windowFlags"    # I
    .param p7, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p8, "inputConnection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .param p9, "remoteAccessibilityInputConnection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p10, "unverifiedTargetSdkVersion"    # I
    .param p11, "userId"    # I
    .param p12, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;
    .param p13, "imeRequestedVisible"    # Z

    .line 3789
    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v8, p7

    move/from16 v0, p11

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 3790
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3793
    if-eqz v8, :cond_0

    iget-object v2, v8, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    if-eqz v2, :cond_0

    iget-object v2, v8, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 3794
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 3795
    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "EditorInfo#targetInputMethodUser must also be specified for cross-user startInputOrWindowGainedFocus()"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3802
    :cond_1
    :goto_0
    sget-object v2, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_DUAL_APPS_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v2}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nothing/server/ext/INtDualAppsService;

    .line 3803
    invoke-interface {v2, v0}, Lcom/nothing/server/ext/INtDualAppsService;->isDualAppsUserId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3804
    const/4 v0, 0x0

    move v2, v0

    .end local p11    # "userId":I
    .local v0, "userId":I
    goto :goto_1

    .line 3803
    .end local v0    # "userId":I
    .restart local p11    # "userId":I
    :cond_2
    move v2, v0

    .line 3808
    .end local p11    # "userId":I
    .local v2, "userId":I
    :goto_1
    if-nez v4, :cond_3

    .line 3809
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v3, "windowToken cannot be null."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 3813
    :cond_3
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3818
    const-string v0, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not running."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 3821
    :cond_4
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v3

    .line 3823
    .local v3, "userData":Lcom/android/server/inputmethod/UserData;
    const-wide/16 v5, 0x20

    :try_start_0
    const-string v0, "IMMS.startInputOrWindowGainedFocus"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3825
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v7, "InputMethodManagerService#startInputOrWindowGainedFocus"

    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v0, v7, v9}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 3828
    const-class v16, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 3829
    :try_start_1
    iget-object v12, v3, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 3831
    .local v12, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    iget-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-nez v0, :cond_5

    .line 3832
    :try_start_2
    new-instance v17, Lcom/android/internal/inputmethod/InputBindResult;

    .line 3835
    invoke-virtual {v12}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v22

    .line 3836
    invoke-virtual {v12}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v23

    const/16 v24, 0x0

    const/16 v18, 0x8

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v17 .. v24}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3945
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 3832
    return-object v17

    .line 3933
    .end local v12    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :catchall_0
    move-exception v0

    move/from16 v21, v2

    move-object/from16 v22, v3

    move-wide/from16 v23, v5

    goto/16 :goto_4

    .line 3839
    .restart local v12    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :cond_5
    :try_start_3
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object v14

    .line 3840
    .local v14, "cs":Lcom/android/server/inputmethod/ClientState;
    if-eqz v14, :cond_f

    .line 3843
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-wide/from16 v17, v9

    .line 3846
    .local v17, "ident":J
    :try_start_4
    iget-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    const/4 v7, 0x0

    if-nez v0, :cond_9

    :try_start_5
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v0, :cond_9

    .line 3848
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    .line 3849
    .local v0, "nextUserId":I
    if-ne v2, v0, :cond_6

    .line 3850
    iget-object v7, v14, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v1, v2, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 3851
    sget-object v7, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3931
    :try_start_6
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3945
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 3851
    return-object v7

    .line 3931
    .end local v0    # "nextUserId":I
    :catchall_1
    move-exception v0

    move/from16 v21, v2

    move-object/from16 v22, v3

    move-wide/from16 v23, v5

    goto/16 :goto_3

    .line 3853
    .restart local v0    # "nextUserId":I
    :cond_6
    :try_start_7
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v9, v10, v7}, Lcom/android/server/pm/UserManagerInternal;->getProfileIds(IZ)[I

    move-result-object v9

    .line 3855
    .local v9, "profileIdsWithDisabled":[I
    array-length v10, v9

    :goto_2
    if-ge v7, v10, :cond_8

    aget v11, v9, v7

    .line 3856
    .local v11, "profileId":I
    if-ne v11, v2, :cond_7

    .line 3857
    iget-object v7, v14, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v1, v2, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 3858
    sget-object v7, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3931
    :try_start_8
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3945
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 3858
    return-object v7

    .line 3856
    :cond_7
    nop

    .line 3855
    .end local v11    # "profileId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3861
    :cond_8
    :try_start_9
    sget-object v7, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3931
    :try_start_a
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3945
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 3861
    return-object v7

    .line 3866
    .end local v0    # "nextUserId":I
    .end local v9    # "profileIdsWithDisabled":[I
    :cond_9
    :try_start_b
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v9, v14, Lcom/android/server/inputmethod/ClientState;->mUid:I

    iget v10, v14, Lcom/android/server/inputmethod/ClientState;->mPid:I

    iget v11, v14, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-virtual {v0, v4, v9, v10, v11}, Lcom/android/server/wm/WindowManagerInternal;->hasInputMethodClientFocus(Landroid/os/IBinder;III)I

    move-result v0

    .line 3868
    .local v0, "imeClientFocus":I
    packed-switch v0, :pswitch_data_0

    .line 3890
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    iget v10, v14, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 3891
    invoke-virtual {v9, v10}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->shouldClearShowForcedFlag(I)Z

    move-result v9

    move/from16 v19, v9

    .line 3892
    .local v19, "shouldClearFlag":Z
    iget-object v9, v3, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 3893
    .local v9, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    iget-boolean v10, v9, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    move/from16 v20, v10

    .line 3894
    .local v20, "showForced":Z
    iget-object v10, v3, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v10, v10, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eq v10, v4, :cond_a

    if-eqz v20, :cond_a

    if-eqz v19, :cond_a

    .line 3896
    :try_start_c
    iput-boolean v7, v9, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 3900
    :cond_a
    :try_start_d
    iget-boolean v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-nez v10, :cond_c

    :try_start_e
    iget v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq v2, v10, :cond_c

    .line 3901
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 3902
    invoke-virtual {v10, v11, v7}, Lcom/android/server/pm/UserManagerInternal;->getProfileIds(IZ)[I

    move-result-object v10

    .line 3901
    invoke-static {v10, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 3906
    iget-object v7, v14, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v1, v2, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 3907
    sget-object v7, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 3931
    :try_start_f
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v16
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 3945
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 3907
    return-object v7

    .line 3909
    :cond_b
    :try_start_10
    const-string v10, "InputMethodManagerService"

    const-string v11, "A background user is requesting window. Hiding IME."

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3910
    const-string v10, "InputMethodManagerService"

    const-string v11, "If you need to impersonate a foreground user/profile from a background user, use EditorInfo.targetInputMethodUser with INTERACT_ACROSS_USERS_FULL permission."

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    iget-object v10, v3, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v10, v10, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/16 v11, 0xb

    invoke-direct {v1, v10, v7, v11, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;III)Z

    .line 3915
    sget-object v7, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 3931
    :try_start_11
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v16
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 3945
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 3915
    return-object v7

    .line 3918
    :cond_c
    if-eqz v8, :cond_d

    :try_start_12
    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget v10, v14, Lcom/android/server/inputmethod/ClientState;->mUid:I

    iget-object v11, v8, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v10, v11}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/content/pm/PackageManagerInternal;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 3920
    const-string v7, "InputMethodManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v14, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " package="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3922
    sget-object v7, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 3931
    :try_start_13
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v16
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 3945
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 3922
    return-object v7

    .line 3925
    :cond_d
    move/from16 v7, p6

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v13, p12

    move/from16 v15, p13

    move/from16 v21, v2

    move-object/from16 v22, v3

    move-wide/from16 v23, v5

    move-object/from16 v25, v9

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p8

    .end local v2    # "userId":I
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v9    # "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .local v21, "userId":I
    .local v22, "userData":Lcom/android/server/inputmethod/UserData;
    .local v25, "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    :try_start_14
    invoke-direct/range {v1 .. v15}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputOrWindowGainedFocusInternalLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILcom/android/server/inputmethod/InputMethodBindingController;Landroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/ClientState;Z)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v26
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 3931
    .end local v0    # "imeClientFocus":I
    .end local v19    # "shouldClearFlag":Z
    .end local v20    # "showForced":Z
    .end local v25    # "visibilityStateComputer":Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .local v26, "result":Lcom/android/internal/inputmethod/InputBindResult;
    :try_start_15
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3932
    nop

    .line 3933
    .end local v12    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v14    # "cs":Lcom/android/server/inputmethod/ClientState;
    .end local v17    # "ident":J
    monitor-exit v16
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 3934
    if-nez v26, :cond_e

    .line 3936
    :try_start_16
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputBindResult is @NonNull. startInputReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3937
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " windowFlags=#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3938
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " editorInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3936
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 3945
    invoke-static/range {v23 .. v24}, Landroid/os/Trace;->traceEnd(J)V

    .line 3940
    return-object v0

    .line 3945
    .end local v26    # "result":Lcom/android/internal/inputmethod/InputBindResult;
    :catchall_2
    move-exception v0

    goto/16 :goto_5

    .line 3943
    .restart local v26    # "result":Lcom/android/internal/inputmethod/InputBindResult;
    :cond_e
    nop

    .line 3945
    invoke-static/range {v23 .. v24}, Landroid/os/Trace;->traceEnd(J)V

    .line 3943
    return-object v26

    .line 3933
    .end local v26    # "result":Lcom/android/internal/inputmethod/InputBindResult;
    :catchall_3
    move-exception v0

    goto/16 :goto_4

    .line 3931
    .restart local v12    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .restart local v14    # "cs":Lcom/android/server/inputmethod/ClientState;
    .restart local v17    # "ident":J
    :catchall_4
    move-exception v0

    goto :goto_3

    .end local v21    # "userId":I
    .end local v22    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v2    # "userId":I
    .restart local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    :catchall_5
    move-exception v0

    move/from16 v21, v2

    move-object/from16 v22, v3

    move-wide/from16 v23, v5

    .end local v2    # "userId":I
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v21    # "userId":I
    .restart local v22    # "userData":Lcom/android/server/inputmethod/UserData;
    goto :goto_3

    .line 3879
    .end local v21    # "userId":I
    .end local v22    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v0    # "imeClientFocus":I
    .restart local v2    # "userId":I
    .restart local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    :pswitch_0
    move/from16 v21, v2

    move-object/from16 v22, v3

    move-wide/from16 v23, v5

    .end local v2    # "userId":I
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v21    # "userId":I
    .restart local v22    # "userData":Lcom/android/server/inputmethod/UserData;
    :try_start_17
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v2, "Focus gain on non-focused client %s (uid=%s pid=%s)"

    iget-object v3, v14, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget v4, v14, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 3881
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v14, Lcom/android/server/inputmethod/ClientState;->mPid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 3879
    invoke-static {v1, v2, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3882
    sget-object v1, Lcom/android/internal/inputmethod/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 3931
    :try_start_18
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v16
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 3945
    invoke-static/range {v23 .. v24}, Landroid/os/Trace;->traceEnd(J)V

    .line 3882
    return-object v1

    .line 3870
    .end local v21    # "userId":I
    .end local v22    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v2    # "userId":I
    .restart local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    :pswitch_1
    move/from16 v21, v2

    move-object/from16 v22, v3

    move-wide/from16 v23, v5

    .end local v2    # "userId":I
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v21    # "userId":I
    .restart local v22    # "userData":Lcom/android/server/inputmethod/UserData;
    :try_start_19
    const-string v1, "InputMethodManagerService"

    const-string/jumbo v2, "startInputOrWindowGainedFocusInternal: display ID mismatch."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3872
    sget-object v1, Lcom/android/internal/inputmethod/InputBindResult;->DISPLAY_ID_MISMATCH:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 3931
    :try_start_1a
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v16
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 3945
    invoke-static/range {v23 .. v24}, Landroid/os/Trace;->traceEnd(J)V

    .line 3872
    return-object v1

    .line 3884
    .end local v21    # "userId":I
    .end local v22    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v2    # "userId":I
    .restart local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    :pswitch_2
    move/from16 v21, v2

    move-object/from16 v22, v3

    move-wide/from16 v23, v5

    .end local v2    # "userId":I
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v21    # "userId":I
    .restart local v22    # "userData":Lcom/android/server/inputmethod/UserData;
    :try_start_1b
    sget-object v1, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_DISPLAY_ID:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 3931
    :try_start_1c
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v16
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 3945
    invoke-static/range {v23 .. v24}, Landroid/os/Trace;->traceEnd(J)V

    .line 3884
    return-object v1

    .line 3931
    .end local v0    # "imeClientFocus":I
    :goto_3
    :try_start_1d
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3932
    nop

    .end local v21    # "userId":I
    .end local v22    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "startInputReason":I
    .end local p2    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local p3    # "windowToken":Landroid/os/IBinder;
    .end local p4    # "startInputFlags":I
    .end local p5    # "softInputMode":I
    .end local p6    # "windowFlags":I
    .end local p7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local p8    # "inputConnection":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .end local p9    # "remoteAccessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .end local p10    # "unverifiedTargetSdkVersion":I
    .end local p12    # "imeDispatcher":Landroid/window/ImeOnBackInvokedDispatcher;
    .end local p13    # "imeRequestedVisible":Z
    throw v0

    .line 3933
    .end local v12    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v14    # "cs":Lcom/android/server/inputmethod/ClientState;
    .end local v17    # "ident":J
    .restart local v2    # "userId":I
    .restart local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "startInputReason":I
    .restart local p2    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .restart local p3    # "windowToken":Landroid/os/IBinder;
    .restart local p4    # "startInputFlags":I
    .restart local p5    # "softInputMode":I
    .restart local p6    # "windowFlags":I
    .restart local p7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local p8    # "inputConnection":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .restart local p9    # "remoteAccessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .restart local p10    # "unverifiedTargetSdkVersion":I
    .restart local p12    # "imeDispatcher":Landroid/window/ImeOnBackInvokedDispatcher;
    .restart local p13    # "imeRequestedVisible":Z
    :catchall_6
    move-exception v0

    move/from16 v21, v2

    move-object/from16 v22, v3

    move-wide/from16 v23, v5

    .end local v2    # "userId":I
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v21    # "userId":I
    .restart local v22    # "userData":Lcom/android/server/inputmethod/UserData;
    goto :goto_4

    .line 3841
    .end local v21    # "userId":I
    .end local v22    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v2    # "userId":I
    .restart local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v12    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .restart local v14    # "cs":Lcom/android/server/inputmethod/ClientState;
    :cond_f
    move/from16 v21, v2

    move-object/from16 v22, v3

    move-wide/from16 v23, v5

    .end local v2    # "userId":I
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v21    # "userId":I
    .restart local v22    # "userData":Lcom/android/server/inputmethod/UserData;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v21    # "userId":I
    .end local v22    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "startInputReason":I
    .end local p2    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local p3    # "windowToken":Landroid/os/IBinder;
    .end local p4    # "startInputFlags":I
    .end local p5    # "softInputMode":I
    .end local p6    # "windowFlags":I
    .end local p7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local p8    # "inputConnection":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .end local p9    # "remoteAccessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .end local p10    # "unverifiedTargetSdkVersion":I
    .end local p12    # "imeDispatcher":Landroid/window/ImeOnBackInvokedDispatcher;
    .end local p13    # "imeRequestedVisible":Z
    throw v0

    .line 3933
    .end local v12    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v14    # "cs":Lcom/android/server/inputmethod/ClientState;
    .restart local v21    # "userId":I
    .restart local v22    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "startInputReason":I
    .restart local p2    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .restart local p3    # "windowToken":Landroid/os/IBinder;
    .restart local p4    # "startInputFlags":I
    .restart local p5    # "softInputMode":I
    .restart local p6    # "windowFlags":I
    .restart local p7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local p8    # "inputConnection":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .restart local p9    # "remoteAccessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .restart local p10    # "unverifiedTargetSdkVersion":I
    .restart local p12    # "imeDispatcher":Landroid/window/ImeOnBackInvokedDispatcher;
    .restart local p13    # "imeRequestedVisible":Z
    :goto_4
    monitor-exit v16
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    .end local v21    # "userId":I
    .end local v22    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1    # "startInputReason":I
    .end local p2    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .end local p3    # "windowToken":Landroid/os/IBinder;
    .end local p4    # "startInputFlags":I
    .end local p5    # "softInputMode":I
    .end local p6    # "windowFlags":I
    .end local p7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local p8    # "inputConnection":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .end local p9    # "remoteAccessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .end local p10    # "unverifiedTargetSdkVersion":I
    .end local p12    # "imeDispatcher":Landroid/window/ImeOnBackInvokedDispatcher;
    .end local p13    # "imeRequestedVisible":Z
    :try_start_1e
    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 3945
    .restart local v2    # "userId":I
    .restart local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1    # "startInputReason":I
    .restart local p2    # "client":Lcom/android/internal/inputmethod/IInputMethodClient;
    .restart local p3    # "windowToken":Landroid/os/IBinder;
    .restart local p4    # "startInputFlags":I
    .restart local p5    # "softInputMode":I
    .restart local p6    # "windowFlags":I
    .restart local p7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .restart local p8    # "inputConnection":Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .restart local p9    # "remoteAccessibilityInputConnection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .restart local p10    # "unverifiedTargetSdkVersion":I
    .restart local p12    # "imeDispatcher":Landroid/window/ImeOnBackInvokedDispatcher;
    .restart local p13    # "imeRequestedVisible":Z
    :catchall_7
    move-exception v0

    move/from16 v21, v2

    move-object/from16 v22, v3

    move-wide/from16 v23, v5

    .end local v2    # "userId":I
    .end local v3    # "userData":Lcom/android/server/inputmethod/UserData;
    .restart local v21    # "userId":I
    .restart local v22    # "userData":Lcom/android/server/inputmethod/UserData;
    :goto_5
    invoke-static/range {v23 .. v24}, Landroid/os/Trace;->traceEnd(J)V

    .line 3946
    throw v0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;ZIZ)V
    .locals 0
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "startInputFlags"    # I
    .param p5, "softInputMode"    # I
    .param p6, "windowFlags"    # I
    .param p7, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p8, "inputConnection"    # Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .param p9, "remoteAccessibilityInputConnection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p10, "unverifiedTargetSdkVersion"    # I
    .param p11, "userId"    # I
    .param p12, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;
    .param p13, "imeRequestedVisible"    # Z
    .param p14, "startInputSeq"    # I
    .param p15, "useAsyncShowHideMethod"    # Z

    .line 3777
    return-void
.end method

.method public startProtoDump([BILjava/lang/String;)V
    .locals 12
    .param p1, "protoDump"    # [B
    .param p2, "source"    # I
    .param p3, "where"    # Ljava/lang/String;

    .line 4668
    if-nez p1, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 4670
    return-void

    .line 4672
    :cond_0
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    .line 4673
    .local v0, "tracingInstance":Lcom/android/internal/inputmethod/ImeTracing;
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/ImeTracing;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    goto :goto_1

    .line 4677
    :cond_2
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 4678
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v2, 0x10b00000003L

    const-wide v4, 0x10900000002L

    const-wide v6, 0x10600000001L

    const-wide v8, 0x20b00000002L

    packed-switch p2, :pswitch_data_0

    .line 4707
    return-void

    .line 4696
    :pswitch_0
    nop

    .line 4697
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 4698
    .local v8, "managerservice_token":J
    nop

    .line 4699
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    .line 4698
    invoke-virtual {v1, v6, v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4700
    invoke-virtual {v1, v4, v5, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4701
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4703
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4704
    goto :goto_0

    .line 4688
    .end local v8    # "managerservice_token":J
    :pswitch_1
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 4689
    .local v8, "service_token":J
    nop

    .line 4690
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    .line 4689
    invoke-virtual {v1, v6, v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4691
    invoke-virtual {v1, v4, v5, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4692
    invoke-virtual {v1, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 4693
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4694
    goto :goto_0

    .line 4680
    .end local v8    # "service_token":J
    :pswitch_2
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 4681
    .local v8, "client_token":J
    nop

    .line 4682
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    .line 4681
    invoke-virtual {v1, v6, v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4683
    invoke-virtual {v1, v4, v5, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4684
    invoke-virtual {v1, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 4685
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4686
    nop

    .line 4709
    .end local v8    # "client_token":J
    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/inputmethod/ImeTracing;->addToBuffer(Landroid/util/proto/ProtoOutputStream;I)V

    .line 4710
    return-void

    .line 4674
    .end local v1    # "proto":Landroid/util/proto/ProtoOutputStream;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 1
    .param p1, "client"    # Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 3285
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V

    .line 3286
    return-void
.end method

.method public stopImeTrace()V
    .locals 3

    .line 4732
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/ImeTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 4733
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4734
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 4735
    monitor-exit v0

    .line 4736
    return-void

    .line 4735
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemRunning()V
    .locals 12

    .line 1502
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->waitForUserInitialization()V

    .line 1504
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 1505
    :try_start_0
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v2, "--- systemReady"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1506
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    .line 1507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 1508
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 1509
    .local v0, "currentImeUserId":I
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1510
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1511
    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideStatusBarIconLocked(I)V

    .line 1512
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v2

    .line 1513
    .local v2, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getImeWindowVis()I

    move-result v4

    .line 1514
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v5

    .line 1513
    invoke-direct {p0, v4, v5, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    .line 1515
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v5, 0x11102cd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1517
    iget-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-eqz v4, :cond_0

    .line 1518
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V

    goto :goto_0

    .line 1551
    .end local v0    # "currentImeUserId":I
    .end local v2    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1524
    .restart local v0    # "currentImeUserId":I
    .restart local v2    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 1525
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_soft_keyboard_mode"

    const-string v7, "default_input_method"

    const-string v8, "enabled_input_methods"

    const-string/jumbo v9, "selected_input_method_subtype"

    const-string/jumbo v10, "show_ime_with_hard_keyboard"

    const-string/jumbo v11, "stylus_handwriting_enabled"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/inputmethod/SecureSettingsChangeCallback;->register(Landroid/os/Handler;Landroid/content/ContentResolver;[Ljava/lang/String;Lcom/android/server/inputmethod/SecureSettingsChangeCallback;)V

    .line 1539
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v8, v4

    .line 1540
    .local v8, "broadcastFilterForAllUsers":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v8, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1541
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;

    const/4 v4, 0x0

    invoke-direct {v6, p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 1545
    invoke-static {}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->startWriterThread()V

    .line 1547
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_1

    aget v6, v4, v3

    .line 1548
    .local v6, "userId":I
    invoke-virtual {p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUserReadyLocked(I)V

    .line 1547
    .end local v6    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1551
    .end local v0    # "currentImeUserId":I
    .end local v2    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    .end local v8    # "broadcastFilterForAllUsers":Landroid/content/IntentFilter;
    :cond_1
    monitor-exit v1

    .line 1552
    return-void

    .line 1551
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method unbindCurrentClientLocked(II)V
    .locals 6
    .param p1, "unbindClientReason"    # I
    .param p2, "userId"    # I

    .line 1890
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 1891
    .local v0, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v1, :cond_1

    .line 1892
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 1893
    invoke-virtual {v2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1892
    const-string/jumbo v3, "unbindCurrentInputLocked: client=%s"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1894
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 1895
    .local v1, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    iget-boolean v2, v0, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1896
    iput-boolean v3, v0, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    .line 1897
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v2

    .line 1898
    .local v2, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v2, :cond_0

    .line 1899
    invoke-virtual {v2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->unbindInput()V

    .line 1902
    .end local v2    # "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    :cond_0
    iput-boolean v3, v0, Lcom/android/server/inputmethod/UserData;->mBoundToAccessibility:Z

    .line 1907
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v2, v3, v3}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActive(ZZ)V

    .line 1909
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v4

    invoke-virtual {v2, v4, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onUnbindMethod(II)V

    .line 1911
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iput-boolean v3, v2, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    .line 1912
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iput-boolean v3, v2, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    .line 1913
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 1914
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/16 v5, 0x8

    invoke-interface {v3, v4, v5}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1916
    iput-object v2, v0, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 1918
    nop

    .line 1919
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuControllerNew:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->hide(II)V

    .line 1924
    .end local v1    # "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    :cond_1
    return-void
.end method

.method updateFromSettingsLocked(ZI)V
    .locals 0
    .param p1, "enabledMayChange"    # Z
    .param p2, "userId"    # I

    .line 2976
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    .line 2977
    nop

    .line 2980
    return-void
.end method

.method updateInputMethodsFromSettingsLocked(ZI)V
    .locals 12
    .param p1, "enabledMayChange"    # Z
    .param p2, "userId"    # I

    .line 2984
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 2985
    .local v0, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    const/4 v1, 0x4

    if-eqz p1, :cond_1

    .line 2986
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2989
    .local v2, "userAwarePackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2990
    .local v3, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2993
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 2994
    .local v5, "imm":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v6, 0x0

    .line 2996
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2997
    const-wide/32 v8, 0x8000

    invoke-static {v8, v9}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v8

    .line 2996
    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    .line 3000
    goto :goto_1

    .line 2999
    :catch_0
    move-exception v7

    .line 3001
    :goto_1
    if-eqz v6, :cond_0

    iget v7, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v7, v1, :cond_0

    .line 3003
    sget-object v7, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 3004
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 3003
    const-string v9, "Update state(%s): DISABLED_UNTIL_USED -> DEFAULT"

    invoke-static {v7, v9, v8}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3005
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 2990
    .end local v5    # "imm":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3012
    .end local v2    # "userAwarePackageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    .line 3013
    .local v2, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v3, v2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 3014
    .local v3, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDeviceIdToShowIme()I

    move-result v4

    if-nez v4, :cond_2

    .line 3015
    const-string v4, "default_input_method"

    const/4 v5, 0x0

    invoke-static {v4, v5, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 3017
    .local v6, "ime":Ljava/lang/String;
    const-string v7, "default_device_input_method"

    invoke-static {v7, v5, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 3019
    .local v8, "defaultDeviceIme":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-static {v6, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3020
    sget-object v9, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 3023
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v6, v10, v8}, [Ljava/lang/Object;

    move-result-object v10

    .line 3020
    const-string v11, "Current input method %s differs from the stored default device input method for user %s - restoring %s"

    invoke-static {v9, v11, v10}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3024
    invoke-static {v4, v8, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3026
    invoke-static {v7, v5, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3035
    .end local v6    # "ime":Ljava/lang/String;
    .end local v8    # "defaultDeviceIme":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    .line 3037
    .local v4, "id":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3038
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    .line 3040
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3042
    :try_start_1
    invoke-virtual {v0, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v4, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3046
    :goto_2
    goto :goto_3

    .line 3043
    :catch_1
    move-exception v1

    .line 3044
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown input method from prefs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "InputMethodManagerService"

    invoke-static {v6, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3045
    const/4 v5, 0x5

    invoke-virtual {p0, v5, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(II)V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2

    .line 3049
    :cond_4
    invoke-virtual {p0, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(II)V

    .line 3052
    :goto_3
    iget-object v1, v2, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)V

    .line 3053
    iget-object v1, v2, Lcom/android/server/inputmethod/UserData;->mHardwareKeyboardShortcutController:Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->update(Lcom/android/server/inputmethod/InputMethodSettings;)V

    .line 3054
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V

    .line 3055
    return-void
.end method

.method updateSystemUiLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2919
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    .line 2920
    .local v0, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getImeWindowVis()I

    move-result v1

    .line 2921
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v2

    .line 2920
    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    .line 2922
    return-void
.end method
