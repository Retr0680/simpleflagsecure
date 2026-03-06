.class public Lcom/android/server/policy/ModifierShortcutManager;
.super Ljava/lang/Object;
.source "ModifierShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ModifierShortcutManager$Bookmark;,
        Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;,
        Lcom/android/server/policy/ModifierShortcutManager$CategoryBookmark;,
        Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTRIBUTE_CLASS:Ljava/lang/String; = "class"

.field private static final ATTRIBUTE_KEYCODE:Ljava/lang/String; = "keycode"

.field private static final ATTRIBUTE_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTRIBUTE_ROLE:Ljava/lang/String; = "role"

.field private static final ATTRIBUTE_SHIFT:Ljava/lang/String; = "shift"

.field private static final ATTRIBUTE_SHORTCUT:Ljava/lang/String; = "shortcut"

.field public static final EXTRA_ROLE:Ljava/lang/String; = "com.android.server.policy.ModifierShortcutManager.EXTRA_ROLE"

.field private static final TAG:Ljava/lang/String; = "ModifierShortcutManager"

.field private static final TAG_BOOKMARK:Ljava/lang/String; = "bookmark"

.field private static final TAG_BOOKMARKS:Ljava/lang/String; = "bookmarks"

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sApplicationLaunchKeyRoles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppIntentCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/input/AppLaunchData;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mBookmarks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/server/policy/ModifierShortcutManager$Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategoryShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mComponentIntents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mComponentShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mConsumeSearchKeyUp:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:Landroid/os/UserHandle;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field private final mRoleIntents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoleShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchKeyShortcutPending:Z

