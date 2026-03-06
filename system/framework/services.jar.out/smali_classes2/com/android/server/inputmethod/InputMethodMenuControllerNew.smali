.class final Lcom/android/server/inputmethod/InputMethodMenuControllerNew;
.super Ljava/lang/Object;
.source "InputMethodMenuControllerNew.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;,
        Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;,
        Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;,
        Lcom/android/server/inputmethod/InputMethodMenuControllerNew$DividerItem;,
        Lcom/android/server/inputmethod/InputMethodMenuControllerNew$HeaderItem;,
        Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;
    }
.end annotation


# static fields
.field private static final HORIZONTAL_OFFSET:I = 0x10

.field private static final TAG:Ljava/lang/String;

.field private static final WINDOW_TITLE:Ljava/lang/String; = "IME Switcher Menu"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private final mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

.field private mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-DHIbVCBBdP5s-oOHAerDovyFm8(Lcom/android/server/inputmethod/InputMethodMenuControllerNew;IILcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->lambda$show$0(IILcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$-V0SmxAJd2epW9mgI18qNRIpE1g(Lcom/android/server/inputmethod/InputMethodMenuControllerNew;Landroid/content/Intent;IILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->lambda$updateLanguageSettingsButton$3(Landroid/content/Intent;IILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IEatni96P396ZHF_MES0J1HuJPI(Lcom/android/server/inputmethod/InputMethodMenuControllerNew;IILandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->lambda$show$2(IILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R-zNyHV2aHiVuwa1KBqp5SRtKcM(Lcom/android/internal/widget/RecyclerView;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->lambda$show$1(Lcom/android/internal/widget/RecyclerView;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    invoke-direct {v0}, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    return-void
.end method

.method static getMenuItems(Ljava/util/List;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;",
            ">;"
        }
    .end annotation

    .line 214
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v0, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    return-object v0

    .line 219
    :cond_0
    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    .line 220
    .local v1, "itemsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 222
    .local v2, "numItems":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "prevImeId":Ljava/lang/String;
    const/4 v4, 0x1

    .line 224
    .local v4, "firstGroup":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_7

    .line 225
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 227
    .local v6, "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v7, v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "imeId":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    .line 229
    .local v8, "groupChange":Z
    if-eqz v8, :cond_6

    .line 230
    if-nez v4, :cond_1

    .line 231
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$DividerItem;->getInstance()Lcom/android/server/inputmethod/InputMethodMenuControllerNew$DividerItem;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_1
    add-int/lit8 v10, v5, 0x1

    if-ge v10, v2, :cond_2

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    iget-object v10, v10, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    .line 235
    .local v10, "nextItemId":Ljava/lang/String;
    :goto_1
    iget-object v11, v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    if-nez v11, :cond_3

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    .line 236
    .local v9, "addHeader":Z
    :goto_2
    if-eqz v9, :cond_5

    .line 237
    new-instance v11, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$HeaderItem;

    iget-object v12, v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-direct {v11, v12}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$HeaderItem;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_5
    const/4 v4, 0x0

    .line 240
    move-object v3, v7

    .line 243
    .end local v9    # "addHeader":Z
    .end local v10    # "nextItemId":Ljava/lang/String;
    :cond_6
    new-instance v9, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;

    iget-object v10, v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    iget-object v11, v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    iget-object v12, v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mLayoutName:Ljava/lang/CharSequence;

    iget-object v13, v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iget v14, v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeIndex:I

    invoke-direct/range {v9 .. v14}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;I)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v6    # "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v7    # "imeId":Ljava/lang/String;
    .end local v8    # "groupChange":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    nop

    .line 247
    .end local v5    # "i":I
    return-object v0
.end method

.method static getSelectedIndex(Ljava/util/List;Ljava/lang/String;I)I
    .locals 7
    .param p1, "selectedImeId"    # Ljava/lang/String;
    .param p2, "selectedSubtypeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .line 264
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_3

    .line 265
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;

    .line 266
    .local v1, "item":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;
    instance-of v3, v1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;

    nop

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;

    .line 267
    .local v3, "subtypeItem":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;
    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "imeId":Ljava/lang/String;
    iget v5, v3, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mSubtypeIndex:I

    .line 269
    .local v5, "subtypeIndex":I
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_0

    if-eq p2, v2, :cond_1

    :cond_0
    if-eq v5, v2, :cond_1

    if-ne v5, p2, :cond_2

    .line 273
    :cond_1
    return v0

    .line 264
    .end local v1    # "item":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;
    .end local v3    # "subtypeItem":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;
    .end local v4    # "imeId":Ljava/lang/String;
    .end local v5    # "subtypeIndex":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 280
    .end local v0    # "i":I
    return v2
.end method

.method private synthetic lambda$show$0(IILcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;Z)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "displayId"    # I
    .param p3, "item"    # Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;
    .param p4, "isSelected"    # Z

    .line 121
    if-nez p4, :cond_0

    .line 122
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    iget-object v1, p3, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 123
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget v2, p3, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mSubtypeIndex:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->switchToInputMethod(Ljava/lang/String;II)Z

    .line 125
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->hide(II)V

    .line 126
    return-void
.end method

.method private static synthetic lambda$show$1(Lcom/android/internal/widget/RecyclerView;I)V
    .locals 0
    .param p0, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p1, "selectedIndex"    # I

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private synthetic lambda$show$2(IILandroid/content/DialogInterface;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "userId"    # I
    .param p3, "dialog"    # Landroid/content/DialogInterface;

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->hide(II)V

    return-void
.end method

.method private synthetic lambda$updateLanguageSettingsButton$3(Landroid/content/Intent;IILandroid/view/View;)V
    .locals 2
    .param p1, "settingsIntent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I
    .param p4, "v"    # Landroid/view/View;

    .line 310
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 311
    invoke-virtual {p0, p3, p2}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->hide(II)V

    .line 312
    return-void
.end method

.method private updateLanguageSettingsButton(Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;Landroid/view/View;ZII)V
    .locals 9
    .param p1, "selectedItem"    # Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "isScreenLocked"    # Z
    .param p4, "displayId"    # I
    .param p5, "userId"    # I

    .line 297
    instance-of v0, p1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;

    .line 298
    .local v0, "selectedSubtypeItem":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->createImeLanguageSettingsActivityIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .end local v0    # "selectedSubtypeItem":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;
    :cond_0
    move-object v2, v1

    .line 299
    .local v2, "settingsIntent":Landroid/content/Intent;
    :goto_0
    nop

    .line 300
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 299
    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    .line 302
    .local v0, "isDeviceProvisioned":Z
    :goto_1
    if-eqz v2, :cond_2

    if-nez p3, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 303
    .local v3, "hasButton":Z
    :goto_2
    const v5, 0x102025a

    invoke-virtual {p2, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    .line 304
    .local v5, "buttonBar":Landroid/view/View;
    const v6, 0x1020019

    invoke-virtual {p2, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 305
    .local v6, "button":Landroid/widget/Button;
    const v7, 0x102000a

    invoke-virtual {p2, v7}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/RecyclerView;

    .line 306
    .local v7, "recyclerView":Lcom/android/internal/widget/RecyclerView;
    if-eqz v3, :cond_3

    .line 307
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 308
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 309
    new-instance v1, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v2, p5, p4}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/InputMethodMenuControllerNew;Landroid/content/Intent;II)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/RecyclerView;->setScrollIndicators(I)V

    goto :goto_3

    .line 316
    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 317
    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    invoke-virtual {v7, v4}, Lcom/android/internal/widget/RecyclerView;->setScrollIndicators(I)V

    .line 321
    :goto_3
    return-void
.end method


# virtual methods
.method dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->isShowing()Z

    move-result v0

    .line 192
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

    .line 194
    if-eqz v0, :cond_0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "menuItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mMenuItems:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method

.method hide(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "userId"    # I

    .line 171
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->TAG:Ljava/lang/String;

    const-string v1, "Hide IME switcher menu."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mMenuItems:Ljava/util/List;

    .line 175
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 177
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialog:Landroid/app/AlertDialog;

    .line 179
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateShouldShowImeSwitcher(II)V

    .line 181
    :cond_1
    return-void
.end method

.method isShowing()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method show(Ljava/util/List;Ljava/lang/String;IZII)V
    .locals 18
    .param p2, "selectedImeId"    # Ljava/lang/String;
    .param p3, "selectedSubtypeIndex"    # I
    .param p4, "isScreenLocked"    # Z
    .param p5, "displayId"    # I
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;",
            "Ljava/lang/String;",
            "IZII)V"
        }
    .end annotation

    .line 99
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual {v0, v4, v5}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->hide(II)V

    .line 101
    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->getMenuItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 102
    .local v8, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;>;"
    invoke-static {v8, v6, v7}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->getSelectedIndex(Ljava/util/List;Ljava/lang/String;I)I

    move-result v9

    .line 103
    .local v9, "selectedIndex":I
    const/4 v1, -0x1

    if-ne v9, v1, :cond_0

    .line 104
    sget-object v2, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Switching menu shown with no item selected, IME id: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", subtype index: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    invoke-virtual {v2, v4}, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;->get(I)Landroid/content/Context;

    move-result-object v10

    .line 109
    .local v10, "dialogWindowContext":Landroid/content/Context;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const v3, 0x103040b

    invoke-direct {v2, v10, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object v11, v2

    .line 111
    .local v11, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 114
    .local v12, "inflater":Landroid/view/LayoutInflater;
    nop

    .line 115
    const v2, 0x1090097

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 116
    .local v2, "contentView":Landroid/view/View;
    nop

    .line 117
    const v13, 0x1040997

    invoke-virtual {v10, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 116
    invoke-virtual {v2, v13}, Landroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 120
    new-instance v13, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda0;

    invoke-direct {v13, v0, v5, v4}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodMenuControllerNew;II)V

    .line 129
    .local v13, "onClickListener":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;
    nop

    .line 130
    const v14, 0x102000a

    invoke-virtual {v2, v14}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/RecyclerView;

    .line 131
    .local v14, "recyclerView":Lcom/android/internal/widget/RecyclerView;
    new-instance v15, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;

    invoke-direct {v15, v8, v9, v12, v13}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$Adapter;-><init>(Ljava/util/List;ILandroid/view/LayoutInflater;Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;)V

    invoke-virtual {v14, v15}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 133
    new-instance v15, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda1;

    invoke-direct {v15, v14, v9}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/RecyclerView;I)V

    invoke-virtual {v14, v15}, Lcom/android/internal/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 135
    invoke-virtual {v14}, Lcom/android/internal/widget/RecyclerView;->requestFocus()Z

    .line 137
    if-le v9, v1, :cond_1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;

    :cond_1
    move-object v1, v3

    .line 138
    .local v1, "selectedItem":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;
    move/from16 v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->updateLanguageSettingsButton(Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;Landroid/view/View;ZII)V

    .line 140
    new-instance v3, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v4, v5}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/InputMethodMenuControllerNew;II)V

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    iput-object v8, v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mMenuItems:Ljava/util/List;

    .line 142
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialog:Landroid/app/AlertDialog;

    .line 143
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialog:Landroid/app/AlertDialog;

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 144
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 145
    .local v3, "w":Landroid/view/Window;
    invoke-virtual {v3, v15}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    .line 146
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 150
    .local v15, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v16, v1

    .end local v1    # "selectedItem":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;
    .local v16, "selectedItem":Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;
    invoke-virtual {v10}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 151
    nop

    .line 152
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    .line 151
    move-object/from16 v17, v2

    .end local v2    # "contentView":Landroid/view/View;
    .local v17, "contentView":Landroid/view/View;
    const v2, 0x800055

    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    iput v1, v15, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 153
    const/16 v1, 0x10

    iput v1, v15, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 154
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v1, v2

    iput v1, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 155
    const/16 v1, 0x7dc

    iput v1, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 157
    const-string v1, "IME Switcher Menu"

    invoke-virtual {v15, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v3, v15}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 160
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 161
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateShouldShowImeSwitcher(II)V

    .line 162
    return-void
.end method
