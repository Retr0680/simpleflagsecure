.class final Lcom/android/server/input/AppLaunchShortcutManager;
.super Ljava/lang/Object;
.source "AppLaunchShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTRIBUTE_CLASS:Ljava/lang/String; = "class"

.field private static final ATTRIBUTE_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTRIBUTE_ROLE:Ljava/lang/String; = "role"

.field private static final ATTRIBUTE_SHIFT:Ljava/lang/String; = "shift"

.field private static final ATTRIBUTE_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final SHORTCUT_CODE_META_MASK:I = 0x11003

.field private static final TAG:Ljava/lang/String; = "AppShortcutManager"

.field private static final TAG_BOOKMARK:Ljava/lang/String; = "bookmark"

.field private static final TAG_BOOKMARKS:Ljava/lang/String; = "bookmarks"

.field private static final sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sApplicationLaunchKeyRoles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBookmarks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/input/InputGestureData$Trigger;",
            "Landroid/hardware/input/InputGestureData;",
            ">;"
        }
    .end annotation
.end field

.field private mConsumeSearchKeyUp:Z

.field private final mContext:Landroid/content/Context;

.field private mSearchKeyShortcutPending:Z

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
.method static constructor <clinit>()V
    .locals 3

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyRoles:Landroid/util/SparseArray;

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 90
    sget-object v0, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyRoles:Landroid/util/SparseArray;

    const/16 v1, 0x40

    const-string v2, "android.app.role.BROWSER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xcf

    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd0

    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd1

    const-string v2, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd2

    const-string v2, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 102
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    .line 111
    iput-object p1, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mContext:Landroid/content/Context;

    .line 112
    return-void
.end method

