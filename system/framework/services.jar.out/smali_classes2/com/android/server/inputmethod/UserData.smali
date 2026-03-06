.class final Lcom/android/server/inputmethod/UserData;
.super Ljava/lang/Object;
.source "UserData.java"


# instance fields
.field final mBackgroundLoadLatch:Ljava/util/concurrent/CountDownLatch;

.field final mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

.field mBoundToAccessibility:Z

.field mBoundToMethod:Z

.field mCurClient:Lcom/android/server/inputmethod/ClientState;

.field mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field mCurImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

.field mEnabledAccessibilitySessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;",
            ">;"
        }
    .end annotation
.end field

.field mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

.field final mHardwareKeyboardShortcutController:Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

.field mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

.field final mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mInFullscreenMode:Z

.field final mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mLastEnabledInputMethodsStr:Ljava/lang/String;

.field final mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/inputmethod/RawInputMethodMap;",
            ">;"
        }
    .end annotation
.end field

.field mSubtypeForKeyboardLayoutMapping:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field

.field final mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

.field final mUserId:I

.field final mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;


# direct methods
.method constructor <init>(ILcom/android/server/inputmethod/InputMethodBindingController;Lcom/android/server/inputmethod/ImeVisibilityStateComputer;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "bindingController"    # Lcom/android/server/inputmethod/InputMethodBindingController;
    .param p3, "stateComputer"    # Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/inputmethod/UserData;->mBackgroundLoadLatch:Ljava/util/concurrent/CountDownLatch;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    invoke-static {}, Lcom/android/server/inputmethod/RawInputMethodMap;->emptyMap()Lcom/android/server/inputmethod/RawInputMethodMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-direct {v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 68
    new-instance v0, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    invoke-direct {v0}, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/UserData;->mHardwareKeyboardShortcutController:Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    .line 87
    nop

    .line 89
    invoke-static {}, Lcom/android/server/inputmethod/ImeBindingState;->newEmptyState()Lcom/android/server/inputmethod/ImeBindingState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 142
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 150
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    .line 167
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/UserData;->mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 176
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    iput p1, p0, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 186
    iput-object p2, p0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 187
    iput-object p3, p0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 188
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserData{mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
