.class final Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;,
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;,
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;,
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;,
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$SwitchMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final MODE_AUTO:I = 0x2

.field public static final MODE_RECENT:I = 0x1

.field public static final MODE_STATIC:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHardwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

.field private mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

.field private mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

.field private mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

.field private mUserActionSinceSwitch:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcalculateSubtypeIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->calculateSubtypeIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    .line 632
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;-><init>(Ljava/util/List;Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController-IA;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    .line 633
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    .line 635
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    .line 637
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    .line 638
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    .line 640
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    .line 641
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mHardwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    .line 819
    return-void
.end method

.method private static calculateSubtypeIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .locals 1
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 341
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    goto :goto_0

    .line 342
    :cond_0
    const/4 v0, -0x1

    .line 341
    :goto_0
    return v0
.end method

.method private static filterImeSubtypeList(Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .param p1, "supportsSwitchingToNextInputMethod"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    .line 792
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 794
    .local v1, "numItems":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 795
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 796
    .local v3, "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->supportsSwitchingToNextInputMethod()Z

    move-result v4

    if-ne v4, p1, :cond_0

    .line 798
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    .end local v3    # "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 801
    .end local v2    # "i":I
    return-object v0
.end method

.method private static getInputMethodAndSubtypeListForHardwareKeyboard(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)Ljava/util/List;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/android/server/inputmethod/InputMethodSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/inputmethod/InputMethodSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    .line 286
    nop

    .line 289
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getUserId()I

    move-result v0

    .line 290
    .local v0, "userId":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 291
    move-object/from16 v1, p0

    move-object v3, v1

    goto :goto_0

    .line 292
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    move-object/from16 v3, p0

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    :goto_0
    nop

    .line 293
    .local v1, "userAwareContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->get(I)Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v11

    .line 295
    .local v11, "mSystemLocaleStr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v2

    .line 296
    .local v2, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 297
    sget-object v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->TAG:Ljava/lang/String;

    const-string v5, "Enabled input method list is empty."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    return-object v4

    .line 301
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v4

    .line 302
    .local v12, "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 303
    .local v13, "numImes":I
    const/4 v4, 0x0

    move v14, v4

    .local v14, "i":I
    :goto_1
    if-ge v14, v13, :cond_9

    .line 304
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 305
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->shouldShowInInputMethodPicker()Z

    move-result v4

    if-nez v4, :cond_2

    .line 306
    move-object/from16 v15, p1

    move/from16 v16, v0

    move-object/from16 v18, v2

    goto/16 :goto_6

    .line 308
    :cond_2
    const/4 v4, 0x1

    move-object/from16 v15, p1

    invoke-virtual {v15, v8, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 309
    .local v4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 310
    .local v5, "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 311
    .local v6, "imeLabel":Ljava/lang/CharSequence;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 312
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v7

    .line 316
    .local v7, "subtypeCount":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-ge v9, v7, :cond_7

    .line 317
    invoke-virtual {v8, v9}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    .line 318
    .local v10, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v5, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 319
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->isSuitableForPhysicalKeyboardLayoutMapping()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 321
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v16

    const/16 v17, 0x0

    if-eqz v16, :cond_3

    move/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v17

    goto :goto_3

    .line 322
    :cond_3
    move/from16 v16, v0

    .end local v0    # "userId":I
    .local v16, "userId":I
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 323
    move-object/from16 v18, v2

    .end local v2    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v18, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 322
    invoke-virtual {v10, v1, v0, v2}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_3
    nop

    .line 324
    .local v0, "subtypeLabel":Ljava/lang/CharSequence;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    .line 325
    :cond_4
    nop

    .line 326
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 325
    invoke-virtual {v10, v1, v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLayoutDisplayName(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v17

    :goto_4
    nop

    .line 327
    .local v17, "layoutName":Ljava/lang/CharSequence;
    move-object v2, v4

    .end local v4    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v2, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 328
    move-object/from16 v19, v10

    .end local v10    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v19, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v20, v6

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v17

    move/from16 v17, v7

    move-object/from16 v7, v20

    .local v0, "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v5, "imeLabel":Ljava/lang/CharSequence;
    .local v6, "subtypeLabel":Ljava/lang/CharSequence;
    .local v7, "layoutName":Ljava/lang/CharSequence;
    .local v17, "subtypeCount":I
    invoke-direct/range {v4 .. v11}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 319
    .end local v16    # "userId":I
    .end local v17    # "subtypeCount":I
    .end local v18    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v19    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v0, "userId":I
    .local v2, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v4    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v5, "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v6, "imeLabel":Ljava/lang/CharSequence;
    .local v7, "subtypeCount":I
    .restart local v10    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    move/from16 v16, v0

    move-object/from16 v18, v2

    move-object v2, v4

    move-object v0, v5

    move-object v5, v6

    move/from16 v17, v7

    move-object/from16 v19, v10

    .end local v4    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v6    # "imeLabel":Ljava/lang/CharSequence;
    .end local v7    # "subtypeCount":I
    .end local v10    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v0, "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v2, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v5, "imeLabel":Ljava/lang/CharSequence;
    .restart local v16    # "userId":I
    .restart local v17    # "subtypeCount":I
    .restart local v18    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v19    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_5

    .line 318
    .end local v16    # "userId":I
    .end local v17    # "subtypeCount":I
    .end local v18    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v19    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v0, "userId":I
    .local v2, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v4    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v5, "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v6    # "imeLabel":Ljava/lang/CharSequence;
    .restart local v7    # "subtypeCount":I
    .restart local v10    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_6
    move/from16 v16, v0

    move-object/from16 v18, v2

    move-object v2, v4

    move-object v0, v5

    move-object v5, v6

    move/from16 v17, v7

    move-object/from16 v19, v10

    .line 316
    .end local v4    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v6    # "imeLabel":Ljava/lang/CharSequence;
    .end local v7    # "subtypeCount":I
    .end local v10    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v0, "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v2, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v5, "imeLabel":Ljava/lang/CharSequence;
    .restart local v16    # "userId":I
    .restart local v17    # "subtypeCount":I
    .restart local v18    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-object v4, v2

    move-object v6, v5

    move/from16 v7, v17

    move-object/from16 v2, v18

    move-object v5, v0

    move/from16 v0, v16

    goto/16 :goto_2

    .end local v16    # "userId":I
    .end local v17    # "subtypeCount":I
    .end local v18    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v0, "userId":I
    .local v2, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v4    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v5, "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v6    # "imeLabel":Ljava/lang/CharSequence;
    .restart local v7    # "subtypeCount":I
    :cond_7
    move/from16 v16, v0

    move-object/from16 v18, v2

    move-object v2, v4

    move-object v0, v5

    move-object v5, v6

    move/from16 v17, v7

    .line 331
    .end local v4    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v6    # "imeLabel":Ljava/lang/CharSequence;
    .end local v7    # "subtypeCount":I
    .end local v9    # "j":I
    .local v0, "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v2, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v5, "imeLabel":Ljava/lang/CharSequence;
    .restart local v16    # "userId":I
    .restart local v18    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    goto :goto_6

    .line 332
    .end local v16    # "userId":I
    .end local v18    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v0, "userId":I
    .local v2, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v4    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v5, "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v6    # "imeLabel":Ljava/lang/CharSequence;
    :cond_8
    move/from16 v16, v0

    move-object/from16 v18, v2

    move-object v2, v4

    move-object v0, v5

    move-object v5, v6

    .end local v4    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v6    # "imeLabel":Ljava/lang/CharSequence;
    .local v0, "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v2, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .local v5, "imeLabel":Ljava/lang/CharSequence;
    .restart local v16    # "userId":I
    .restart local v18    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v0    # "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v2    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v5    # "imeLabel":Ljava/lang/CharSequence;
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v16

    move-object/from16 v2, v18

    goto/16 :goto_1

    .end local v16    # "userId":I
    .end local v18    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v0, "userId":I
    .local v2, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_9
    nop

    .line 336
    .end local v14    # "i":I
    return-object v12
.end method

.method static getSortedInputMethodAndSubtypeList(ZZZLandroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)Ljava/util/List;
    .locals 21
    .param p0, "includeAuxiliarySubtypes"    # Z
    .param p1, "isScreenLocked"    # Z
    .param p2, "forImeMenu"    # Z
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "settings"    # Lcom/android/server/inputmethod/InputMethodSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Landroid/content/Context;",
            "Lcom/android/server/inputmethod/InputMethodSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    .line 216
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/inputmethod/InputMethodSettings;->getUserId()I

    move-result v0

    .line 217
    .local v0, "userId":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 218
    move-object/from16 v1, p3

    move-object v3, v1

    goto :goto_0

    .line 219
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    move-object/from16 v3, p3

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    :goto_0
    nop

    .line 220
    .local v1, "userAwareContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->get(I)Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v11

    .line 222
    .local v11, "mSystemLocaleStr":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v2

    .line 223
    .local v2, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    sget-object v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->TAG:Ljava/lang/String;

    const-string v5, "Enabled input method list is empty."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    return-object v4

    .line 227
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 231
    const/4 v4, 0x0

    move v12, v4

    .end local p0    # "includeAuxiliarySubtypes":Z
    .local v4, "includeAuxiliarySubtypes":Z
    goto :goto_1

    .line 233
    .end local v4    # "includeAuxiliarySubtypes":Z
    .restart local p0    # "includeAuxiliarySubtypes":Z
    :cond_2
    move/from16 v12, p0

    .end local p0    # "includeAuxiliarySubtypes":Z
    .local v12, "includeAuxiliarySubtypes":Z
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v4

    .line 234
    .local v13, "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 235
    .local v14, "numImes":I
    const/4 v4, 0x0

    move v15, v4

    .local v15, "i":I
    :goto_2
    if-ge v15, v14, :cond_c

    .line 236
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 237
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz p2, :cond_3

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->shouldShowInInputMethodPicker()Z

    move-result v4

    if-nez v4, :cond_3

    .line 238
    move/from16 v18, v0

    move-object/from16 v17, v2

    goto/16 :goto_9

    .line 240
    :cond_3
    nop

    .line 241
    const/4 v4, 0x1

    move-object/from16 v5, p4

    invoke-virtual {v5, v8, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v16

    .line 242
    .local v16, "explicitlyOrImplicitlyEnabledSubtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 243
    .local v4, "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 244
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_3

    .line 246
    :cond_4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 247
    .local v6, "imeLabel":Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    .line 248
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v7

    .line 252
    .local v7, "subtypeCount":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_4
    if-ge v9, v7, :cond_a

    .line 253
    invoke-virtual {v8, v9}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    .line 254
    .local v10, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v17

    move/from16 v18, v0

    .end local v0    # "userId":I
    .local v18, "userId":I
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "subtypeHashCode":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    if-nez v12, :cond_6

    .line 257
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v17

    if-nez v17, :cond_5

    goto :goto_5

    :cond_5
    move-object/from16 v17, v2

    move-object v3, v4

    move-object v5, v6

    move v2, v7

    goto :goto_8

    .line 259
    :cond_6
    :goto_5
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v17

    const/16 v19, 0x0

    if-eqz v17, :cond_7

    move-object/from16 v17, v2

    move-object/from16 v2, v19

    goto :goto_6

    .line 260
    :cond_7
    move-object/from16 v17, v2

    .end local v2    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v17, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 260
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_6
    nop

    .line 262
    .local v2, "subtypeLabel":Ljava/lang/CharSequence;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_7

    .line 263
    :cond_8
    nop

    .line 264
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 263
    invoke-virtual {v10, v1, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLayoutDisplayName(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v19

    :goto_7
    nop

    .line 265
    .local v19, "layoutName":Ljava/lang/CharSequence;
    move-object v3, v4

    .end local v4    # "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 266
    move-object/from16 v20, v10

    .end local v10    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v20, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    move-object v5, v6

    move-object v6, v2

    move v2, v7

    move-object/from16 v7, v19

    .end local v19    # "layoutName":Ljava/lang/CharSequence;
    .local v2, "subtypeCount":I
    .local v5, "imeLabel":Ljava/lang/CharSequence;
    .local v6, "subtypeLabel":Ljava/lang/CharSequence;
    .local v7, "layoutName":Ljava/lang/CharSequence;
    invoke-direct/range {v4 .. v11}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 256
    .end local v3    # "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "imeLabel":Ljava/lang/CharSequence;
    .end local v17    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v20    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v2, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v4    # "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v6, "imeLabel":Ljava/lang/CharSequence;
    .local v7, "subtypeCount":I
    .restart local v10    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_9
    move-object/from16 v17, v2

    move-object v3, v4

    move-object v5, v6

    move v2, v7

    move-object/from16 v20, v10

    .line 252
    .end local v0    # "subtypeHashCode":Ljava/lang/String;
    .end local v4    # "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "imeLabel":Ljava/lang/CharSequence;
    .end local v7    # "subtypeCount":I
    .end local v10    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v2, "subtypeCount":I
    .restart local v3    # "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "imeLabel":Ljava/lang/CharSequence;
    .restart local v17    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_8
    add-int/lit8 v9, v9, 0x1

    move v7, v2

    move-object v4, v3

    move-object v6, v5

    move-object/from16 v2, v17

    move/from16 v0, v18

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    goto/16 :goto_4

    .end local v3    # "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "imeLabel":Ljava/lang/CharSequence;
    .end local v17    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v18    # "userId":I
    .local v0, "userId":I
    .local v2, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v4    # "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "imeLabel":Ljava/lang/CharSequence;
    .restart local v7    # "subtypeCount":I
    :cond_a
    move/from16 v18, v0

    move-object/from16 v17, v2

    move-object v3, v4

    move-object v5, v6

    move v2, v7

    .line 274
    .end local v0    # "userId":I
    .end local v2    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v4    # "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "imeLabel":Ljava/lang/CharSequence;
    .end local v7    # "subtypeCount":I
    .end local v9    # "j":I
    .restart local v3    # "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "imeLabel":Ljava/lang/CharSequence;
    .restart local v17    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v18    # "userId":I
    goto :goto_9

    .line 275
    .end local v3    # "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "imeLabel":Ljava/lang/CharSequence;
    .end local v17    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v18    # "userId":I
    .restart local v0    # "userId":I
    .restart local v2    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v4    # "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "imeLabel":Ljava/lang/CharSequence;
    :cond_b
    move/from16 v18, v0

    move-object/from16 v17, v2

    move-object v3, v4

    move-object v5, v6

    .end local v0    # "userId":I
    .end local v2    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v4    # "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "imeLabel":Ljava/lang/CharSequence;
    .restart local v3    # "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "imeLabel":Ljava/lang/CharSequence;
    .restart local v17    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v18    # "userId":I
    new-instance v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v3    # "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "imeLabel":Ljava/lang/CharSequence;
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v16    # "explicitlyOrImplicitlyEnabledSubtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_9
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, p3

    move-object/from16 v2, v17

    move/from16 v0, v18

    goto/16 :goto_2

    .end local v17    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v18    # "userId":I
    .restart local v0    # "userId":I
    .restart local v2    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_c
    nop

    .line 279
    .end local v15    # "i":I
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 280
    return-object v13
.end method

.method private isRecency(IZ)Z
    .locals 2
    .param p1, "mode"    # I
    .param p2, "forward"    # Z

    .line 781
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mUserActionSinceSwitch:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 782
    return v1

    .line 784
    :cond_0
    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mSwitchingAwareRotationList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mSwitchingUnawareRotationList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 809
    nop

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mRotationList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->-$$Nest$mdump(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;Landroid/util/Printer;Ljava/lang/String;)V

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mHardwareRotationList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mHardwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->-$$Nest$mdump(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;Landroid/util/Printer;Ljava/lang/String;)V

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "User action since last switch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mUserActionSinceSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 816
    return-void
.end method

.method public getNextInputMethodForHardware(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;IZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .locals 6
    .param p1, "onlyCurrentIme"    # Z
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p4, "mode"    # I
    .param p5, "forward"    # Z

    .line 734
    nop

    .line 735
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mHardwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    .line 736
    invoke-direct {p0, p4, p5}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->isRecency(IZ)Z

    move-result v4

    .line 735
    move v3, p1

    move-object v1, p2

    move-object v2, p3

    move v5, p5

    .end local p1    # "onlyCurrentIme":Z
    .end local p2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local p3    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local p5    # "forward":Z
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v3, "onlyCurrentIme":Z
    .local v5, "forward":Z
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->next(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;ZZZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object p1

    return-object p1
.end method

.method public getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;IZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .locals 6
    .param p1, "onlyCurrentIme"    # Z
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p4, "mode"    # I
    .param p5, "forward"    # Z

    .line 704
    nop

    .line 705
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    .line 706
    invoke-direct {p0, p4, p5}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->isRecency(IZ)Z

    move-result v4

    .line 705
    move v3, p1

    move-object v1, p2

    move-object v2, p3

    move v5, p5

    .end local p1    # "onlyCurrentIme":Z
    .end local p2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local p3    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local p5    # "forward":Z
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v3, "onlyCurrentIme":Z
    .local v5, "forward":Z
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->next(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;ZZZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object p1

    return-object p1
.end method

.method public onInputMethodSubtypeChanged()V
    .locals 1

    .line 767
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mUserActionSinceSwitch:Z

    .line 768
    return-void
.end method

.method public onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 2
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 752
    const/4 v0, 0x0

    .line 753
    .local v0, "recencyUpdated":Z
    nop

    .line 754
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->setMostRecent(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 755
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mHardwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->setMostRecent(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 756
    if-eqz v0, :cond_0

    .line 757
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mUserActionSinceSwitch:Z

    .line 762
    :cond_0
    return v0
.end method

.method public resetCircularListLocked(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/android/server/inputmethod/InputMethodSettings;

    .line 823
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeList(ZZZLandroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)Ljava/util/List;

    move-result-object v0

    .line 826
    invoke-static {p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getInputMethodAndSubtypeListForHardwareKeyboard(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)Ljava/util/List;

    move-result-object v1

    .line 823
    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->update(Ljava/util/List;Ljava/util/List;)V

    .line 827
    return-void
.end method

.method update(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)V"
        }
    .end annotation

    .line 661
    .local p1, "sortedEnabledItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .local p2, "hardwareKeyboardItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->filterImeSubtypeList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 663
    .local v0, "switchingAwareImeSubtypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->filterImeSubtypeList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 666
    .local v1, "switchingUnawareImeSubtypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->-$$Nest$fgetmImeSubtypeList(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 668
    new-instance v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;-><init>(Ljava/util/List;Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController-IA;)V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    .line 671
    :cond_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->-$$Nest$fgetmImeSubtypeList(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 673
    new-instance v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    invoke-direct {v2, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    .line 676
    :cond_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->-$$Nest$fgetmItems(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;)Ljava/util/List;

    move-result-object v2

    .line 677
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 678
    new-instance v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-direct {v2, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    .line 681
    :cond_2
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mHardwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->-$$Nest$fgetmItems(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;)Ljava/util/List;

    move-result-object v2

    .line 682
    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 683
    new-instance v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-direct {v2, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mHardwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    .line 685
    :cond_3
    return-void
.end method