.method private interceptShortcut(Landroid/view/KeyEvent;)Landroid/hardware/input/AppLaunchData;
    .locals 6
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 245
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 246
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    const v2, 0x11003

    and-int/2addr v1, v2

    .line 252
    .local v1, "modifierState":I
    iget-boolean v2, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 253
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 254
    .local v2, "kcm":Landroid/view/KeyCharacterMap;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    .line 256
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    .line 260
    .end local v2    # "kcm":Landroid/view/KeyCharacterMap;
    :cond_0
    goto :goto_1

    .line 258
    .restart local v2    # "kcm":Landroid/view/KeyCharacterMap;
    :cond_1
    return-object v3

    .line 260
    .end local v2    # "kcm":Landroid/view/KeyCharacterMap;
    :cond_2
    if-nez v1, :cond_0

    .line 261
    const/4 v2, 0x0

    .line 263
    .local v2, "appLaunchData":Landroid/hardware/input/AppLaunchData;
    sget-object v3, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyRoles:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 264
    .local v3, "role":Ljava/lang/String;
    sget-object v4, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 265
    .local v4, "category":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 266
    invoke-static {v3}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForRole(Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v2

    goto :goto_0

    .line 267
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 268
    invoke-static {v4}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForCategory(Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v2

    .line 271
    :cond_4
    :goto_0
    return-object v2

    .line 274
    .end local v2    # "appLaunchData":Landroid/hardware/input/AppLaunchData;
    .end local v3    # "role":Ljava/lang/String;
    .end local v4    # "category":Ljava/lang/String;
    :goto_1
    if-nez v0, :cond_5

    .line 275
    return-object v3

    .line 277
    :cond_5
    iget-object v2, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    .line 278
    invoke-static {v0, v1}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v4

    .line 277
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputGestureData;

    .line 279
    .local v2, "gesture":Landroid/hardware/input/InputGestureData;
    if-nez v2, :cond_6

    .line 280
    return-object v3

    .line 282
    :cond_6
    invoke-virtual {v2}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v3

    return-object v3
.end method

.method private loadShortcuts()V
    .locals 18

    .line 120
    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x1

    const-string v3, "AppShortcutManager"

    :try_start_0
    iget-object v4, v1, Lcom/android/server/input/AppLaunchShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1170004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 121
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    const-string v5, "bookmarks"

    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 122
    const/4 v5, -0x1

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    .line 125
    .local v5, "virtualKcm":Landroid/view/KeyCharacterMap;
    :goto_0
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 127
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-ne v6, v2, :cond_0

    .line 128
    goto :goto_1

    .line 131
    :cond_0
    const-string v6, "bookmark"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 132
    const-string v0, "TAG_BOOKMARK not found"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    nop

    .line 198
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "virtualKcm":Landroid/view/KeyCharacterMap;
    :goto_1
    goto/16 :goto_8

    .line 196
    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 136
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "virtualKcm":Landroid/view/KeyCharacterMap;
    :cond_1
    const-string/jumbo v6, "package"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, "packageName":Ljava/lang/String;
    const-string v8, "class"

    invoke-interface {v4, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 138
    .local v8, "className":Ljava/lang/String;
    const-string v9, "category"

    invoke-interface {v4, v7, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, "categoryName":Ljava/lang/String;
    const-string/jumbo v10, "shift"

    invoke-interface {v4, v7, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 140
    .local v10, "shiftName":Ljava/lang/String;
    const-string/jumbo v11, "role"

    invoke-interface {v4, v7, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 141
    .local v11, "roleName":Ljava/lang/String;
    const-string/jumbo v12, "shortcut"

    invoke-interface {v4, v7, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 144
    .local v7, "shortcut":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/input/AppLaunchShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget-object v13, Lcom/android/internal/R$styleable;->Bookmark:[I

    invoke-virtual {v12, v4, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .local v12, "a":Landroid/content/res/TypedArray;
    :try_start_1
    invoke-virtual {v12, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 148
    .local v13, "keycode":I
    invoke-virtual {v12, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .local v14, "modifierState":I
    :try_start_2
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    nop

    .line 152
    if-nez v13, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 154
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    .line 155
    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v16, v0

    new-array v0, v2, [C

    aput-char v15, v0, v16

    .line 154
    invoke-virtual {v5, v0}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    .line 157
    .local v0, "events":[Landroid/view/KeyEvent;
    if-eqz v0, :cond_3

    array-length v15, v0

    const/4 v2, 0x2

    if-ne v15, v2, :cond_3

    .line 158
    aget-object v2, v0, v16

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v13, v2

    goto :goto_2

    .line 152
    .end local v0    # "events":[Landroid/view/KeyEvent;
    :cond_2
    move/from16 v16, v0

    .line 161
    :cond_3
    :goto_2
    const-string v0, " modifierState="

    if-nez v13, :cond_4

    .line 162
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Keycode required for bookmark with category="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " packageName="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " className="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " role="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " shiftName="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " shortcut="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    move/from16 v0, v16

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 169
    :cond_4
    if-nez v14, :cond_7

    .line 171
    if-eqz v10, :cond_5

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v15, "true"

    .line 172
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    move/from16 v2, v16

    :goto_3
    nop

    .line 173
    .local v2, "isShiftShortcut":Z
    nop

    .line 174
    if-eqz v2, :cond_6

    const/4 v15, 0x1

    goto :goto_4

    :cond_6
    move/from16 v15, v16

    :goto_4
    const/high16 v17, 0x10000

    or-int v14, v15, v17

    .line 176
    .end local v2    # "isShiftShortcut":Z
    :cond_7
    const/4 v2, 0x0

    .line 177
    .local v2, "launchData":Landroid/hardware/input/AppLaunchData;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 178
    invoke-static {v6, v8}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v15

    move-object v2, v15

    goto :goto_5

    .line 179
    :cond_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 180
    invoke-static {v9}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForCategory(Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v15

    move-object v2, v15

    goto :goto_5

    .line 181
    :cond_9
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 182
    invoke-static {v11}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForRole(Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v15

    move-object v2, v15

    .line 184
    :cond_a
    :goto_5
    if-eqz v2, :cond_b

    .line 185
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .local v17, "parser":Landroid/content/res/XmlResourceParser;
    const-string v4, "adding shortcut "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " keycode="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Landroid/hardware/input/InputGestureData$Builder;

    invoke-direct {v0}, Landroid/hardware/input/InputGestureData$Builder;-><init>()V

    .line 189
    invoke-static {v13, v14}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object v0

    .line 190
    const/16 v4, 0x33

    invoke-virtual {v0, v4}, Landroid/hardware/input/InputGestureData$Builder;->setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v2}, Landroid/hardware/input/InputGestureData$Builder;->setAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/hardware/input/InputGestureData$Builder;->build()Landroid/hardware/input/InputGestureData;

    move-result-object v0

    .line 193
    .local v0, "bookmark":Landroid/hardware/input/InputGestureData;
    iget-object v4, v1, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v15

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 184
    .end local v0    # "bookmark":Landroid/hardware/input/InputGestureData;
    .end local v17    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_b
    move-object/from16 v17, v4

    .line 195
    .end local v2    # "launchData":Landroid/hardware/input/AppLaunchData;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "shortcut":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "categoryName":Ljava/lang/String;
    .end local v10    # "shiftName":Ljava/lang/String;
    .end local v11    # "roleName":Ljava/lang/String;
    .end local v12    # "a":Landroid/content/res/TypedArray;
    .end local v13    # "keycode":I
    .end local v14    # "modifierState":I
    .restart local v17    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_6
    move/from16 v0, v16

    move-object/from16 v4, v17

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 150
    .end local v17    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "shortcut":Ljava/lang/String;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v9    # "categoryName":Ljava/lang/String;
    .restart local v10    # "shiftName":Ljava/lang/String;
    .restart local v11    # "roleName":Ljava/lang/String;
    .restart local v12    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v17    # "parser":Landroid/content/res/XmlResourceParser;
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    nop

    .end local p0    # "this":Lcom/android/server/input/AppLaunchShortcutManager;
    throw v0
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 196
    .end local v5    # "virtualKcm":Landroid/view/KeyCharacterMap;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "shortcut":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "categoryName":Ljava/lang/String;
    .end local v10    # "shiftName":Ljava/lang/String;
    .end local v11    # "roleName":Ljava/lang/String;
    .end local v12    # "a":Landroid/content/res/TypedArray;
    .end local v17    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/server/input/AppLaunchShortcutManager;
    :goto_7
    nop

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Got exception parsing bookmarks."

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 327
    const-string v0, "AppLaunchShortcutManager:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 329
    iget-object v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputGestureData;

    .line 330
    .local v1, "data":Landroid/hardware/input/InputGestureData;
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 331
    .end local v1    # "data":Landroid/hardware/input/InputGestureData;
    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 333
    return-void
.end method

.method public getBookmarks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/input/InputGestureData;",
            ">;"
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public handleShortcutService(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 218
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    const v1, 0x11003

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 219
    .local v0, "shortcutCodeMeta":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 220
    return v3

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    int-to-long v4, v2

    const/16 v2, 0x20

    shl-long v6, v0, v2

    or-long/2addr v4, v6

    .line 223
    .local v4, "shortcutCode":J
    iget-object v2, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/IShortcutService;

    .line 224
    .local v2, "shortcutService":Lcom/android/internal/policy/IShortcutService;
    if-eqz v2, :cond_1

    .line 226
    :try_start_0
    invoke-interface {v2, v4, v5}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    goto :goto_0

    .line 227
    :catch_0
    move-exception v3

    .line 228
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shortcut key service not found, deleting shortcut code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AppShortcutManager"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v6, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 232
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 234
    :cond_1
    return v3
.end method

.method public init()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/android/server/input/AppLaunchShortcutManager;->loadShortcuts()V

    .line 116
    return-void
.end method

.method public interceptKey(Landroid/view/KeyEvent;)Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 291
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->-$$Nest$sfgetDO_NOTHING()Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    move-result-object v0

    return-object v0

    .line 295
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 296
    .local v0, "keyCode":I
    const/16 v1, 0x54

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 297
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 298
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    .line 299
    iput-boolean v2, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    goto :goto_0

    .line 301
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    .line 302
    iget-boolean v1, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    if-eqz v1, :cond_2

    .line 303
    iput-boolean v2, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    .line 304
    invoke-static {}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->-$$Nest$sfgetCONSUME_KEY()Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    move-result-object v1

    return-object v1

    .line 307
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->-$$Nest$sfgetDO_NOTHING()Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    move-result-object v1

    return-object v1

    .line 310
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_4

    .line 311
    invoke-static {}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->-$$Nest$sfgetDO_NOTHING()Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    move-result-object v1

    return-object v1

    .line 315
    :cond_4
    new-instance v1, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    invoke-direct {p0, p1}, Lcom/android/server/input/AppLaunchShortcutManager;->interceptShortcut(Landroid/view/KeyEvent;)Landroid/hardware/input/AppLaunchData;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;-><init>(ZLandroid/hardware/input/AppLaunchData;)V

    return-object v1
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 4
    .param p1, "shortcutCode"    # J
    .param p3, "shortcutService"    # Lcom/android/internal/policy/IShortcutService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/IShortcutService;

    .line 204
    .local v0, "service":Lcom/android/internal/policy/IShortcutService;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/policy/IShortcutService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 205
    :cond_1
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", already exists."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 209
    return-void
.end method