.field private final mShiftCategoryShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mShiftComponentShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mShiftRoleShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutKeyServices:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/policy/IShortcutService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$W3KmBtds13Ht6vpLq2KKi1MBK-4(Lcom/android/server/policy/ModifierShortcutManager$Bookmark;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/policy/ModifierShortcutManager;->lambda$clearComponentIntents$4(Lcom/android/server/policy/ModifierShortcutManager$Bookmark;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Zs6QXZ1A7pXQwLZywmqj70CJfuk(Ljava/lang/String;Lcom/android/server/policy/ModifierShortcutManager$Bookmark;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/policy/ModifierShortcutManager;->lambda$new$0(Ljava/lang/String;Lcom/android/server/policy/ModifierShortcutManager$Bookmark;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dqMV3scjH96xksCoywDgcrJhNwk(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/policy/ModifierShortcutManager;->lambda$new$1(Ljava/lang/String;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ksD7kk_KZ17ryxi7p3UXzaqQ4wk(Lcom/android/server/policy/ModifierShortcutManager;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/ModifierShortcutManager;->lambda$new$2(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wCRuhzp6F_m4uFOcyvutHe8EaOc(Lcom/android/server/policy/ModifierShortcutManager$Bookmark;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/policy/ModifierShortcutManager;->lambda$clearRoleIntents$3(Lcom/android/server/policy/ModifierShortcutManager$Bookmark;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetRoleLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/policy/ModifierShortcutManager;->getRoleLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smresolveComponentNameIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/policy/ModifierShortcutManager;->resolveComponentNameIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyRoles:Landroid/util/SparseArray;

    .line 116
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 117
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyRoles:Landroid/util/SparseArray;

    const/16 v1, 0x40

    const-string v2, "android.app.role.BROWSER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 119
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 121
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xcf

    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 123
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd0

    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 125
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd1

    const-string v2, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 127
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd2

    const-string v2, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 129
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "currentUser"    # Landroid/os/UserHandle;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCategoryShortcuts:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShiftCategoryShortcuts:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mRoleShortcuts:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShiftRoleShortcuts:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mRoleIntents:Ljava/util/Map;

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mComponentShortcuts:Landroid/util/SparseArray;

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShiftComponentShortcuts:Landroid/util/SparseArray;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mComponentIntents:Ljava/util/Map;

    .line 104
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    .line 146
    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mHandler:Landroid/os/Handler;

    .line 148
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 149
    .local v0, "rm":Landroid/app/role/RoleManager;
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/ModifierShortcutManager;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 171
    iput-object p3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    .line 172
    const-class v1, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 173
    return-void
.end method

.method private getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;
    .locals 8
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p2, "keyCode"    # I
    .param p3, "metaState"    # I

    .line 228
    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    .line 230
    .local v0, "isShiftOn":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    return-object v1

    .line 234
    :cond_0
    const/4 v2, 0x0

    .line 237
    .local v2, "shortcutIntent":Landroid/content/Intent;
    invoke-virtual {p1, p2, p3}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v3

    .line 238
    .local v3, "shortcutChar":I
    if-nez v3, :cond_1

    .line 239
    return-object v1

    .line 242
    :cond_1
    nop

    .line 243
    iget-object v4, p0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    new-instance v5, Landroid/util/Pair;

    int-to-char v6, v3

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;

    .line 244
    .local v4, "bookmark":Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
    if-nez v4, :cond_3

    .line 246
    invoke-virtual {p1, p2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 247
    if-nez v3, :cond_2

    .line 248
    return-object v1

    .line 250
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    new-instance v5, Landroid/util/Pair;

    int-to-char v6, v3

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;

    .line 253
    :cond_3
    if-eqz v4, :cond_4

    .line 254
    nop

    .line 255
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 256
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v4, v1}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 257
    .end local v1    # "context":Landroid/content/Context;
    goto :goto_1

    .line 258
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No bookmark found for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    if-eqz v0, :cond_5

    const-string v5, "SHIFT+"

    goto :goto_0

    :cond_5
    const-string v5, ""

    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    const-string v5, "ModifierShortcutManager"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v4    # "bookmark":Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
    :goto_1
    nop

    .line 297
    return-object v2
.end method

.method static getIntentCategoryLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/CharSequence;

    .line 915
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v1, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v1, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "android.intent.category.APP_MESSAGING"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_7
    const-string v1, "android.intent.category.APP_MAPS"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No label for app category "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModifierShortcutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v0, 0x0

    return-object v0

    .line 938
    :pswitch_0
    const v0, 0x104053b

    .line 939
    .local v0, "resid":I
    goto :goto_2

    .line 935
    .end local v0    # "resid":I
    :pswitch_1
    const v0, 0x1040541

    .line 936
    .restart local v0    # "resid":I
    goto :goto_2

    .line 932
    .end local v0    # "resid":I
    :pswitch_2
    const v0, 0x1040540

    .line 933
    .restart local v0    # "resid":I
    goto :goto_2

    .line 929
    .end local v0    # "resid":I
    :pswitch_3
    const v0, 0x104053f

    .line 930
    .restart local v0    # "resid":I
    goto :goto_2

    .line 926
    .end local v0    # "resid":I
    :pswitch_4
    const v0, 0x104053c

    .line 927
    .restart local v0    # "resid":I
    goto :goto_2

    .line 923
    .end local v0    # "resid":I
    :pswitch_5
    const v0, 0x104053e

    .line 924
    .restart local v0    # "resid":I
    goto :goto_2

    .line 920
    .end local v0    # "resid":I
    :pswitch_6
    const v0, 0x104053d

    .line 921
    .restart local v0    # "resid":I
    goto :goto_2

    .line 917
    .end local v0    # "resid":I
    :pswitch_7
    const v0, 0x104053a

    .line 918
    .restart local v0    # "resid":I
    nop

    .line 944
    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ae0672e -> :sswitch_7
        -0x70f45113 -> :sswitch_6
        -0x20da2677 -> :sswitch_5
        0x19b1550e -> :sswitch_4
        0x1e6800a1 -> :sswitch_3
        0x1edca32a -> :sswitch_2
        0x267d18fd -> :sswitch_1
        0x30e2eff9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getIntentFromAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/content/Intent;
    .locals 6
    .param p1, "data"    # Landroid/hardware/input/AppLaunchData;

    .line 826
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 827
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    monitor-enter v1

    .line 828
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 829
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 830
    monitor-exit v1

    return-object v2

    .line 846
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 832
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    instance-of v3, p1, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz v3, :cond_1

    .line 833
    const-string v3, "android.intent.action.MAIN"

    move-object v4, p1

    check-cast v4, Landroid/hardware/input/AppLaunchData$CategoryData;

    .line 834
    invoke-virtual {v4}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object v4

    .line 833
    invoke-static {v3, v4}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 835
    :cond_1
    instance-of v3, p1, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v3, :cond_2

    .line 836
    move-object v3, p1

    check-cast v3, Landroid/hardware/input/AppLaunchData$RoleData;

    invoke-virtual {v3}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/policy/ModifierShortcutManager;->getRoleLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 837
    :cond_2
    instance-of v3, p1, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz v3, :cond_3

    .line 838
    move-object v3, p1

    check-cast v3, Landroid/hardware/input/AppLaunchData$ComponentData;

    .line 839
    .local v3, "componentData":Landroid/hardware/input/AppLaunchData$ComponentData;
    invoke-virtual {v3}, Landroid/hardware/input/AppLaunchData$ComponentData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 840
    invoke-virtual {v3}, Landroid/hardware/input/AppLaunchData$ComponentData;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 839
    invoke-static {v0, v4, v5}, Lcom/android/server/policy/ModifierShortcutManager;->resolveComponentNameIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object v2, v4

    .line 842
    .end local v3    # "componentData":Landroid/hardware/input/AppLaunchData$ComponentData;
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 843
    iget-object v3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    :cond_4
    monitor-exit v1

    return-object v2

    .line 846
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getKeyGestureTypeFromIntent(Landroid/content/Intent;)I
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .line 954
    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    .line 955
    .local v0, "selectorIntent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 956
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 957
    .local v1, "selectorCategories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 958
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 959
    .local v3, "intentCategory":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/policy/ModifierShortcutManager;->getKeyGestureTypeFromSelectorCategory(Ljava/lang/String;)I

    move-result v4

    .line 960
    .local v4, "keyGestureType":I
    if-nez v4, :cond_0

    .line 961
    goto :goto_0

    .line 963
    :cond_0
    return v4

    .line 970
    .end local v1    # "selectorCategories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "intentCategory":Ljava/lang/String;
    .end local v4    # "keyGestureType":I
    :cond_1
    const-string v1, "com.android.server.policy.ModifierShortcutManager.EXTRA_ROLE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 971
    .local v1, "role":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 972
    invoke-static {v1}, Lcom/android/server/policy/ModifierShortcutManager;->getKeyGestureTypeFromRole(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 975
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    .line 976
    .local v2, "intentCategories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 977
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 980
    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_4

    .line 981
    return v3

    .line 986
    :cond_4
    const/16 v3, 0x33

    return v3

    .line 978
    :cond_5
    :goto_1
    return v3
.end method

.method private static getKeyGestureTypeFromRole(Ljava/lang/String;)I
    .locals 2
    .param p0, "role"    # Ljava/lang/String;

    .line 1027
    const-string v0, "android.app.role.BROWSER"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    const/16 v0, 0x27

    return v0

    .line 1029
    :cond_0
    const-string v0, "android.app.role.SMS"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1030
    const/16 v0, 0x2e

    return v0

    .line 1032
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keyboard gesture event to launch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not supported for logging"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModifierShortcutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const/4 v0, 0x0

    return v0
.end method

.method private static getKeyGestureTypeFromSelectorCategory(Ljava/lang/String;)I
    .locals 2
    .param p0, "category"    # Ljava/lang/String;

    .line 991
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "android.intent.category.APP_GALLERY"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "android.intent.category.APP_FITNESS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "android.intent.category.APP_CALENDAR"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "android.intent.category.APP_MUSIC"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "android.intent.category.APP_FILES"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_6
    const-string v0, "android.intent.category.APP_EMAIL"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_7
    const-string v0, "android.intent.category.APP_CONTACTS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_8
    const-string v0, "android.intent.category.APP_MESSAGING"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_9
    const-string v0, "android.intent.category.APP_WEATHER"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_a
    const-string v0, "android.intent.category.APP_BROWSER"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_b
    const-string v0, "android.intent.category.APP_MAPS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1017
    return v1

    .line 1015
    :pswitch_0
    const/16 v0, 0x32

    return v0

    .line 1013
    :pswitch_1
    const/16 v0, 0x31

    return v0

    .line 1011
    :pswitch_2
    const/16 v0, 0x30

    return v0

    .line 1009
    :pswitch_3
    const/16 v0, 0x2f

    return v0

    .line 1007
    :pswitch_4
    const/16 v0, 0x2e

    return v0

    .line 1005
    :pswitch_5
    const/16 v0, 0x2d

    return v0

    .line 1003
    :pswitch_6
    const/16 v0, 0x2c

    return v0

    .line 1001
    :pswitch_7
    const/16 v0, 0x2b

    return v0

    .line 999
    :pswitch_8
    const/16 v0, 0x2a

    return v0

    .line 997
    :pswitch_9
    const/16 v0, 0x29

    return v0

    .line 995
    :pswitch_a
    const/16 v0, 0x28

    return v0

    .line 993
    :pswitch_b
    const/16 v0, 0x27

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ae0672e -> :sswitch_b
        -0x70f45113 -> :sswitch_a
        -0x31074447 -> :sswitch_9
        -0x20da2677 -> :sswitch_8
        0x19b1550e -> :sswitch_7
        0x1e6800a1 -> :sswitch_6
        0x1e746f7c -> :sswitch_5
        0x1edca32a -> :sswitch_4
        0x267d18fd -> :sswitch_3
        0x30e2eff9 -> :sswitch_2
        0x538b29ad -> :sswitch_1
        0x7a58fb17 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getRoleLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "role"    # Ljava/lang/String;

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    .line 304
    .local v1, "rm":Landroid/app/role/RoleManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 305
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "ModifierShortcutManager"

    if-eqz v3, :cond_2

    .line 306
    invoke-virtual {v1, p1}, Landroid/app/role/RoleManager;->getDefaultApplication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "rolePackage":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 308
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    .line 310
    const-string v4, "com.android.server.policy.ModifierShortcutManager.EXTRA_ROLE"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 313
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No launch intent for role "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 316
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No default application for role "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 316
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v3    # "rolePackage":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 320
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Role "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not available."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_1
    return-object v0
.end method

.method private getRoleLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "role"    # Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mRoleIntents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 328
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 329
    nop

    .line 330
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 331
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1, p1}, Lcom/android/server/policy/ModifierShortcutManager;->getRoleLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_0

    .line 333
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mRoleIntents:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    return-object v0
.end method

.method private handleIntentShortcut(Landroid/view/KeyCharacterMap;Landroid/view/KeyEvent;I)Z
    .locals 9
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
    .param p3, "metaState"    # I

    .line 591
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 597
    .local v0, "keyCode":I
    iget-boolean v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    const-string v2, "ModifierShortcutManager"

    const/high16 v3, 0x10000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 598
    invoke-virtual {p1, v0}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    iput-boolean v4, p0, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 600
    iput-boolean v5, p0, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    goto :goto_0

    .line 602
    :cond_0
    return v5

    .line 604
    :cond_1
    const/high16 v1, 0x70000

    and-int/2addr v1, p3

    if-eqz v1, :cond_3

    .line 606
    const v1, -0x70001

    and-int/2addr p3, v1

    .line 639
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/policy/ModifierShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v1

    .line 640
    .local v1, "shortcutIntent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 641
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 643
    nop

    .line 644
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    goto :goto_1

    .line 648
    :catch_0
    move-exception v3

    .line 649
    .local v3, "ex":Landroid/content/ActivityNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping shortcut key combination because the activity to which it is registered was not found: META+ or SEARCH"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 649
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    .end local v3    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_1
    invoke-static {v1}, Lcom/android/server/policy/ModifierShortcutManager;->getKeyGestureTypeFromIntent(Landroid/content/Intent;)I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/android/server/policy/ModifierShortcutManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    .line 654
    return v4

    .line 656
    :cond_2
    return v5

    .line 608
    .end local v1    # "shortcutIntent":Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x0

    .line 610
    .local v1, "intent":Landroid/content/Intent;
    sget-object v6, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyRoles:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 611
    .local v6, "role":Ljava/lang/String;
    sget-object v7, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 612
    .local v7, "category":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 613
    invoke-direct {p0, v6}, Lcom/android/server/policy/ModifierShortcutManager;->getRoleLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_2

    .line 614
    :cond_4
    if-eqz v7, :cond_5

    .line 615
    const-string v8, "android.intent.action.MAIN"

    invoke-static {v8, v7}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 618
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 619
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 621
    nop

    .line 622
    :try_start_1
    iget-object v3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 631
    goto :goto_3

    .line 626
    :catch_1
    move-exception v3

    .line 627
    .restart local v3    # "ex":Landroid/content/ActivityNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", category="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " role="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 627
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    .end local v3    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_3
    invoke-static {v1}, Lcom/android/server/policy/ModifierShortcutManager;->getKeyGestureTypeFromIntent(Landroid/content/Intent;)I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/android/server/policy/ModifierShortcutManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    .line 633
    return v4

    .line 635
    :cond_6
    return v5
.end method

.method private handleShortcutService(II)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    .line 552
    int-to-long v0, p1

    .line 553
    .local v0, "shortcutCode":J
    and-int/lit16 v2, p2, 0x1000

    if-eqz v2, :cond_0

    .line 554
    const-wide v2, 0x100000000000L

    or-long/2addr v0, v2

    .line 557
    :cond_0
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_1

    .line 558
    const-wide v2, 0x200000000L

    or-long/2addr v0, v2

    .line 561
    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    .line 562
    const-wide v2, 0x100000000L

    or-long/2addr v0, v2

    .line 565
    :cond_2
    const/high16 v2, 0x10000

    and-int/2addr v2, p2

    if-eqz v2, :cond_3

    .line 566
    const-wide/high16 v2, 0x1000000000000L

    or-long/2addr v0, v2

    .line 569
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/IShortcutService;

    .line 570
    .local v2, "shortcutService":Lcom/android/internal/policy/IShortcutService;
    if-eqz v2, :cond_4

    .line 572
    :try_start_0
    invoke-interface {v2, v0, v1}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    goto :goto_0

    .line 573
    :catch_0
    move-exception v3

    .line 574
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 576
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 578
    :cond_4
    const/4 v3, 0x0

    return v3
.end method

.method private static synthetic lambda$clearComponentIntents$4(Lcom/android/server/policy/ModifierShortcutManager$Bookmark;)Z
    .locals 1
    .param p0, "b"    # Lcom/android/server/policy/ModifierShortcutManager$Bookmark;

    .line 204
    instance-of v0, p0, Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;

    return v0
.end method

.method private static synthetic lambda$clearRoleIntents$3(Lcom/android/server/policy/ModifierShortcutManager$Bookmark;)Z
    .locals 1
    .param p0, "b"    # Lcom/android/server/policy/ModifierShortcutManager$Bookmark;

    .line 195
    instance-of v0, p0, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;

    return v0
.end method

.method private static synthetic lambda$new$0(Ljava/lang/String;Lcom/android/server/policy/ModifierShortcutManager$Bookmark;)Z
    .locals 1
    .param p0, "roleName"    # Ljava/lang/String;
    .param p1, "b"    # Lcom/android/server/policy/ModifierShortcutManager$Bookmark;

    .line 153
    instance-of v0, p1, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;

    nop

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;

    .line 154
    invoke-virtual {v0}, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;->getRole()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0
.end method

.method private static synthetic lambda$new$1(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "roleName"    # Ljava/lang/String;
    .param p1, "entry"    # Ljava/util/Map$Entry;

    .line 162
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v0, :cond_0

    .line 163
    nop

    .line 164
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/AppLaunchData$RoleData;

    invoke-virtual {v0}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 167
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$new$2(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 151
    nop

    .line 152
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda1;-><init>()V

    .line 155
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 159
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 169
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadShortcuts()V
    .locals 19

    .line 342
    move-object/from16 v1, p0

    const-string v2, "ModifierShortcutManager"

    :try_start_0
    iget-object v0, v1, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1170004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v3, v0

    .line 343
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    const-string v0, "bookmarks"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 344
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    move-object v4, v0

    .line 347
    .local v4, "virtualKcm":Landroid/view/KeyCharacterMap;
    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 349
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 350
    goto :goto_1

    .line 353
    :cond_0
    const-string v0, "bookmark"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    nop

    .line 474
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "virtualKcm":Landroid/view/KeyCharacterMap;
    :goto_1
    goto/16 :goto_7

    .line 357
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "virtualKcm":Landroid/view/KeyCharacterMap;
    :cond_1
    const-string/jumbo v0, "package"

    const/4 v6, 0x0

    invoke-interface {v3, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 358
    .local v7, "packageName":Ljava/lang/String;
    const-string v0, "class"

    invoke-interface {v3, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 359
    .local v8, "className":Ljava/lang/String;
    const-string/jumbo v0, "shortcut"

    invoke-interface {v3, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 360
    .local v9, "shortcutName":Ljava/lang/String;
    const-string v0, "category"

    invoke-interface {v3, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 361
    .local v10, "categoryName":Ljava/lang/String;
    const-string/jumbo v0, "shift"

    invoke-interface {v3, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 362
    .local v11, "shiftName":Ljava/lang/String;
    const-string/jumbo v0, "role"

    invoke-interface {v3, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 365
    .local v6, "roleName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v12, Lcom/android/internal/R$styleable;->Bookmark:[I

    invoke-virtual {v0, v3, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v0

    .line 368
    .local v12, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v12, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 369
    .local v13, "keycode":I
    invoke-virtual {v12, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    .local v14, "modifierState":I
    :try_start_2
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 372
    nop

    .line 374
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    if-eqz v13, :cond_2

    .line 376
    invoke-virtual {v4, v13}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v15

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v15, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto :goto_2

    .line 472
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "virtualKcm":Landroid/view/KeyCharacterMap;
    .end local v6    # "roleName":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "shortcutName":Ljava/lang/String;
    .end local v10    # "categoryName":Ljava/lang/String;
    .end local v11    # "shiftName":Ljava/lang/String;
    .end local v12    # "a":Landroid/content/res/TypedArray;
    .end local v13    # "keycode":I
    .end local v14    # "modifierState":I
    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 379
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "virtualKcm":Landroid/view/KeyCharacterMap;
    .restart local v6    # "roleName":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v9    # "shortcutName":Ljava/lang/String;
    .restart local v10    # "categoryName":Ljava/lang/String;
    .restart local v11    # "shiftName":Ljava/lang/String;
    .restart local v12    # "a":Landroid/content/res/TypedArray;
    .restart local v13    # "keycode":I
    .restart local v14    # "modifierState":I
    :cond_2
    :goto_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shortcut required for bookmark with category="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " packageName="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " className="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " role="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " shiftName="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " keycode= "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " modifierState= "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    goto/16 :goto_0

    .line 388
    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 389
    const-string/jumbo v5, "true"

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    .local v5, "isShiftShortcut":Z
    goto :goto_3

    .line 391
    .end local v5    # "isShiftShortcut":Z
    :cond_4
    and-int/lit8 v5, v14, 0x1

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    move v5, v0

    .line 394
    .restart local v5    # "isShiftShortcut":Z
    :goto_3
    nop

    .line 395
    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 396
    .local v0, "shortcutChar":C
    const/4 v15, 0x0

    .line 397
    .local v15, "bookmark":Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    .line 398
    move-object/from16 v16, v3

    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .local v16, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v3, Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;

    invoke-direct {v3, v0, v5, v7, v8}, Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;-><init>(CZLjava/lang/String;Ljava/lang/String;)V

    move-object v15, v3

    goto :goto_4

    .line 397
    .end local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_6
    move-object/from16 v16, v3

    .line 400
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v16    # "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v10, :cond_7

    .line 401
    new-instance v3, Lcom/android/server/policy/ModifierShortcutManager$CategoryBookmark;

    invoke-direct {v3, v0, v5, v10}, Lcom/android/server/policy/ModifierShortcutManager$CategoryBookmark;-><init>(CZLjava/lang/String;)V

    move-object v15, v3

    goto :goto_4

    .line 403
    :cond_7
    if-eqz v6, :cond_8

    .line 404
    new-instance v3, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;

    invoke-direct {v3, v0, v5, v6}, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;-><init>(CZLjava/lang/String;)V

    move-object v15, v3

    .line 406
    :cond_8
    :goto_4
    if-eqz v15, :cond_9

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    .end local v4    # "virtualKcm":Landroid/view/KeyCharacterMap;
    .local v17, "virtualKcm":Landroid/view/KeyCharacterMap;
    const-string v4, "adding shortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " shift="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " char="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v3, v1, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    new-instance v4, Landroid/util/Pair;

    move/from16 v18, v0

    .end local v0    # "shortcutChar":C
    .local v18, "shortcutChar":C
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 406
    .end local v17    # "virtualKcm":Landroid/view/KeyCharacterMap;
    .end local v18    # "shortcutChar":C
    .restart local v0    # "shortcutChar":C
    .restart local v4    # "virtualKcm":Landroid/view/KeyCharacterMap;
    :cond_9
    move/from16 v18, v0

    move-object/from16 v17, v4

    .line 411
    .end local v0    # "shortcutChar":C
    .end local v4    # "virtualKcm":Landroid/view/KeyCharacterMap;
    .end local v15    # "bookmark":Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
    .restart local v17    # "virtualKcm":Landroid/view/KeyCharacterMap;
    :goto_5
    nop

    .line 471
    .end local v5    # "isShiftShortcut":Z
    .end local v6    # "roleName":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "shortcutName":Ljava/lang/String;
    .end local v10    # "categoryName":Ljava/lang/String;
    .end local v11    # "shiftName":Ljava/lang/String;
    .end local v12    # "a":Landroid/content/res/TypedArray;
    .end local v13    # "keycode":I
    .end local v14    # "modifierState":I
    move-object/from16 v1, p0

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_0

    .line 371
    .end local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v17    # "virtualKcm":Landroid/view/KeyCharacterMap;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "virtualKcm":Landroid/view/KeyCharacterMap;
    .restart local v6    # "roleName":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v9    # "shortcutName":Ljava/lang/String;
    .restart local v10    # "categoryName":Ljava/lang/String;
    .restart local v11    # "shiftName":Ljava/lang/String;
    .restart local v12    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "virtualKcm":Landroid/view/KeyCharacterMap;
    .restart local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v17    # "virtualKcm":Landroid/view/KeyCharacterMap;
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 372
    nop

    .end local p0    # "this":Lcom/android/server/policy/ModifierShortcutManager;
    throw v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 472
    .end local v6    # "roleName":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "shortcutName":Ljava/lang/String;
    .end local v10    # "categoryName":Ljava/lang/String;
    .end local v11    # "shiftName":Ljava/lang/String;
    .end local v12    # "a":Landroid/content/res/TypedArray;
    .end local v16    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v17    # "virtualKcm":Landroid/view/KeyCharacterMap;
    .restart local p0    # "this":Lcom/android/server/policy/ModifierShortcutManager;
    :goto_6
    nop

    .line 473
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Got exception parsing bookmarks."

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    return-void
.end method

.method private notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "gestureType"    # I

    .line 661
    if-nez p2, :cond_0

    .line 662
    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 665
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 664
    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/input/InputManagerInternal;->notifyKeyGestureCompleted(I[III)V

    .line 666
    return-void
.end method

.method private resolveComponentNameIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 479
    nop

    .line 480
    const/4 v0, 0x0

    return-object v0
.end method

.method private static resolveComponentNameIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 508
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 509
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/high16 v1, 0x40000

    .line 510
    .local v1, "flags":I
    nop

    .line 514
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .local v2, "componentName":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    goto :goto_0

    .line 517
    :catch_0
    move-exception v3

    .line 518
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 520
    .local v4, "packages":[Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-direct {v5, v6, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 522
    :try_start_1
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 527
    nop

    .line 529
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "packages":[Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 530
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 532
    return-object v3

    .line 523
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "packages":[Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 524
    .local v5, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add bookmark: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ModifierShortcutManager"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v6, 0x0

    return-object v6
.end method

.method private resolveComponentNameIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 496
    nop

    .line 497
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method clearComponentIntents()V
    .locals 2

    .line 202
    nop

    .line 203
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda1;-><init>()V

    .line 204
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 208
    return-void
.end method

.method clearRoleIntents()V
    .locals 2

    .line 193
    nop

    .line 194
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda1;-><init>()V

    .line 195
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 199
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1038
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    const-string v1, "ModifierShortcutManager shortcuts:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    nop

    .line 1041
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1042
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;

    .line 1043
    .local v2, "b":Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
    invoke-virtual {v2}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->isShift()Z

    move-result v3

    .line 1044
    .local v3, "isShift":Z
    invoke-virtual {v2}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->getShortcutChar()C

    move-result v4

    .line 1045
    .local v4, "shortcutChar":C
    nop

    .line 1046
    iget-object v5, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    .line 1048
    .local v5, "context":Landroid/content/Context;
    invoke-virtual {v2, v5}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    .line 1049
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    const-string v7, "SHIFT+"

    goto :goto_1

    :cond_0
    const-string v7, ""

    :goto_1
    invoke-virtual {v0, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1050
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1052
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1053
    invoke-virtual {p0, v4, v6, v3}, Lcom/android/server/policy/ModifierShortcutManager;->shortcutInfoFromIntent(CLandroid/content/Intent;Z)Landroid/view/KeyboardShortcutInfo;

    move-result-object v7

    .line 1054
    .local v7, "info":Landroid/view/KeyboardShortcutInfo;
    if-eqz v7, :cond_1

    .line 1055
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resolves to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1057
    :cond_1
    const-string v8, "<No KeyboardShortcutInfo available for this shortcut>"

    invoke-virtual {v0, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    :goto_2
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1060
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1061
    .end local v2    # "b":Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
    .end local v3    # "isShift":Z
    .end local v4    # "shortcutChar":C
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "info":Landroid/view/KeyboardShortcutInfo;
    goto :goto_0

    :cond_2
    nop

    .line 1115
    return-void
.end method

.method public getApplicationLaunchKeyboardShortcuts(I)Landroid/view/KeyboardShortcutGroup;
    .locals 7
    .param p1, "deviceId"    # I

    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .local v0, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutInfo;>;"
    nop

    .line 720
    nop

    .line 721
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 722
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;

    .line 723
    .local v3, "b":Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
    nop

    .line 724
    invoke-virtual {v3}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->getShortcutChar()C

    move-result v4

    invoke-virtual {v3, v1}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->isShift()Z

    move-result v6

    .line 723
    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/policy/ModifierShortcutManager;->shortcutInfoFromIntent(CLandroid/content/Intent;Z)Landroid/view/KeyboardShortcutInfo;

    move-result-object v4

    .line 725
    .local v4, "info":Landroid/view/KeyboardShortcutInfo;
    if-eqz v4, :cond_0

    .line 726
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    .end local v3    # "b":Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
    .end local v4    # "info":Landroid/view/KeyboardShortcutInfo;
    :cond_0
    goto :goto_0

    .line 729
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    nop

    .line 796
    new-instance v1, Landroid/view/KeyboardShortcutGroup;

    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    .line 797
    const v3, 0x1040539

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 796
    return-object v1
.end method

.method public getApplicationLaunchKeyboardShortcuts(ILjava/util/List;)Landroid/view/KeyboardShortcutGroup;
    .locals 9
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/input/InputGestureData;",
            ">;)",
            "Landroid/view/KeyboardShortcutGroup;"
        }
    .end annotation

    .line 807
    .local p2, "shortcutData":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v0, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutInfo;>;"
    invoke-static {p1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 809
    .local v1, "kcm":Landroid/view/KeyCharacterMap;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputGestureData;

    .line 810
    .local v3, "data":Landroid/hardware/input/InputGestureData;
    invoke-virtual {v3}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v4

    instance-of v5, v4, Landroid/hardware/input/InputGestureData$KeyTrigger;

    nop

    if-eqz v5, :cond_1

    check-cast v4, Landroid/hardware/input/InputGestureData$KeyTrigger;

    .line 811
    .local v4, "trigger":Landroid/hardware/input/InputGestureData$KeyTrigger;
    nop

    .line 812
    invoke-virtual {v4}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getKeycode()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v5

    .line 813
    invoke-virtual {v3}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/policy/ModifierShortcutManager;->getIntentFromAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/content/Intent;

    move-result-object v6

    .line 814
    invoke-virtual {v4}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getModifierState()I

    move-result v7

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 811
    :goto_1
    invoke-virtual {p0, v5, v6, v8}, Lcom/android/server/policy/ModifierShortcutManager;->shortcutInfoFromIntent(CLandroid/content/Intent;Z)Landroid/view/KeyboardShortcutInfo;

    move-result-object v5

    .line 815
    .local v5, "info":Landroid/view/KeyboardShortcutInfo;
    if-eqz v5, :cond_1

    .line 816
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    .end local v3    # "data":Landroid/hardware/input/InputGestureData;
    .end local v4    # "trigger":Landroid/hardware/input/InputGestureData$KeyTrigger;
    .end local v5    # "info":Landroid/view/KeyboardShortcutInfo;
    :cond_1
    goto :goto_0

    .line 820
    :cond_2
    new-instance v2, Landroid/view/KeyboardShortcutGroup;

    iget-object v3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    .line 821
    const v4, 0x1040539

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 820
    return-object v2
.end method

.method interceptKey(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 675
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 676
    return v1

    .line 679
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v0

    .line 680
    .local v0, "metaState":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 681
    .local v2, "keyCode":I
    const/16 v3, 0x54

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    .line 682
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 683
    iput-boolean v4, p0, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    .line 684
    iput-boolean v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    goto :goto_0

    .line 686
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    .line 687
    iget-boolean v3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    if-eqz v3, :cond_2

    .line 688
    iput-boolean v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 689
    return v4

    .line 692
    :cond_2
    :goto_0
    return v1

    .line 695
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_4

    .line 696
    return v1

    .line 699
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v3

    .line 700
    .local v3, "kcm":Landroid/view/KeyCharacterMap;
    invoke-direct {p0, v3, p1, v0}, Lcom/android/server/policy/ModifierShortcutManager;->handleIntentShortcut(Landroid/view/KeyCharacterMap;Landroid/view/KeyEvent;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 701
    return v4

    .line 704
    :cond_5
    invoke-direct {p0, v2, v0}, Lcom/android/server/policy/ModifierShortcutManager;->handleShortcutService(II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 705
    return v4

    .line 708
    :cond_6
    return v1
.end method

.method launchApplication(Landroid/hardware/input/AppLaunchData;)Z
    .locals 5
    .param p1, "data"    # Landroid/hardware/input/AppLaunchData;

    .line 850
    invoke-direct {p0, p1}, Lcom/android/server/policy/ModifierShortcutManager;->getIntentFromAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/content/Intent;

    move-result-object v0

    .line 851
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 852
    return v1

    .line 854
    :cond_0
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 856
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    const/4 v1, 0x1

    return v1

    .line 858
    :catch_0
    move-exception v2

    .line 859
    .local v2, "ex":Landroid/content/ActivityNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not launching app because the activity to which it refers to was not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ModifierShortcutManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    .end local v2    # "ex":Landroid/content/ActivityNotFoundException;
    return v1
.end method

.method onSystemReady()V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/android/server/policy/ModifierShortcutManager;->loadShortcuts()V

    .line 177
    return-void
.end method

.method registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 3
    .param p1, "shortcutCode"    # J
    .param p3, "shortcutService"    # Lcom/android/internal/policy/IShortcutService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/IShortcutService;

    .line 538
    .local v0, "service":Lcom/android/internal/policy/IShortcutService;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/policy/IShortcutService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 539
    :cond_1
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Key already exists."

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 542
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 543
    return-void
.end method

.method setCurrentUser(Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "newUser"    # Landroid/os/UserHandle;

    .line 180
    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    .line 184
    invoke-virtual {p0}, Lcom/android/server/policy/ModifierShortcutManager;->clearRoleIntents()V

    .line 185
    invoke-virtual {p0}, Lcom/android/server/policy/ModifierShortcutManager;->clearComponentIntents()V

    .line 187
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 189
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method shortcutInfoFromIntent(CLandroid/content/Intent;Z)Landroid/view/KeyboardShortcutInfo;
    .locals 8
    .param p1, "baseChar"    # C
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "shift"    # Z

    .line 876
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 877
    return-object v0

    .line 882
    :cond_0
    nop

    .line 883
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mCurrentUser:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 884
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 885
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/high16 v3, 0x10000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 887
    .local v3, "resolvedActivity":Landroid/content/pm/ActivityInfo;
    if-nez v3, :cond_1

    .line 888
    return-object v0

    .line 890
    :cond_1
    const-class v4, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 892
    .local v4, "isResolver":Z
    if-eqz v4, :cond_3

    .line 893
    nop

    .line 894
    invoke-virtual {p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 893
    invoke-static {v1, v5}, Lcom/android/server/policy/ModifierShortcutManager;->getIntentCategoryLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 895
    .local v5, "label":Ljava/lang/CharSequence;
    if-nez v5, :cond_2

    .line 896
    return-object v0

    .line 898
    :cond_2
    const v0, 0x1080093

    invoke-static {v1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .local v0, "icon":Landroid/graphics/drawable/Icon;
    goto :goto_0

    .line 901
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    .end local v5    # "label":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v3, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 902
    .restart local v5    # "label":Ljava/lang/CharSequence;
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 903
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v6

    .line 902
    invoke-static {v0, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 905
    .restart local v0    # "icon":Landroid/graphics/drawable/Icon;
    :goto_0
    const/high16 v6, 0x10000

    .line 906
    .local v6, "modifiers":I
    if-eqz p3, :cond_4

    .line 907
    or-int/lit8 v6, v6, 0x1

    .line 909
    :cond_4
    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    invoke-direct {v7, v5, v0, p1, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;CI)V

    return-object v7
.end method
