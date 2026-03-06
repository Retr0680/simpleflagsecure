.class Lcom/android/server/input/KeyboardLayoutManager;
.super Ljava/lang/Object;
.source "KeyboardLayoutManager.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;,
        Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;,
        Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;,
        Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;,
        Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;,
        Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final GLOBAL_OVERRIDE_KEY:Ljava/lang/String; = "GLOBAL_OVERRIDE_KEY"

.field private static final MSG_RELOAD_KEYBOARD_LAYOUTS:I = 0x2

.field private static final MSG_UPDATE_EXISTING_DEVICES:I = 0x1

.field private static final MSG_UPDATE_KEYBOARD_LAYOUTS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "KeyboardLayoutManager"


# instance fields
.field private mAvailableLayouts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfiguredKeyboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

.field private final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field private final mHandler:Landroid/os/Handler;

.field private final mImeInfoLock:Ljava/lang/Object;

.field private final mKeyboardLayoutCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/input/KeyboardLayoutSelectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mNative:Lcom/android/server/input/NativeInputManagerService;


# direct methods
.method public static synthetic $r8$lambda$0iY-rg5rUX2ZaLI0oVrWwXSKQmk(Ljava/util/HashSet;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/KeyboardLayoutManager;->lambda$updateKeyboardLayouts$0(Ljava/util/HashSet;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7iQj0jjk-eFw6kYeLWA-b0HrEv8([Ljava/lang/String;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/KeyboardLayoutManager;->lambda$getKeyboardLayoutOverlay$4([Ljava/lang/String;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JJmyN_gbx7JdjQc5Ly0u88rG3wU([Ljava/lang/String;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/KeyboardLayoutManager;->lambda$getKeyCharacterMap$3([Ljava/lang/String;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZQJeHlJ93XeknKBRAs6ih8Jm3J0(Ljava/util/ArrayList;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/KeyboardLayoutManager;->lambda$getKeyboardLayouts$1(Ljava/util/ArrayList;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y-LzIDNoOFY2WLN0_gSck9p-JRA(Lcom/android/server/input/KeyboardLayoutManager;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yIVDCH8D_p14_UbLsOp9Rf_yMsQ([Landroid/hardware/input/KeyboardLayout;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/input/KeyboardLayoutManager;->lambda$getKeyboardLayout$2([Landroid/hardware/input/KeyboardLayout;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateKeyboardLayouts(Lcom/android/server/input/KeyboardLayoutManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/input/KeyboardLayoutManager;->updateKeyboardLayouts()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smisLayoutCompatibleWithLanguageTag(Landroid/hardware/input/KeyboardLayout;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->isLayoutCompatibleWithLanguageTag(Landroid/hardware/input/KeyboardLayout;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 108
    const-string v0, "KeyboardLayoutManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Lcom/android/server/input/PersistentDataStore;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeService"    # Lcom/android/server/input/NativeInputManagerService;
    .param p3, "dataStore"    # Lcom/android/server/input/PersistentDataStore;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    .line 128
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mAvailableLayouts:Ljava/util/HashSet;

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mImeInfoLock:Ljava/lang/Object;

    .line 140
    iput-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 142
    iput-object p3, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 143
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/input/KeyboardLayoutManager;)V

    const/4 v2, 0x1

    invoke-direct {v0, p4, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    .line 144
    return-void
.end method

.method private createConfiguredNotificationText(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 997
    .local p2, "layoutNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 998
    .local v0, "r":Landroid/content/res/Resources;
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 999
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .line 1010
    nop

    .line 1012
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v1, v3, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1010
    const v2, 0x1040532

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1007
    :pswitch_0
    nop

    .line 1008
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v1, v3, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1007
    const v2, 0x1040537

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1004
    :pswitch_1
    nop

    .line 1005
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1004
    const v2, 0x1040538

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1001
    :pswitch_2
    nop

    .line 1002
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1001
    const v2, 0x1040535

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDefaultKeyboardLayoutBasedOnImeInfo(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;[Landroid/hardware/input/KeyboardLayout;)Landroid/hardware/input/KeyboardLayoutSelectionResult;
    .locals 9
    .param p0, "keyboardIdentifier"    # Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    .param p1, "imeInfo"    # Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;
    .param p2, "layoutList"    # [Landroid/hardware/input/KeyboardLayout;

    .line 726
    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 729
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    const-string v3, " : "

    const-string v4, "KeyboardLayoutManager"

    if-ge v1, v0, :cond_2

    aget-object v5, p2, v1

    .line 730
    .local v5, "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result v6

    invoke-static {p0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->-$$Nest$fgetmIdentifier(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;)Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 731
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result v6

    invoke-static {p0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->-$$Nest$fgetmIdentifier(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;)Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 732
    sget-boolean v0, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultKeyboardLayoutBasedOnImeInfo() : Layout found based on vendor and product Ids. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_0
    new-instance v0, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/hardware/input/KeyboardLayoutSelectionResult;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 729
    .end local v5    # "layout":Landroid/hardware/input/KeyboardLayout;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 744
    :cond_2
    invoke-static {p0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->-$$Nest$fgetmLanguageTag(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "inputLanguageTag":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 746
    invoke-static {p0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->-$$Nest$fgetmLayoutType(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/android/server/input/KeyboardLayoutManager;->getMatchingLayoutForProvidedLanguageTagAndLayoutType([Landroid/hardware/input/KeyboardLayout;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, "layoutDesc":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 750
    sget-boolean v5, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 751
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultKeyboardLayoutBasedOnImeInfo() : Layout found based on HW information (Language tag and Layout type). "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_3
    new-instance v3, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    invoke-direct {v3, v1, v2}, Landroid/hardware/input/KeyboardLayoutSelectionResult;-><init>(Ljava/lang/String;I)V

    return-object v3

    .line 761
    .end local v1    # "layoutDesc":Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v1, :cond_6

    :cond_5
    goto :goto_2

    .line 766
    :cond_6
    iget-object v1, p1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 768
    .local v1, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLanguageTag()Landroid/icu/util/ULocale;

    move-result-object v2

    .line 770
    .local v2, "pkLocale":Landroid/icu/util/ULocale;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getCanonicalizedLanguageTag()Ljava/lang/String;

    move-result-object v5

    .line 771
    .local v5, "pkLanguageTag":Ljava/lang/String;
    :goto_1
    nop

    .line 772
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLayoutType()Ljava/lang/String;

    move-result-object v6

    .line 771
    invoke-static {p2, v5, v6}, Lcom/android/server/input/KeyboardLayoutManager;->getMatchingLayoutForProvidedLanguageTagAndLayoutType([Landroid/hardware/input/KeyboardLayout;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 773
    .local v6, "layoutDesc":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz v7, :cond_8

    .line 774
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultKeyboardLayoutBasedOnImeInfo() : Layout found based on IME locale matching. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_8
    if-eqz v6, :cond_9

    .line 780
    new-instance v3, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    const/4 v4, 0x3

    invoke-direct {v3, v6, v4}, Landroid/hardware/input/KeyboardLayoutSelectionResult;-><init>(Ljava/lang/String;I)V

    return-object v3

    .line 783
    :cond_9
    sget-object v3, Landroid/hardware/input/KeyboardLayoutSelectionResult;->FAILED:Landroid/hardware/input/KeyboardLayoutSelectionResult;

    return-object v3

    .line 763
    .end local v1    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v2    # "pkLocale":Landroid/icu/util/ULocale;
    .end local v5    # "pkLanguageTag":Ljava/lang/String;
    .end local v6    # "layoutDesc":Ljava/lang/String;
    :goto_2
    sget-object v1, Landroid/hardware/input/KeyboardLayoutSelectionResult;->FAILED:Landroid/hardware/input/KeyboardLayoutSelectionResult;

    return-object v1
.end method

.method private getInputDevice(I)Landroid/view/InputDevice;
    .locals 2
    .param p1, "deviceId"    # I

    .line 1066
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 1067
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

.method private getInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1072
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 1073
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    if-eqz v0, :cond_0

    .line 1074
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 1073
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object v1

    goto :goto_0

    .line 1074
    :cond_0
    const/4 v1, 0x0

    .line 1073
    :goto_0
    return-object v1
.end method

.method private getKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)Landroid/hardware/input/KeyboardLayoutSelectionResult;
    .locals 6
    .param p1, "keyboardIdentifier"    # Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    .param p2, "imeInfo"    # Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    .line 650
    new-instance v0, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;-><init>(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;Lcom/android/server/input/KeyboardLayoutManager-IA;)V

    invoke-virtual {v0}, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "layoutKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 652
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, "layout":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 654
    new-instance v3, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Landroid/hardware/input/KeyboardLayoutSelectionResult;-><init>(Ljava/lang/String;I)V

    monitor-exit v1

    return-object v3

    .line 662
    .end local v2    # "layout":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 657
    .restart local v2    # "layout":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GLOBAL_OVERRIDE_KEY"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 659
    .end local v2    # "layout":Ljava/lang/String;
    .local v3, "layout":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 660
    new-instance v2, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/hardware/input/KeyboardLayoutSelectionResult;-><init>(Ljava/lang/String;I)V

    monitor-exit v1

    return-object v2

    .line 659
    :cond_1
    nop

    .line 662
    .end local v3    # "layout":Ljava/lang/String;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    monitor-enter v2

    .line 666
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 667
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    monitor-exit v2

    return-object v1

    .line 679
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 670
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutListForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v1

    .line 673
    .local v1, "layoutList":[Landroid/hardware/input/KeyboardLayout;
    nop

    .line 674
    invoke-static {p1, p2, v1}, Lcom/android/server/input/KeyboardLayoutManager;->getDefaultKeyboardLayoutBasedOnImeInfo(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;[Landroid/hardware/input/KeyboardLayout;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    move-result-object v3

    .line 676
    .local v3, "result":Landroid/hardware/input/KeyboardLayoutSelectionResult;
    iget-object v4, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    monitor-exit v2

    return-object v3

    .line 679
    .end local v1    # "layoutList":[Landroid/hardware/input/KeyboardLayout;
    .end local v3    # "result":Landroid/hardware/input/KeyboardLayoutSelectionResult;
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 662
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private getKeyboardLayoutListForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)[Landroid/hardware/input/KeyboardLayout;
    .locals 9
    .param p1, "keyboardIdentifier"    # Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    .param p2, "imeInfo"    # Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    .line 573
    new-instance v0, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;-><init>(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;Lcom/android/server/input/KeyboardLayoutManager-IA;)V

    invoke-virtual {v0}, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;->toString()Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "layoutKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 580
    .local v8, "userSelectedLayout":Ljava/lang/String;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v6, "potentialLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_1

    .line 587
    :cond_1
    iget-object v0, p2, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLanguageTag()Landroid/icu/util/ULocale;

    move-result-object v0

    .line 588
    .local v0, "imeLocale":Landroid/icu/util/ULocale;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 589
    :cond_2
    iget-object v2, p2, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getCanonicalizedLanguageTag()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v7, v2

    .local v2, "imeLanguageTag":Ljava/lang/String;
    goto :goto_2

    .line 585
    .end local v0    # "imeLocale":Landroid/icu/util/ULocale;
    .end local v2    # "imeLanguageTag":Ljava/lang/String;
    :goto_1
    const-string v2, ""

    move-object v7, v2

    .line 592
    .local v7, "imeLanguageTag":Ljava/lang/String;
    :goto_2
    new-instance v3, Lcom/android/server/input/KeyboardLayoutManager$2;

    move-object v4, p0

    move-object v5, p1

    .end local p1    # "keyboardIdentifier":Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    .local v5, "keyboardIdentifier":Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    invoke-direct/range {v3 .. v8}, Lcom/android/server/input/KeyboardLayoutManager$2;-><init>(Lcom/android/server/input/KeyboardLayoutManager;Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/input/KeyboardLayoutManager;->visitAllKeyboardLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    .line 620
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 621
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/input/KeyboardLayout;

    return-object p1

    .line 580
    .end local v5    # "keyboardIdentifier":Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    .end local v6    # "potentialLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    .end local v7    # "imeLanguageTag":Ljava/lang/String;
    .end local v8    # "userSelectedLayout":Ljava/lang/String;
    .restart local p1    # "keyboardIdentifier":Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    :catchall_0
    move-exception v0

    move-object v4, p0

    move-object v5, p1

    move-object p1, v0

    .end local p1    # "keyboardIdentifier":Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    .restart local v5    # "keyboardIdentifier":Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_3
.end method

.method private static getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .locals 2
    .param p0, "languageTags"    # Ljava/lang/String;

    .line 452
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0

    .line 455
    :cond_0
    const/16 v0, 0x7c

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method private static getMatchingLayoutForProvidedLanguageTag(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "languageTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/input/KeyboardLayout;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 810
    .local p0, "layoutList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/KeyboardLayout;>;"
    invoke-static/range {p1 .. p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 811
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x0

    .line 812
    .local v1, "bestMatchingLayout":Ljava/lang/String;
    const/4 v2, 0x0

    .line 814
    .local v2, "bestMatchingLayoutScore":F
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/KeyboardLayout;

    .line 815
    .local v4, "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 816
    .local v5, "locales":Landroid/os/LocaleList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 817
    invoke-virtual {v5, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    .line 818
    .local v7, "l":Ljava/util/Locale;
    if-nez v7, :cond_0

    .line 819
    goto :goto_4

    .line 821
    :cond_0
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 823
    goto :goto_4

    .line 825
    :cond_1
    const/high16 v8, 0x3f800000    # 1.0f

    .line 826
    .local v8, "layoutScore":F
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v9, :cond_2

    .line 827
    add-float/2addr v8, v12

    goto :goto_2

    .line 828
    :cond_2
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 829
    float-to-double v13, v8

    add-double/2addr v13, v10

    double-to-float v8, v13

    .line 831
    :cond_3
    :goto_2
    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 832
    add-float/2addr v8, v12

    goto :goto_3

    .line 833
    :cond_4
    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 834
    float-to-double v12, v8

    add-double/2addr v12, v10

    double-to-float v8, v12

    .line 836
    :cond_5
    :goto_3
    cmpl-float v9, v8, v2

    if-lez v9, :cond_6

    .line 837
    move v2, v8

    .line 838
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 816
    .end local v7    # "l":Ljava/util/Locale;
    .end local v8    # "layoutScore":F
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    nop

    .line 841
    .end local v4    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v5    # "locales":Landroid/os/LocaleList;
    .end local v6    # "i":I
    goto :goto_0

    .line 842
    :cond_8
    return-object v1
.end method

.method private static getMatchingLayoutForProvidedLanguageTagAndLayoutType([Landroid/hardware/input/KeyboardLayout;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "layoutList"    # [Landroid/hardware/input/KeyboardLayout;
    .param p1, "languageTag"    # Ljava/lang/String;
    .param p2, "layoutType"    # Ljava/lang/String;

    .line 789
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/hardware/input/KeyboardLayout;->isLayoutTypeValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 790
    :cond_0
    const-string/jumbo p2, "undefined"

    .line 792
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .local v0, "layoutsFilteredByLayoutType":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/KeyboardLayout;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 794
    .local v3, "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getLayoutType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 795
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    .end local v3    # "layout":Landroid/hardware/input/KeyboardLayout;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 798
    :cond_3
    invoke-static {v0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getMatchingLayoutForProvidedLanguageTag(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 800
    .local v1, "layoutDesc":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 801
    return-object v1

    .line 804
    :cond_4
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getMatchingLayoutForProvidedLanguageTag(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getScriptCodes(Ljava/util/Locale;)[I
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 1140
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1141
    new-array v0, v0, [I

    return-object v0

    .line 1143
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1144
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/lang/UScript;->getCodeFromName(Ljava/lang/String;)I

    move-result v1

    .line 1145
    .local v1, "scriptCode":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1146
    filled-new-array {v1}, [I

    move-result-object v0

    return-object v0

    .line 1149
    .end local v1    # "scriptCode":I
    :cond_1
    invoke-static {p0}, Landroid/icu/lang/UScript;->getCode(Ljava/util/Locale;)[I

    move-result-object v1

    .line 1150
    .local v1, "scripts":[I
    if-eqz v1, :cond_2

    .line 1151
    return-object v1

    .line 1153
    :cond_2
    new-array v0, v0, [I

    return-object v0
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1045
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1060
    return v1

    .line 1057
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/input/KeyboardLayoutManager;->updateKeyboardLayouts()V

    .line 1058
    return v2

    .line 1054
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/input/KeyboardLayoutManager;->reloadKeyboardLayouts()V

    .line 1055
    return v2

    .line 1049
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v0, v1

    .line 1050
    .local v4, "deviceId":I
    invoke-virtual {p0, v4}, Lcom/android/server/input/KeyboardLayoutManager;->onInputDeviceAdded(I)V

    .line 1049
    .end local v4    # "deviceId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1052
    :cond_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static haveCommonValue([I[I)Z
    .locals 7
    .param p0, "arr1"    # [I
    .param p1, "arr2"    # [I

    .line 1157
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p0, v2

    .line 1158
    .local v3, "a1":I
    array-length v4, p1

    move v5, v1

    :goto_1
    nop

    if-ge v5, v4, :cond_1

    aget v6, p1, v5

    .line 1159
    .local v6, "a2":I
    if-ne v3, v6, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1158
    .end local v6    # "a2":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1157
    .end local v3    # "a1":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1162
    :cond_2
    return v1
.end method

.method private hideKeyboardLayoutNotification()V
    .locals 4

    .line 941
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 943
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 944
    return-void

    .line 947
    :cond_0
    const/16 v1, 0x13

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 950
    return-void
.end method

.method private static isLayoutCompatibleWithLanguageTag(Landroid/hardware/input/KeyboardLayout;Ljava/lang/String;)Z
    .locals 7
    .param p0, "layout"    # Landroid/hardware/input/KeyboardLayout;
    .param p1, "languageTag"    # Ljava/lang/String;

    .line 1110
    invoke-virtual {p0}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 1111
    .local v0, "layoutLocales":Landroid/os/LocaleList;
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_1

    .line 1117
    :cond_1
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/input/KeyboardLayoutManager;->getScriptCodes(Ljava/util/Locale;)[I

    move-result-object v1

    .line 1118
    .local v1, "scriptsFromLanguageTag":[I
    array-length v3, v1

    if-nez v3, :cond_2

    .line 1120
    return v2

    .line 1122
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1123
    invoke-virtual {v0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    .line 1124
    .local v4, "locale":Ljava/util/Locale;
    invoke-static {v4}, Lcom/android/server/input/KeyboardLayoutManager;->getScriptCodes(Ljava/util/Locale;)[I

    move-result-object v5

    .line 1125
    .local v5, "scripts":[I
    invoke-static {v5, v1}, Lcom/android/server/input/KeyboardLayoutManager;->haveCommonValue([I[I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1126
    return v2

    .line 1125
    :cond_3
    nop

    .line 1122
    .end local v4    # "locale":Ljava/util/Locale;
    .end local v5    # "scripts":[I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 1129
    .end local v3    # "i":I
    const/4 v2, 0x0

    return v2

    .line 1114
    .end local v1    # "scriptsFromLanguageTag":[I
    :goto_1
    return v2
.end method

.method private static synthetic lambda$getKeyCharacterMap$3([Ljava/lang/String;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 3
    .param p0, "overlay"    # [Ljava/lang/String;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .line 319
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    .line 320
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .local v0, "stream":Ljava/io/InputStreamReader;
    :try_start_1
    invoke-static {v0}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 323
    .end local v0    # "stream":Ljava/io/InputStreamReader;
    goto :goto_1

    .line 322
    :catch_0
    move-exception v0

    goto :goto_1

    .line 319
    .restart local v0    # "stream":Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "overlay":[Ljava/lang/String;
    .end local p1    # "resources":Landroid/content/res/Resources;
    .end local p2    # "keyboardLayoutResId":I
    .end local p3    # "layout":Landroid/hardware/input/KeyboardLayout;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 324
    .end local v0    # "stream":Ljava/io/InputStreamReader;
    .restart local p0    # "overlay":[Ljava/lang/String;
    .restart local p1    # "resources":Landroid/content/res/Resources;
    .restart local p2    # "keyboardLayoutResId":I
    .restart local p3    # "layout":Landroid/hardware/input/KeyboardLayout;
    :goto_1
    return-void
.end method

.method private static synthetic lambda$getKeyboardLayout$2([Landroid/hardware/input/KeyboardLayout;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 1
    .param p0, "result"    # [Landroid/hardware/input/KeyboardLayout;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .line 306
    const/4 v0, 0x0

    aput-object p3, p0, v0

    return-void
.end method

.method private static synthetic lambda$getKeyboardLayoutOverlay$4([Ljava/lang/String;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 3
    .param p0, "result"    # [Ljava/lang/String;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .line 476
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    .line 477
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .local v0, "stream":Ljava/io/InputStreamReader;
    :try_start_1
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p0, v2

    .line 479
    invoke-static {v0}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 481
    .end local v0    # "stream":Ljava/io/InputStreamReader;
    goto :goto_1

    .line 480
    :catch_0
    move-exception v0

    goto :goto_1

    .line 476
    .restart local v0    # "stream":Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "result":[Ljava/lang/String;
    .end local p1    # "resources":Landroid/content/res/Resources;
    .end local p2    # "keyboardLayoutResId":I
    .end local p3    # "layout":Landroid/hardware/input/KeyboardLayout;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 482
    .end local v0    # "stream":Ljava/io/InputStreamReader;
    .restart local p0    # "result":[Ljava/lang/String;
    .restart local p1    # "resources":Landroid/content/res/Resources;
    .restart local p2    # "keyboardLayoutResId":I
    .restart local p3    # "layout":Landroid/hardware/input/KeyboardLayout;
    :goto_1
    return-void
.end method

.method private static synthetic lambda$getKeyboardLayouts$1(Ljava/util/ArrayList;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 0
    .param p0, "list"    # Ljava/util/ArrayList;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .line 294
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$updateKeyboardLayouts$0(Ljava/util/HashSet;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 1
    .param p0, "availableKeyboardLayouts"    # Ljava/util/HashSet;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "keyboardLayoutResId"    # I
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .line 265
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private logKeyboardConfigurationEvent(Landroid/view/InputDevice;Ljava/util/List;Ljava/util/List;Z)V
    .locals 6
    .param p1, "inputDevice"    # Landroid/view/InputDevice;
    .param p4, "isFirstConfiguration"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InputDevice;",
            "Ljava/util/List<",
            "Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/input/KeyboardLayoutSelectionResult;",
            ">;Z)V"
        }
    .end annotation

    .line 1020
    .local p2, "imeInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;>;"
    .local p3, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/KeyboardLayoutSelectionResult;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_1

    .line 1023
    :cond_1
    new-instance v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;

    invoke-direct {v0, p1}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;-><init>(Landroid/view/InputDevice;)V

    .line 1024
    invoke-virtual {v0, p4}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->setIsFirstTimeConfiguration(Z)Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;

    move-result-object v0

    .line 1026
    .local v0, "configurationEventBuilder":Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1027
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    .line 1028
    .local v2, "result":Landroid/hardware/input/KeyboardLayoutSelectionResult;
    const/4 v3, 0x0

    .line 1029
    .local v3, "layoutName":Ljava/lang/String;
    const/4 v4, 0x4

    .line 1030
    .local v4, "layoutSelectionCriteria":I
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1031
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getSelectionCriteria()I

    move-result v4

    .line 1032
    nop

    .line 1033
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 1032
    invoke-static {v5}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;

    move-result-object v5

    .line 1034
    .local v5, "d":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;
    if-eqz v5, :cond_2

    .line 1035
    iget-object v3, v5, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    .line 1038
    .end local v5    # "d":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    iget-object v5, v5, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->addLayoutSelection(Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;I)Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;

    .line 1026
    .end local v2    # "result":Landroid/hardware/input/KeyboardLayoutSelectionResult;
    .end local v3    # "layoutName":Ljava/lang/String;
    .end local v4    # "layoutSelectionCriteria":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 1041
    .end local v1    # "i":I
    invoke-virtual {v0}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->build()Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/input/KeyboardMetricsCollector;->logKeyboardConfiguredAtom(Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;)V

    .line 1042
    return-void

    .line 1021
    .end local v0    # "configurationEventBuilder":Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;
    :goto_1
    return-void
.end method

.method private maybeUpdateNotification()V
    .locals 5

    .line 854
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 855
    .local v0, "configurations":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 856
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 857
    .local v2, "deviceId":I
    iget-object v3, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;

    .line 858
    .local v3, "config":Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;
    invoke-virtual {p0, v2}, Lcom/android/server/input/KeyboardLayoutManager;->isVirtualDevice(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 859
    goto :goto_1

    .line 863
    :cond_0
    invoke-static {v3}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->-$$Nest$mhasConfiguredLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 864
    invoke-direct {p0}, Lcom/android/server/input/KeyboardLayoutManager;->showMissingKeyboardLayoutNotification()V

    .line 865
    return-void

    .line 867
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    .end local v2    # "deviceId":I
    .end local v3    # "config":Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 869
    .end local v1    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 870
    invoke-direct {p0}, Lcom/android/server/input/KeyboardLayoutManager;->hideKeyboardLayoutNotification()V

    .line 871
    return-void

    .line 873
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/input/KeyboardLayoutManager;->showConfiguredKeyboardLayoutNotification(Ljava/util/List;)V

    .line 874
    return-void
.end method

.method private onInputDeviceChangedInternal(IZ)V
    .locals 12
    .param p1, "deviceId"    # I
    .param p2, "shouldLogConfiguration"    # Z

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 195
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto/16 :goto_6

    .line 198
    :cond_1
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/view/InputDevice;Lcom/android/server/input/KeyboardLayoutManager-IA;)V

    .line 199
    .local v1, "keyboardIdentifier":Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    iget-object v3, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;

    .line 200
    .local v3, "config":Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;
    if-nez v3, :cond_2

    .line 201
    new-instance v4, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;

    invoke-direct {v4, p1, v2}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;-><init>(ILcom/android/server/input/KeyboardLayoutManager-IA;)V

    move-object v3, v4

    .line 202
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    :cond_2
    const/4 v2, 0x0

    .line 206
    .local v2, "needToShowNotification":Z
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 207
    .local v4, "selectedLayouts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager;->getImeInfoListForLayoutMapping()Ljava/util/List;

    move-result-object v5

    .line 208
    .local v5, "imeInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v6, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/KeyboardLayoutSelectionResult;>;"
    const/4 v7, 0x0

    .line 210
    .local v7, "hasMissingLayout":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    .line 212
    .local v9, "imeInfo":Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;
    invoke-direct {p0, v1, v9}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    move-result-object v10

    .line 214
    .local v10, "result":Landroid/hardware/input/KeyboardLayoutSelectionResult;
    invoke-virtual {v10}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 215
    invoke-virtual {v10}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 217
    :cond_3
    const/4 v7, 0x1

    .line 219
    :goto_1
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v9    # "imeInfo":Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;
    .end local v10    # "result":Landroid/hardware/input/KeyboardLayoutSelectionResult;
    goto :goto_0

    .line 222
    :cond_4
    sget-boolean v8, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz v8, :cond_5

    .line 223
    const-string v8, "KeyboardLayoutManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Layouts selected for input device: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " -> selectedLayouts: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_5
    if-eqz v7, :cond_6

    .line 231
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 234
    :cond_6
    invoke-static {v3, v4}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->-$$Nest$msetConfiguredLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;Ljava/util/Set;)V

    .line 236
    iget-object v8, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v8

    .line 238
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->toString()Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, "key":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v10, v9, v4}, Lcom/android/server/input/PersistentDataStore;->setSelectedKeyboardLayouts(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 242
    const/4 v2, 0x1

    .line 245
    :cond_7
    if-eqz p2, :cond_9

    .line 246
    iget-object v10, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 247
    invoke-virtual {v10, v9}, Lcom/android/server/input/PersistentDataStore;->hasInputDeviceEntry(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    const/4 v10, 0x1

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    .line 246
    :goto_2
    invoke-direct {p0, v0, v5, v6, v10}, Lcom/android/server/input/KeyboardLayoutManager;->logKeyboardConfigurationEvent(Landroid/view/InputDevice;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 250
    .end local v9    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v9

    goto :goto_4

    :cond_9
    :goto_3
    :try_start_1
    iget-object v9, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v9}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 251
    nop

    .line 252
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 253
    if-eqz v2, :cond_a

    .line 254
    invoke-direct {p0}, Lcom/android/server/input/KeyboardLayoutManager;->maybeUpdateNotification()V

    .line 258
    :cond_a
    return-void

    .line 252
    :catchall_1
    move-exception v9

    goto :goto_5

    .line 250
    :goto_4
    :try_start_2
    iget-object v10, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v10}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 251
    nop

    .end local v0    # "inputDevice":Landroid/view/InputDevice;
    .end local v1    # "keyboardIdentifier":Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    .end local v2    # "needToShowNotification":Z
    .end local v3    # "config":Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;
    .end local v4    # "selectedLayouts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "imeInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;>;"
    .end local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/KeyboardLayoutSelectionResult;>;"
    .end local v7    # "hasMissingLayout":Z
    .end local p0    # "this":Lcom/android/server/input/KeyboardLayoutManager;
    .end local p1    # "deviceId":I
    .end local p2    # "shouldLogConfiguration":Z
    throw v9

    .line 252
    .restart local v0    # "inputDevice":Landroid/view/InputDevice;
    .restart local v1    # "keyboardIdentifier":Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    .restart local v2    # "needToShowNotification":Z
    .restart local v3    # "config":Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;
    .restart local v4    # "selectedLayouts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "imeInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;>;"
    .restart local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/KeyboardLayoutSelectionResult;>;"
    .restart local v7    # "hasMissingLayout":Z
    .restart local p0    # "this":Lcom/android/server/input/KeyboardLayoutManager;
    .restart local p1    # "deviceId":I
    .restart local p2    # "shouldLogConfiguration":Z
    :goto_5
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    .line 196
    .end local v1    # "keyboardIdentifier":Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    .end local v2    # "needToShowNotification":Z
    .end local v3    # "config":Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;
    .end local v4    # "selectedLayouts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "imeInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;>;"
    .end local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/KeyboardLayoutSelectionResult;>;"
    .end local v7    # "hasMissingLayout":Z
    :goto_6
    return-void
.end method

.method private reloadKeyboardLayouts()V
    .locals 2

    .line 846
    sget-boolean v0, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 847
    const-string v0, "KeyboardLayoutManager"

    const-string v1, "Reloading keyboard layouts."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->reloadKeyboardLayouts()V

    .line 850
    return-void
.end method

.method private setKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "identifier"    # Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    .param p2, "datastoreKey"    # Ljava/lang/String;
    .param p3, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 540
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 542
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setKeyboardLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    sget-boolean v1, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 547
    const-string v1, "KeyboardLayoutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setKeyboardLayoutForInputDevice() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " keyboardLayoutDescriptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 554
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 551
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 555
    nop

    .line 556
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 554
    :goto_1
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 555
    nop

    .end local p0    # "this":Lcom/android/server/input/KeyboardLayoutManager;
    .end local p1    # "identifier":Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    .end local p2    # "datastoreKey":Ljava/lang/String;
    .end local p3    # "keyboardLayoutDescriptor":Ljava/lang/String;
    throw v1

    .line 556
    .restart local p0    # "this":Lcom/android/server/input/KeyboardLayoutManager;
    .restart local p1    # "identifier":Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    .restart local p2    # "datastoreKey":Ljava/lang/String;
    .restart local p3    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method private showConfiguredKeyboardLayoutNotification(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 955
    .local p1, "configurations":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 957
    .local v0, "r":Landroid/content/res/Resources;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 958
    nop

    .line 959
    const v1, 0x1040534

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 960
    const v2, 0x1040533

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 958
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/input/KeyboardLayoutManager;->showKeyboardLayoutNotification(Ljava/lang/String;Ljava/lang/String;Landroid/view/InputDevice;)V

    .line 962
    return-void

    .line 965
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;

    .line 966
    .local v1, "config":Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;
    invoke-static {v1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->-$$Nest$mgetDeviceId(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 967
    .local v2, "inputDevice":Landroid/view/InputDevice;
    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->-$$Nest$mhasConfiguredLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    goto :goto_1

    .line 971
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 972
    .local v3, "layoutNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->-$$Nest$mgetConfiguredLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 973
    .local v5, "layoutDesc":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    .line 974
    .local v6, "kl":Landroid/hardware/input/KeyboardLayout;
    if-nez v6, :cond_3

    .line 982
    return-void

    .line 984
    :cond_3
    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    .end local v5    # "layoutDesc":Ljava/lang/String;
    .end local v6    # "kl":Landroid/hardware/input/KeyboardLayout;
    goto :goto_0

    .line 986
    :cond_4
    nop

    .line 989
    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 987
    const v5, 0x1040536

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 990
    invoke-direct {p0, v5, v3}, Lcom/android/server/input/KeyboardLayoutManager;->createConfiguredNotificationText(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 986
    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/input/KeyboardLayoutManager;->showKeyboardLayoutNotification(Ljava/lang/String;Ljava/lang/String;Landroid/view/InputDevice;)V

    .line 992
    return-void

    .line 968
    .end local v3    # "layoutNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-void
.end method

.method private showKeyboardLayoutNotification(Ljava/lang/String;Ljava/lang/String;Landroid/view/InputDevice;)V
    .locals 9
    .param p1, "intentTitle"    # Ljava/lang/String;
    .param p2, "intentContent"    # Ljava/lang/String;
    .param p3, "targetDevice"    # Landroid/view/InputDevice;

    .line 904
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 906
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 907
    return-void

    .line 910
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.HARD_KEYBOARD_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    .line 912
    .local v5, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_1

    .line 913
    const-string/jumbo v1, "input_device_identifier"

    invoke-virtual {p3}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 914
    const-string v1, "com.android.settings.inputmethod.EXTRA_ENTRYPOINT"

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 918
    :cond_1
    const/high16 v1, 0x14200000

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 921
    iget-object v3, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/high16 v6, 0x4000000

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 924
    .local v1, "keyboardLayoutIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const-string v4, "PHYSICAL_KEYBOARD"

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 926
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 927
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 928
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 929
    const v3, 0x10805d0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 930
    const v4, 0x106001c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 932
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 933
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 934
    .local v2, "notification":Landroid/app/Notification;
    const/16 v3, 0x13

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3, v2, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 937
    return-void
.end method

.method private showMissingKeyboardLayoutNotification()V
    .locals 5

    .line 878
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 879
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x1040998

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 882
    .local v1, "missingKeyboardLayoutNotificationContent":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 883
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 884
    .local v2, "device":Landroid/view/InputDevice;
    if-nez v2, :cond_0

    .line 885
    return-void

    .line 887
    :cond_0
    nop

    .line 890
    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 888
    const v4, 0x1040999

    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 887
    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/input/KeyboardLayoutManager;->showKeyboardLayoutNotification(Ljava/lang/String;Ljava/lang/String;Landroid/view/InputDevice;)V

    .line 893
    .end local v2    # "device":Landroid/view/InputDevice;
    goto :goto_0

    .line 894
    :cond_1
    nop

    .line 895
    const v2, 0x104099b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 894
    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/input/KeyboardLayoutManager;->showKeyboardLayoutNotification(Ljava/lang/String;Ljava/lang/String;Landroid/view/InputDevice;)V

    .line 899
    :goto_0
    return-void
.end method

.method private updateKeyboardLayouts()V
    .locals 4

    .line 263
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 264
    .local v0, "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda5;-><init>(Ljava/util/HashSet;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/KeyboardLayoutManager;->visitAllKeyboardLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    .line 268
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mAvailableLayouts:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    return-void

    .line 271
    :cond_0
    iput-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mAvailableLayouts:Ljava/util/HashSet;

    .line 273
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 277
    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 278
    nop

    .line 279
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 281
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    monitor-enter v2

    .line 284
    :try_start_2
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 285
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    invoke-direct {p0}, Lcom/android/server/input/KeyboardLayoutManager;->reloadKeyboardLayouts()V

    .line 289
    return-void

    .line 285
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 279
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 277
    :catchall_2
    move-exception v2

    :try_start_4
    iget-object v3, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 278
    nop

    .end local v0    # "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/input/KeyboardLayoutManager;
    throw v2

    .line 279
    .restart local v0    # "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/input/KeyboardLayoutManager;
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method private visitAllKeyboardLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V
    .locals 9
    .param p1, "visitor"    # Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;

    .line 332
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 333
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0xc0080

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 337
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_1

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_0

    .line 338
    goto :goto_0

    .line 340
    :cond_0
    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 341
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget v5, v8, Landroid/content/pm/ResolveInfo;->priority:I

    .line 342
    .local v5, "priority":I
    const/4 v4, 0x0

    move-object v1, p0

    move-object v6, p1

    .end local p1    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    .local v6, "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/KeyboardLayoutManager;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    .line 343
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "priority":I
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 337
    .end local v6    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local p1    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    :cond_1
    move-object v6, p1

    .end local p1    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    .restart local v6    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    goto :goto_0

    .line 344
    .end local v6    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local p1    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    :cond_2
    return-void
.end method

.method private visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V
    .locals 8
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .param p2, "visitor"    # Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;

    .line 348
    invoke-static {p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;

    move-result-object v1

    .line 349
    .local v1, "d":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;
    if-eqz v1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 352
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, v1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0xc0080

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 357
    .local v4, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v5, v1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p2

    .end local p2    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    .local v7, "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    :try_start_1
    invoke-direct/range {v2 .. v7}, Lcom/android/server/input/KeyboardLayoutManager;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 359
    .end local v4    # "receiver":Landroid/content/pm/ActivityInfo;
    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v7    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    .restart local p2    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    :catch_1
    move-exception v0

    move-object v7, p2

    .end local p2    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    .restart local v7    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    goto :goto_0

    .line 349
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    .restart local p2    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    :cond_0
    move-object v7, p2

    .line 361
    .end local p2    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    .restart local v7    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    :goto_0
    return-void
.end method

.method private visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V
    .locals 24
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "receiver"    # Landroid/content/pm/ActivityInfo;
    .param p3, "keyboardName"    # Ljava/lang/String;
    .param p4, "requestedPriority"    # I
    .param p5, "visitor"    # Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;

    .line 365
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 366
    .local v4, "metaData":Landroid/os/Bundle;
    if-nez v4, :cond_0

    .line 367
    return-void

    .line 370
    :cond_0
    const-string v0, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 371
    .local v5, "configResId":I
    const-string v6, "/"

    const-string v7, "KeyboardLayoutManager"

    if-nez v5, :cond_1

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void

    .line 377
    :cond_1
    invoke-virtual {v2, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 378
    .local v8, "receiverLabel":Ljava/lang/CharSequence;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    move-object v12, v0

    .line 380
    .local v12, "collection":Ljava/lang/String;
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v9, 0x1

    and-int/2addr v0, v9

    if-eqz v0, :cond_3

    .line 381
    move/from16 v0, p4

    move v13, v0

    .local v0, "priority":I
    goto :goto_1

    .line 383
    .end local v0    # "priority":I
    :cond_3
    const/4 v0, 0x0

    move v13, v0

    .line 387
    .local v13, "priority":I
    :goto_1
    :try_start_0
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    move-object v10, v0

    .line 388
    .local v10, "resources":Landroid/content/res/Resources;
    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v11, v0

    .line 389
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    const-string/jumbo v0, "keyboard-layouts"

    invoke-static {v11, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 392
    :goto_2
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 393
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-object v14, v0

    .line 394
    .local v14, "element":Ljava/lang/String;
    if-nez v14, :cond_4

    .line 395
    nop

    .line 443
    .end local v14    # "element":Ljava/lang/String;
    :try_start_2
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 447
    .end local v10    # "resources":Landroid/content/res/Resources;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v3, p5

    move-object/from16 v20, v4

    move/from16 v21, v5

    goto/16 :goto_b

    .line 444
    :catch_0
    move-exception v0

    move-object/from16 v3, p5

    move-object/from16 v20, v4

    move/from16 v21, v5

    goto/16 :goto_a

    .line 397
    .restart local v10    # "resources":Landroid/content/res/Resources;
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v14    # "element":Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string/jumbo v0, "keyboard-layout"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 398
    sget-object v0, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    invoke-virtual {v10, v11, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-object v15, v0

    .line 401
    .local v15, "a":Landroid/content/res/TypedArray;
    :try_start_4
    invoke-virtual {v15, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "name":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v15, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 405
    .local v17, "label":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-virtual {v15, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 408
    .local v1, "keyboardLayoutResId":I
    const/4 v9, 0x3

    invoke-virtual {v15, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v9

    .line 410
    .local v19, "languageTags":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/input/KeyboardLayoutManager;->getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 411
    .local v9, "locales":Landroid/os/LocaleList;
    move-object/from16 v20, v4

    .end local v4    # "metaData":Landroid/os/Bundle;
    .local v20, "metaData":Landroid/os/Bundle;
    const/4 v4, 0x4

    move/from16 v21, v5

    const/4 v5, 0x0

    .end local v5    # "configResId":I
    .local v21, "configResId":I
    :try_start_5
    invoke-virtual {v15, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 413
    .local v4, "layoutType":I
    const/4 v5, 0x6

    move/from16 v18, v4

    .end local v4    # "layoutType":I
    .local v18, "layoutType":I
    const/4 v4, -0x1

    invoke-virtual {v15, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 415
    .local v5, "vid":I
    move/from16 v22, v5

    .end local v5    # "vid":I
    .local v22, "vid":I
    const/4 v5, 0x5

    invoke-virtual {v15, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 418
    .local v4, "pid":I
    if-eqz v0, :cond_8

    if-eqz v17, :cond_8

    if-nez v1, :cond_5

    move-object/from16 v3, p5

    move-object v5, v10

    move-object/from16 v23, v15

    move/from16 v15, v18

    move/from16 v16, v22

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    move/from16 v17, v4

    move-object v4, v14

    move-object v14, v9

    goto/16 :goto_4

    .line 424
    :cond_5
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v23, v4

    .end local v4    # "pid":I
    .local v23, "pid":I
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v5, v4, v0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 426
    .local v4, "descriptor":Ljava/lang/String;
    if-eqz v3, :cond_6

    :try_start_6
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_7

    :cond_6
    goto :goto_3

    :cond_7
    move-object/from16 v3, p5

    move-object v5, v10

    move-object/from16 v18, v11

    move-object v4, v14

    move-object/from16 v23, v15

    goto/16 :goto_5

    .line 435
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "keyboardLayoutResId":I
    .end local v4    # "descriptor":Ljava/lang/String;
    .end local v9    # "locales":Landroid/os/LocaleList;
    .end local v17    # "label":Ljava/lang/String;
    .end local v18    # "layoutType":I
    .end local v19    # "languageTags":Ljava/lang/String;
    .end local v22    # "vid":I
    .end local v23    # "pid":I
    :catchall_0
    move-exception v0

    move-object/from16 v3, p5

    move-object v5, v10

    move-object/from16 v18, v11

    move-object v4, v14

    move-object/from16 v23, v15

    goto/16 :goto_6

    .line 427
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "keyboardLayoutResId":I
    .restart local v4    # "descriptor":Ljava/lang/String;
    .restart local v9    # "locales":Landroid/os/LocaleList;
    .restart local v17    # "label":Ljava/lang/String;
    .restart local v18    # "layoutType":I
    .restart local v19    # "languageTags":Ljava/lang/String;
    .restart local v22    # "vid":I
    .restart local v23    # "pid":I
    :goto_3
    move-object v5, v14

    move-object v14, v9

    .end local v9    # "locales":Landroid/os/LocaleList;
    .local v5, "element":Ljava/lang/String;
    .local v14, "locales":Landroid/os/LocaleList;
    :try_start_7
    new-instance v9, Landroid/hardware/input/KeyboardLayout;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v16, v10

    move-object v10, v4

    move-object v4, v5

    move-object/from16 v5, v16

    move/from16 v16, v18

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    move/from16 v17, v23

    move-object/from16 v23, v15

    move/from16 v15, v16

    move/from16 v16, v22

    .end local v22    # "vid":I
    .local v4, "element":Ljava/lang/String;
    .local v5, "resources":Landroid/content/res/Resources;
    .local v10, "descriptor":Ljava/lang/String;
    .local v11, "label":Ljava/lang/String;
    .local v15, "layoutType":I
    .local v16, "vid":I
    .local v17, "pid":I
    .local v18, "parser":Landroid/content/res/XmlResourceParser;
    .local v23, "a":Landroid/content/res/TypedArray;
    :try_start_8
    invoke-direct/range {v9 .. v17}, Landroid/hardware/input/KeyboardLayout;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/LocaleList;III)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 430
    .local v9, "layout":Landroid/hardware/input/KeyboardLayout;
    move-object/from16 v3, p5

    :try_start_9
    invoke-interface {v3, v5, v1, v9}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    goto :goto_5

    .line 435
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "keyboardLayoutResId":I
    .end local v9    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v10    # "descriptor":Ljava/lang/String;
    .end local v11    # "label":Ljava/lang/String;
    .end local v14    # "locales":Landroid/os/LocaleList;
    .end local v15    # "layoutType":I
    .end local v16    # "vid":I
    .end local v17    # "pid":I
    .end local v19    # "languageTags":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v3, p5

    goto/16 :goto_6

    .end local v4    # "element":Ljava/lang/String;
    .end local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v23    # "a":Landroid/content/res/TypedArray;
    .local v5, "element":Ljava/lang/String;
    .local v10, "resources":Landroid/content/res/Resources;
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    .local v15, "a":Landroid/content/res/TypedArray;
    :catchall_3
    move-exception v0

    move-object/from16 v3, p5

    move-object v4, v5

    move-object v5, v10

    move-object/from16 v18, v11

    move-object/from16 v23, v15

    .end local v10    # "resources":Landroid/content/res/Resources;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v15    # "a":Landroid/content/res/TypedArray;
    .restart local v4    # "element":Ljava/lang/String;
    .local v5, "resources":Landroid/content/res/Resources;
    .restart local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v23    # "a":Landroid/content/res/TypedArray;
    goto :goto_6

    .end local v4    # "element":Ljava/lang/String;
    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v23    # "a":Landroid/content/res/TypedArray;
    .restart local v10    # "resources":Landroid/content/res/Resources;
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .local v14, "element":Ljava/lang/String;
    .restart local v15    # "a":Landroid/content/res/TypedArray;
    :catchall_4
    move-exception v0

    move-object/from16 v3, p5

    move-object v5, v10

    move-object/from16 v18, v11

    move-object v4, v14

    move-object/from16 v23, v15

    .end local v10    # "resources":Landroid/content/res/Resources;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v14    # "element":Ljava/lang/String;
    .end local v15    # "a":Landroid/content/res/TypedArray;
    .restart local v4    # "element":Ljava/lang/String;
    .restart local v5    # "resources":Landroid/content/res/Resources;
    .restart local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v23    # "a":Landroid/content/res/TypedArray;
    goto :goto_6

    .line 418
    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v23    # "a":Landroid/content/res/TypedArray;
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "keyboardLayoutResId":I
    .local v4, "pid":I
    .local v9, "locales":Landroid/os/LocaleList;
    .restart local v10    # "resources":Landroid/content/res/Resources;
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v14    # "element":Ljava/lang/String;
    .restart local v15    # "a":Landroid/content/res/TypedArray;
    .local v17, "label":Ljava/lang/String;
    .local v18, "layoutType":I
    .restart local v19    # "languageTags":Ljava/lang/String;
    .restart local v22    # "vid":I
    :cond_8
    move-object/from16 v3, p5

    move-object v5, v10

    move-object/from16 v23, v15

    move/from16 v15, v18

    move/from16 v16, v22

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    move/from16 v17, v4

    move-object v4, v14

    move-object v14, v9

    .line 419
    .end local v9    # "locales":Landroid/os/LocaleList;
    .end local v10    # "resources":Landroid/content/res/Resources;
    .end local v22    # "vid":I
    .local v4, "element":Ljava/lang/String;
    .restart local v5    # "resources":Landroid/content/res/Resources;
    .local v11, "label":Ljava/lang/String;
    .local v14, "locales":Landroid/os/LocaleList;
    .local v15, "layoutType":I
    .restart local v16    # "vid":I
    .local v17, "pid":I
    .local v18, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v23    # "a":Landroid/content/res/TypedArray;
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 435
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "keyboardLayoutResId":I
    .end local v11    # "label":Ljava/lang/String;
    .end local v14    # "locales":Landroid/os/LocaleList;
    .end local v15    # "layoutType":I
    .end local v16    # "vid":I
    .end local v17    # "pid":I
    .end local v19    # "languageTags":Ljava/lang/String;
    :goto_5
    :try_start_a
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    .line 436
    nop

    .line 437
    .end local v23    # "a":Landroid/content/res/TypedArray;
    goto :goto_7

    .line 388
    .end local v4    # "element":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object v1, v0

    goto/16 :goto_8

    .line 435
    .end local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v20    # "metaData":Landroid/os/Bundle;
    .end local v21    # "configResId":I
    .local v4, "metaData":Landroid/os/Bundle;
    .local v5, "configResId":I
    .restart local v10    # "resources":Landroid/content/res/Resources;
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    .local v14, "element":Ljava/lang/String;
    .local v15, "a":Landroid/content/res/TypedArray;
    :catchall_6
    move-exception v0

    move-object/from16 v3, p5

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object v5, v10

    move-object/from16 v18, v11

    move-object v4, v14

    move-object/from16 v23, v15

    .end local v10    # "resources":Landroid/content/res/Resources;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v14    # "element":Ljava/lang/String;
    .end local v15    # "a":Landroid/content/res/TypedArray;
    .local v4, "element":Ljava/lang/String;
    .local v5, "resources":Landroid/content/res/Resources;
    .restart local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v20    # "metaData":Landroid/os/Bundle;
    .restart local v21    # "configResId":I
    .restart local v23    # "a":Landroid/content/res/TypedArray;
    :goto_6
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    .line 436
    nop

    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v8    # "receiverLabel":Ljava/lang/CharSequence;
    .end local v12    # "collection":Ljava/lang/String;
    .end local v13    # "priority":I
    .end local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v20    # "metaData":Landroid/os/Bundle;
    .end local v21    # "configResId":I
    .end local p0    # "this":Lcom/android/server/input/KeyboardLayoutManager;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    .end local p3    # "keyboardName":Ljava/lang/String;
    .end local p4    # "requestedPriority":I
    .end local p5    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    throw v0

    .line 388
    .end local v23    # "a":Landroid/content/res/TypedArray;
    .local v4, "metaData":Landroid/os/Bundle;
    .local v5, "configResId":I
    .restart local v8    # "receiverLabel":Ljava/lang/CharSequence;
    .restart local v10    # "resources":Landroid/content/res/Resources;
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v12    # "collection":Ljava/lang/String;
    .restart local v13    # "priority":I
    .restart local p0    # "this":Lcom/android/server/input/KeyboardLayoutManager;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    .restart local p3    # "keyboardName":Ljava/lang/String;
    .restart local p4    # "requestedPriority":I
    .restart local p5    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    :catchall_7
    move-exception v0

    move-object/from16 v3, p5

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object v5, v10

    move-object/from16 v18, v11

    move-object v1, v0

    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v10    # "resources":Landroid/content/res/Resources;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "resources":Landroid/content/res/Resources;
    .restart local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v20    # "metaData":Landroid/os/Bundle;
    .restart local v21    # "configResId":I
    goto :goto_8

    .line 438
    .end local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v20    # "metaData":Landroid/os/Bundle;
    .end local v21    # "configResId":I
    .restart local v4    # "metaData":Landroid/os/Bundle;
    .local v5, "configResId":I
    .restart local v10    # "resources":Landroid/content/res/Resources;
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v14    # "element":Ljava/lang/String;
    :cond_9
    move-object/from16 v3, p5

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object v5, v10

    move-object/from16 v18, v11

    move-object v4, v14

    .end local v10    # "resources":Landroid/content/res/Resources;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v14    # "element":Ljava/lang/String;
    .local v4, "element":Ljava/lang/String;
    .local v5, "resources":Landroid/content/res/Resources;
    .restart local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v20    # "metaData":Landroid/os/Bundle;
    .restart local v21    # "configResId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping unrecognized element \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' in keyboard layout resource from receiver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 442
    .end local v4    # "element":Ljava/lang/String;
    :goto_7
    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v10, v5

    move-object/from16 v11, v18

    move-object/from16 v4, v20

    move/from16 v5, v21

    const/4 v9, 0x1

    goto/16 :goto_2

    .line 388
    :goto_8
    if-eqz v18, :cond_a

    :try_start_b
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v0

    :try_start_c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 444
    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v18    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v0

    goto :goto_a

    .line 388
    .restart local v5    # "resources":Landroid/content/res/Resources;
    .restart local v18    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_a
    :goto_9
    nop

    .end local v8    # "receiverLabel":Ljava/lang/CharSequence;
    .end local v12    # "collection":Ljava/lang/String;
    .end local v13    # "priority":I
    .end local v20    # "metaData":Landroid/os/Bundle;
    .end local v21    # "configResId":I
    .end local p0    # "this":Lcom/android/server/input/KeyboardLayoutManager;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    .end local p3    # "keyboardName":Ljava/lang/String;
    .end local p4    # "requestedPriority":I
    .end local p5    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    throw v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 444
    .end local v18    # "parser":Landroid/content/res/XmlResourceParser;
    .local v4, "metaData":Landroid/os/Bundle;
    .local v5, "configResId":I
    .restart local v8    # "receiverLabel":Ljava/lang/CharSequence;
    .restart local v12    # "collection":Ljava/lang/String;
    .restart local v13    # "priority":I
    .restart local p0    # "this":Lcom/android/server/input/KeyboardLayoutManager;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    .restart local p3    # "keyboardName":Ljava/lang/String;
    .restart local p4    # "requestedPriority":I
    .restart local p5    # "visitor":Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;
    :catch_2
    move-exception v0

    move-object/from16 v3, p5

    move-object/from16 v20, v4

    move/from16 v21, v5

    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v5    # "configResId":I
    .restart local v20    # "metaData":Landroid/os/Bundle;
    .restart local v21    # "configResId":I
    :goto_a
    nop

    .line 445
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse keyboard layout resource from receiver "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_b
    return-void
.end method


# virtual methods
.method public getImeInfoListForLayoutMapping()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;",
            ">;"
        }
    .end annotation

    .line 1080
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    .local v0, "imeInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;>;"
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    .line 1082
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 1081
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1087
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v2

    .line 1088
    .local v2, "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 1089
    .local v5, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1091
    .local v6, "userId":I
    invoke-virtual {v2, v6}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 1093
    .local v8, "imeInfo":Landroid/view/inputmethod/InputMethodInfo;
    nop

    .line 1095
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 1094
    invoke-virtual {v2, v9, v3, v6}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getEnabledInputMethodSubtypeListAsUser(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v9

    .line 1097
    .local v9, "imeSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    nop

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodSubtype;

    .line 1098
    .local v11, "imeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->isSuitableForPhysicalKeyboardLayoutMapping()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1099
    goto :goto_2

    .line 1101
    :cond_0
    new-instance v12, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    invoke-direct {v12, v6, v8, v11}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    .end local v11    # "imeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_2

    .line 1103
    .end local v8    # "imeInfo":Landroid/view/inputmethod/InputMethodInfo;
    .end local v9    # "imeSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_1
    goto :goto_1

    .line 1104
    .end local v5    # "userHandle":Landroid/os/UserHandle;
    .end local v6    # "userId":I
    :cond_2
    goto :goto_0

    .line 1105
    :cond_3
    return-object v0
.end method

.method public getKeyCharacterMap(Ljava/lang/String;)Landroid/view/KeyCharacterMap;
    .locals 3
    .param p1, "layoutDescriptor"    # Ljava/lang/String;

    .line 316
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 317
    .local v0, "overlay":[Ljava/lang/String;
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda3;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/input/KeyboardLayoutManager;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    .line 325
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    const/4 v1, -0x1

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    return-object v1

    .line 328
    :cond_0
    aget-object v1, v0, v1

    invoke-static {p1, v1}, Landroid/view/KeyCharacterMap;->load(Ljava/lang/String;Ljava/lang/String;)Landroid/view/KeyCharacterMap;

    move-result-object v1

    return-object v1
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 4
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/input/KeyboardLayout;

    .line 305
    .local v0, "result":[Landroid/hardware/input/KeyboardLayout;
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda0;-><init>([Landroid/hardware/input/KeyboardLayout;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/input/KeyboardLayoutManager;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    .line 307
    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyboardLayoutManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    aget-object v1, v0, v1

    return-object v1
.end method

.method public getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "userId"    # I
    .param p3, "imeInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p4, "imeSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 496
    invoke-direct {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object v0

    .line 497
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 500
    :cond_1
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/view/InputDevice;Lcom/android/server/input/KeyboardLayoutManager-IA;)V

    .line 501
    .local v1, "keyboardIdentifier":Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    new-instance v2, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    invoke-direct {v2, p2, p3, p4}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    move-result-object v2

    .line 503
    .local v2, "result":Landroid/hardware/input/KeyboardLayoutSelectionResult;
    sget-boolean v3, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getKeyboardLayoutForInputDevice() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", userId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", subtype = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyboardLayoutManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_2
    return-object v2

    .line 498
    .end local v1    # "keyboardIdentifier":Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    .end local v2    # "result":Landroid/hardware/input/KeyboardLayoutSelectionResult;
    :goto_0
    sget-object v1, Landroid/hardware/input/KeyboardLayoutSelectionResult;->FAILED:Landroid/hardware/input/KeyboardLayoutSelectionResult;

    return-object v1
.end method

.method public getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "userId"    # I
    .param p3, "imeInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p4, "imeSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 563
    invoke-direct {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object v0

    .line 564
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 567
    :cond_1
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/view/InputDevice;Lcom/android/server/input/KeyboardLayoutManager-IA;)V

    new-instance v2, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    invoke-direct {v2, p2, p3, p4}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutListForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v1

    return-object v1

    .line 565
    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    return-object v1
.end method

.method public getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "languageTag"    # Ljava/lang/String;
    .param p3, "layoutType"    # Ljava/lang/String;

    .line 463
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mImeInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_0
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/input/KeyboardLayoutManager-IA;)V

    iget-object v3, p0, Lcom/android/server/input/KeyboardLayoutManager;->mCurrentImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    invoke-direct {p0, v1, v3}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    move-result-object v1

    .line 467
    .local v1, "result":Landroid/hardware/input/KeyboardLayoutSelectionResult;
    invoke-virtual {v1}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 468
    .end local v1    # "result":Landroid/hardware/input/KeyboardLayoutSelectionResult;
    .local v3, "keyboardLayoutDescriptor":Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    if-nez v3, :cond_0

    .line 470
    return-object v2

    .line 473
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 474
    .local v0, "result":[Ljava/lang/String;
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda1;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, v3, v1}, Lcom/android/server/input/KeyboardLayoutManager;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    .line 483
    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-nez v1, :cond_1

    .line 484
    const-string v1, "KeyboardLayoutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return-object v2

    .line 488
    :cond_1
    return-object v0

    .line 468
    .end local v0    # "result":[Ljava/lang/String;
    .end local v3    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 2

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/KeyboardLayoutManager;->visitAllKeyboardLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    .line 295
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/input/KeyboardLayout;

    return-object v1
.end method

.method public isVirtualDevice(I)Z
    .locals 2
    .param p1, "deviceId"    # I

    .line 1134
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 1136
    .local v0, "vdm":Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isInputDeviceOwnedByVirtualDevice(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onInputDeviceAdded(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 177
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/KeyboardLayoutManager;->onInputDeviceChangedInternal(IZ)V

    .line 178
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/KeyboardLayoutManager;->onInputDeviceChangedInternal(IZ)V

    .line 191
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 183
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 184
    invoke-direct {p0}, Lcom/android/server/input/KeyboardLayoutManager;->maybeUpdateNotification()V

    .line 185
    return-void
.end method

.method public onInputMethodSubtypeChanged(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "subtypeHandle"    # Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 628
    if-nez p2, :cond_1

    .line 629
    sget-boolean v0, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 630
    const-string v0, "KeyboardLayoutManager"

    const-string v1, "No InputMethod is running, ignoring change"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_0
    return-void

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mImeInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mCurrentImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mCurrentImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    iget-object v1, v1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    invoke-virtual {p2, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mCurrentImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    iget v1, v1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mUserId:I

    if-eq v1, p1, :cond_3

    :cond_2
    goto :goto_0

    .line 644
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 637
    :goto_0
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V

    iput-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mCurrentImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    .line 638
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 639
    sget-boolean v1, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 640
    const-string v1, "KeyboardLayoutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputMethodSubtype changed: userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subtypeHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_3
    monitor-exit v0

    .line 645
    return-void

    .line 644
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "userId"    # I
    .param p3, "imeInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p4, "imeSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p5, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 527
    invoke-direct {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object v0

    .line 528
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 531
    :cond_1
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/view/InputDevice;Lcom/android/server/input/KeyboardLayoutManager-IA;)V

    .line 532
    .local v1, "keyboardIdentifier":Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    new-instance v3, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;

    new-instance v4, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    invoke-direct {v4, p2, p3, p4}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-direct {v3, v1, v4, v2}, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;-><init>(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;Lcom/android/server/input/KeyboardLayoutManager-IA;)V

    .line 533
    invoke-virtual {v3}, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;->toString()Ljava/lang/String;

    move-result-object v2

    .line 534
    .local v2, "datastoreKey":Ljava/lang/String;
    invoke-direct {p0, v1, v2, p5}, Lcom/android/server/input/KeyboardLayoutManager;->setKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-void

    .line 529
    .end local v1    # "keyboardIdentifier":Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    .end local v2    # "datastoreKey":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method public setKeyboardLayoutOverrideForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 513
    invoke-direct {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object v0

    .line 514
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 517
    :cond_1
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/view/InputDevice;Lcom/android/server/input/KeyboardLayoutManager-IA;)V

    .line 518
    .local v1, "keyboardIdentifier":Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    const-string v2, "GLOBAL_OVERRIDE_KEY"

    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/input/KeyboardLayoutManager;->setKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void

    .line 515
    .end local v1    # "keyboardIdentifier":Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;
    :goto_0
    return-void
.end method

.method public systemRunning()V
    .locals 5

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/KeyboardLayoutManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/input/KeyboardLayoutManager$1;-><init>(Lcom/android/server/input/KeyboardLayoutManager;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    .line 164
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 163
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .local v1, "inputManager":Landroid/hardware/input/InputManager;
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 167
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    .line 168
    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v3

    .line 167
    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 169
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    return-void
.end method
