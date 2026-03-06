.class final Lcom/android/server/inputmethod/InputMethodMenuController;
.super Ljava/lang/Object;
.source "InputMethodMenuController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

.field private mImList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIms:[Landroid/view/inputmethod/InputMethodInfo;

.field private final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field private mShowImeWithHardKeyboard:Z

.field private mSubtypeIndices:[I

.field private mSwitchingDialog:Landroid/app/AlertDialog;

.field private mSwitchingDialogTitleView:Landroid/view/View;

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$9RRpOtxJiywTqYa-Xg3g0Bq9Ph0(Lcom/android/server/inputmethod/InputMethodMenuController;ILandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodMenuController;->lambda$showInputMethodMenuLocked$0(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CLlh9zsn5eLEdOVTdGA7ylv4q7c(Lcom/android/server/inputmethod/InputMethodMenuController;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodMenuController;->lambda$showInputMethodMenuLocked$2(Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ydeaWQ9e2M695TY8yZyULWklPlw(Lcom/android/server/inputmethod/InputMethodMenuController;ILandroid/widget/CompoundButton;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodMenuController;->lambda$showInputMethodMenuLocked$1(ILandroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodMenuController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 75
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 76
    return-void
.end method

.method private synthetic lambda$showInputMethodMenuLocked$0(ILandroid/content/DialogInterface;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenu(I)V

    return-void
.end method

.method private synthetic lambda$showInputMethodMenuLocked$1(ILandroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 162
    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    invoke-static {v0, p3, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putBoolean(Ljava/lang/String;ZI)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenu(I)V

    .line 167
    return-void
.end method

.method private synthetic lambda$showInputMethodMenuLocked$2(Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;ILandroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "adapter"    # Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .param p2, "userId"    # I
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .line 174
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    array-length v1, v1

    if-le v1, p4, :cond_0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIndices:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIndices:[I

    array-length v1, v1

    if-gt v1, p4, :cond_1

    :cond_0
    goto :goto_1

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    aget-object v1, v1, p4

    .line 180
    .local v1, "im":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIndices:[I

    aget v2, v2, p4

    .line 181
    .local v2, "subtypeIndex":I
    iput p4, p1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 182
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 183
    if-eqz v1, :cond_4

    .line 184
    if-ltz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-lt v2, v3, :cond_3

    :cond_2
    goto :goto_0

    .line 190
    .end local v1    # "im":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "subtypeIndex":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 185
    .restart local v1    # "im":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v2    # "subtypeIndex":I
    :goto_0
    const/4 v2, -0x1

    .line 187
    :cond_3
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;II)V

    .line 189
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked(I)V

    .line 190
    .end local v1    # "im":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "subtypeIndex":I
    monitor-exit v0

    .line 191
    return-void

    .line 177
    :goto_1
    monitor-exit v0

    return-void

    .line 190
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 289
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->isisInputMethodPickerShownForTestLocked()Z

    move-result v0

    .line 290
    .local v0, "showing":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isShowing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 292
    if-eqz v0, :cond_0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "imList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mImList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 295
    :cond_0
    return-void
.end method

.method getShowImeWithHardKeyboard()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    return v0
.end method

.method getSwitchingDialogLocked()Landroid/app/AlertDialog;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method handleHardKeyboardStatusChange(Z)V
    .locals 3
    .param p1, "available"    # Z

    .line 275
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 276
    sget-object v0, Lcom/android/server/inputmethod/InputMethodMenuController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HardKeyboardStatusChanged: available="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 280
    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    const v2, 0x102034d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 283
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 282
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 285
    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v0

    .line 286
    return-void

    .line 285
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hideInputMethodMenu(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 231
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 232
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked(I)V

    .line 233
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hideInputMethodMenuLocked(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 243
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/inputmethod/InputMethodMenuController;->TAG:Ljava/lang/String;

    const-string v1, "Hide switching menu"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 248
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 250
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(I)V

    .line 251
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedToAllImesLocked()V

    .line 252
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 253
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mImList:Ljava/util/List;

    .line 254
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 255
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIndices:[I

    .line 257
    :cond_1
    return-void
.end method

.method isisInputMethodPickerShownForTestLocked()Z
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method showInputMethodMenuLocked(ZILjava/lang/String;ILjava/util/List;I)V
    .locals 20
    .param p1, "showAuxSubtypes"    # Z
    .param p2, "displayId"    # I
    .param p3, "preferredInputMethodId"    # Ljava/lang/String;
    .param p4, "preferredInputMethodSubtypeIndex"    # I
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;I)V"
        }
    .end annotation

    .line 82
    .local p5, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v5, p5

    move/from16 v8, p6

    sget-boolean v2, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/inputmethod/InputMethodMenuController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Show switching menu. showAuxSubtypes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p1

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move/from16 v9, p1

    .line 84
    :goto_0
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v2, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v10

    .line 86
    .local v10, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v0, v8}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked(I)V

    .line 88
    const/4 v2, -0x1

    move/from16 v3, p4

    if-ne v3, v2, :cond_1

    .line 89
    nop

    .line 90
    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    .line 91
    .local v4, "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v4, :cond_1

    .line 92
    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "curMethodId":Ljava/lang/String;
    nop

    .line 94
    invoke-static {v8}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v7

    .line 95
    .local v7, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    nop

    .line 96
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v11

    .line 95
    invoke-static {v7, v11}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v3

    move v11, v3

    .end local p4    # "preferredInputMethodSubtypeIndex":I
    .local v3, "preferredInputMethodSubtypeIndex":I
    goto :goto_1

    .line 101
    .end local v3    # "preferredInputMethodSubtypeIndex":I
    .end local v4    # "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "curMethodId":Ljava/lang/String;
    .end local v7    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local p4    # "preferredInputMethodSubtypeIndex":I
    :cond_1
    move v11, v3

    .end local p4    # "preferredInputMethodSubtypeIndex":I
    .local v11, "preferredInputMethodSubtypeIndex":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    .line 102
    .local v12, "size":I
    iput-object v5, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mImList:Ljava/util/List;

    .line 103
    new-array v3, v12, [Landroid/view/inputmethod/InputMethodInfo;

    iput-object v3, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 104
    new-array v3, v12, [I

    iput-object v3, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIndices:[I

    .line 108
    const/4 v3, -0x1

    .line 109
    .local v3, "checkedItem":I
    const/4 v4, 0x0

    move v6, v3

    .end local v3    # "checkedItem":I
    .local v4, "i":I
    .local v6, "checkedItem":I
    :goto_2
    if-ge v4, v12, :cond_5

    .line 110
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 111
    .local v3, "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    iget-object v13, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    aput-object v13, v7, v4

    .line 112
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIndices:[I

    iget v13, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeIndex:I

    aput v13, v7, v4

    .line 113
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 114
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIndices:[I

    aget v7, v7, v4

    .line 115
    .local v7, "subtypeIndex":I
    if-eq v7, v2, :cond_3

    if-ne v11, v2, :cond_2

    if-eqz v7, :cond_3

    :cond_2
    if-ne v7, v11, :cond_4

    .line 119
    :cond_3
    move v6, v4

    .line 109
    .end local v3    # "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v7    # "subtypeIndex":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    nop

    .line 124
    .end local v4    # "i":I
    if-ne v6, v2, :cond_6

    .line 125
    sget-object v2, Lcom/android/server/inputmethod/InputMethodMenuController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switching menu shown with no item selected, IME id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", subtype index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_6
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    if-nez v2, :cond_7

    .line 131
    new-instance v2, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    invoke-direct {v2}, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;-><init>()V

    iput-object v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    .line 133
    :cond_7
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    move/from16 v13, p2

    invoke-virtual {v2, v13}, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;->get(I)Landroid/content/Context;

    move-result-object v14

    .line 134
    .local v14, "dialogWindowContext":Landroid/content/Context;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 135
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v8}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;I)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 137
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 138
    .local v3, "dialogContext":Landroid/content/Context;
    sget-object v2, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const v4, 0x101005d

    const/4 v7, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v7, v2, v4, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 141
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 143
    .local v4, "dialogIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    iget-object v15, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v15, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 147
    const-class v15, Landroid/view/LayoutInflater;

    invoke-virtual {v3, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 148
    .local v15, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090098

    invoke-virtual {v15, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 150
    .local v1, "tv":Landroid/view/View;
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 153
    iput-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 154
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 155
    move-object/from16 v16, v1

    .end local v1    # "tv":Landroid/view/View;
    .local v16, "tv":Landroid/view/View;
    const v1, 0x102034d

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 156
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 157
    const/4 v7, 0x0

    goto :goto_3

    :cond_8
    const/16 v7, 0x8

    .line 156
    :goto_3
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    const v7, 0x102034e

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 160
    .local v1, "hardKeySwitch":Landroid/widget/Switch;
    iget-boolean v7, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v1, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 161
    new-instance v7, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0, v8}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;I)V

    invoke-virtual {v1, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 171
    move-object v7, v2

    .end local v2    # "a":Landroid/content/res/TypedArray;
    .local v7, "a":Landroid/content/res/TypedArray;
    new-instance v2, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    move-object/from16 v17, v4

    .end local v4    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .local v17, "dialogIcon":Landroid/graphics/drawable/Drawable;
    const v4, 0x1090099

    move-object/from16 v18, v7

    .end local v7    # "a":Landroid/content/res/TypedArray;
    .local v18, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;ILcom/android/server/inputmethod/InputMethodMenuController-IA;)V

    .line 173
    .local v2, "adapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    new-instance v4, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v2, v8}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;I)V

    .line 192
    .local v4, "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v2, v6, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 196
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 197
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 198
    .local v5, "w":Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 199
    .local v7, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v19, v1

    .end local v1    # "hardKeySwitch":Landroid/widget/Switch;
    .local v19, "hardKeySwitch":Landroid/widget/Switch;
    const/16 v1, 0x7dc

    invoke-virtual {v5, v1}, Landroid/view/Window;->setType(I)V

    .line 200
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    .line 204
    invoke-virtual {v14}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 205
    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 206
    const-string v1, "Select input method"

    invoke-virtual {v7, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {v5, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 208
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(I)V

    .line 209
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    move-object/from16 p4, v2

    .end local v2    # "adapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    .local p4, "adapter":Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v2, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V

    .line 210
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 211
    return-void
.end method

.method updateKeyboardFromSettingsLocked(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 214
    nop

    .line 215
    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    .line 217
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 218
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialogTitleView:Landroid/view/View;

    const v1, 0x102034e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 221
    .local v0, "hardKeySwitch":Landroid/widget/Switch;
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 223
    .end local v0    # "hardKeySwitch":Landroid/widget/Switch;
    :cond_0
    return-void
.end method
