.class public final Lcom/android/server/input/KeyboardGlyphManager;
.super Ljava/lang/Object;
.source "KeyboardGlyphManager.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "KeyboardGlyphManager"

.field private static final TAG_FUNCTION_ROW_KEY:Ljava/lang/String; = "function-row-key"

.field private static final TAG_HARDWARE_DEFINED_SHORTCUT:Ljava/lang/String; = "hardware-defined-shortcut"

.field private static final TAG_KEYBOARD_GLYPH_MAP:Ljava/lang/String; = "keyboard-glyph-map"

.field private static final TAG_KEYBOARD_GLYPH_MAPS:Ljava/lang/String; = "keyboard-glyph-maps"

.field private static final TAG_KEY_GLYPH:Ljava/lang/String; = "key-glyph"

.field private static final TAG_MODIFIER_GLYPH:Ljava/lang/String; = "modifier-glyph"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGlyphMapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/input/KeyGlyphMap;",
            ">;"
        }
    .end annotation
.end field

.field private mGlyphMapDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;",
            ">;"
        }
    .end annotation
.end field

.field private mGlyphMapDataLoaded:Z

.field private final mGlyphMapLock:Ljava/lang/Object;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$mresetMaps(Lcom/android/server/input/KeyboardGlyphManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/input/KeyboardGlyphManager;->resetMaps()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 70
    const-string v0, "KeyboardGlyphManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/KeyboardGlyphManager;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapLock:Ljava/lang/Object;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataLoaded:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataList:Ljava/util/List;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapCache:Landroid/util/SparseArray;

    .line 91
    iput-object p1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mHandler:Landroid/os/Handler;

    .line 93
    return-void
.end method

.method private getInputDevice(I)Landroid/view/InputDevice;
    .locals 2
    .param p1, "deviceId"    # I

    .line 377
    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 378
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

.method private getKeyGlyphMapInternal(I)Landroid/hardware/input/KeyGlyphMap;
    .locals 6
    .param p1, "deviceId"    # I

    .line 337
    invoke-direct {p0, p1}, Lcom/android/server/input/KeyboardGlyphManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 338
    .local v0, "inputDevice":Landroid/view/InputDevice;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    goto :goto_1

    .line 341
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataLoaded:Z

    if-nez v2, :cond_2

    .line 342
    invoke-direct {p0}, Lcom/android/server/input/KeyboardGlyphManager;->loadGlyphMapDataList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataList:Ljava/util/List;

    .line 343
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataLoaded:Z

    .line 345
    :cond_2
    iget-object v2, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;

    .line 346
    .local v3, "data":Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;
    invoke-static {v3}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->-$$Nest$fgetvendorId(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v5

    nop

    if-ne v4, v5, :cond_3

    invoke-static {v3}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->-$$Nest$fgetproductId(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)I

    move-result v4

    .line 347
    invoke-virtual {v0}, Landroid/view/InputDevice;->getProductId()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 348
    invoke-direct {p0, v3}, Lcom/android/server/input/KeyboardGlyphManager;->loadGlyphMap(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)Landroid/hardware/input/KeyGlyphMap;

    move-result-object v1

    return-object v1

    .line 350
    .end local v3    # "data":Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;
    :cond_3
    goto :goto_0

    .line 351
    :cond_4
    return-object v1

    .line 339
    :goto_1
    return-object v1
.end method

.method private getKeyboardGlyphMapsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/util/List;
    .locals 20
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "receiver"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ActivityInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;",
            ">;"
        }
    .end annotation

    .line 164
    move-object/from16 v1, p2

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 165
    .local v2, "metaData":Landroid/os/Bundle;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 166
    return-object v3

    .line 169
    :cond_0
    const-string v0, "android.hardware.input.metadata.KEYBOARD_GLYPH_MAPS"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 170
    .local v4, "configResId":I
    const-string v5, "/"

    const-string v6, "KeyboardGlyphManager"

    if-nez v4, :cond_1

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_GLYPH_MAPS\' on receiver "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-object v3

    .line 177
    :cond_1
    :try_start_0
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v7, p1

    :try_start_1
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    move-object v8, v0

    .line 178
    .local v8, "resources":Landroid/content/res/Resources;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 179
    .local v9, "glyphMaps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;>;"
    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v0

    .line 180
    .local v10, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_2
    const-string/jumbo v0, "keyboard-glyph-maps"

    invoke-static {v10, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 183
    :goto_0
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 184
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v11, v0

    .line 185
    .local v11, "element":Ljava/lang/String;
    if-nez v11, :cond_2

    .line 186
    nop

    .line 204
    .end local v11    # "element":Ljava/lang/String;
    nop

    .line 205
    :try_start_3
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 204
    return-object v9

    .line 206
    .end local v8    # "resources":Landroid/content/res/Resources;
    .end local v9    # "glyphMaps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;>;"
    .end local v10    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 188
    .restart local v8    # "resources":Landroid/content/res/Resources;
    .restart local v9    # "glyphMaps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;>;"
    .restart local v10    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v11    # "element":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string/jumbo v0, "keyboard-glyph-map"

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 189
    goto :goto_0

    .line 191
    :cond_3
    sget-object v0, Lcom/android/internal/R$styleable;->KeyboardGlyphMap:[I

    invoke-virtual {v8, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v12, v0

    .line 193
    .local v12, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {v12, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move/from16 v16, v0

    .line 194
    .local v16, "glyphMapRes":I
    const/4 v0, 0x2

    const/4 v13, -0x1

    invoke-virtual {v12, v0, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    .line 195
    .local v0, "vendor":I
    const/4 v14, 0x1

    invoke-virtual {v12, v14, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v14, v18

    .line 196
    .local v14, "product":I
    if-eqz v16, :cond_4

    if-eq v0, v13, :cond_4

    if-eq v14, v13, :cond_4

    .line 197
    new-instance v13, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;

    move/from16 v18, v14

    .end local v14    # "product":I
    .local v18, "product":I
    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/16 v19, 0x0

    move/from16 v17, v0

    .end local v0    # "vendor":I
    .local v17, "vendor":I
    invoke-direct/range {v13 .. v19}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/android/server/input/KeyboardGlyphManager-IA;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 201
    .end local v16    # "glyphMapRes":I
    .end local v17    # "vendor":I
    .end local v18    # "product":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 196
    .restart local v0    # "vendor":I
    .restart local v14    # "product":I
    .restart local v16    # "glyphMapRes":I
    :cond_4
    move/from16 v17, v0

    move/from16 v18, v14

    .line 201
    .end local v0    # "vendor":I
    .end local v14    # "product":I
    .end local v16    # "glyphMapRes":I
    :goto_1
    :try_start_6
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    nop

    .line 203
    .end local v11    # "element":Ljava/lang/String;
    .end local v12    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 179
    :catchall_1
    move-exception v0

    move-object v11, v0

    goto :goto_3

    .line 201
    .restart local v11    # "element":Ljava/lang/String;
    .restart local v12    # "a":Landroid/content/res/TypedArray;
    :goto_2
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    nop

    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v4    # "configResId":I
    .end local v8    # "resources":Landroid/content/res/Resources;
    .end local v9    # "glyphMaps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;>;"
    .end local v10    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/android/server/input/KeyboardGlyphManager;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 179
    .end local v11    # "element":Ljava/lang/String;
    .end local v12    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "metaData":Landroid/os/Bundle;
    .restart local v4    # "configResId":I
    .restart local v8    # "resources":Landroid/content/res/Resources;
    .restart local v9    # "glyphMaps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;>;"
    .restart local v10    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/server/input/KeyboardGlyphManager;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    :goto_3
    if-eqz v10, :cond_5

    :try_start_7
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    nop

    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v4    # "configResId":I
    .end local p0    # "this":Lcom/android/server/input/KeyboardGlyphManager;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    throw v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 206
    .end local v8    # "resources":Landroid/content/res/Resources;
    .end local v9    # "glyphMaps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;>;"
    .end local v10    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "metaData":Landroid/os/Bundle;
    .restart local v4    # "configResId":I
    .restart local p0    # "this":Lcom/android/server/input/KeyboardGlyphManager;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "receiver":Landroid/content/pm/ActivityInfo;
    :catch_1
    move-exception v0

    move-object/from16 v7, p1

    :goto_5
    nop

    .line 207
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not parse keyboard glyph map resource from receiver "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    .end local v0    # "ex":Ljava/lang/Exception;
    return-object v3
.end method

.method private loadGlyphMap(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)Landroid/hardware/input/KeyGlyphMap;
    .locals 5
    .param p1, "data"    # Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;

    .line 215
    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 217
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->-$$Nest$fgetpackageName(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->-$$Nest$fgetreceiverName(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .local v1, "componentName":Landroid/content/ComponentName;
    const v2, 0xc0080

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 222
    .local v2, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 223
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->-$$Nest$fgetresourceId(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)I

    move-result v4

    invoke-direct {p0, v3, v1, v4}, Lcom/android/server/input/KeyboardGlyphManager;->loadGlyphMapFromResource(Landroid/content/res/Resources;Landroid/content/ComponentName;I)Landroid/hardware/input/KeyGlyphMap;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 224
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "receiver":Landroid/content/pm/ActivityInfo;
    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyboardGlyphManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private loadGlyphMapDataList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 143
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v1, "glyphMaps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.input.action.QUERY_KEYBOARD_GLYPH_MAPS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, "intent":Landroid/content/Intent;
    const v3, 0xc0080

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 148
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    nop

    nop

    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_1

    .line 149
    goto :goto_0

    .line 151
    :cond_1
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 152
    .local v5, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-direct {p0, v0, v5}, Lcom/android/server/input/KeyboardGlyphManager;->getKeyboardGlyphMapsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/util/List;

    move-result-object v6

    .line 153
    .local v6, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;>;"
    nop

    nop

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 154
    goto :goto_0

    .line 156
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;>;"
    goto :goto_0

    .line 158
    :cond_3
    return-object v1
.end method

.method private loadGlyphMapFromResource(Landroid/content/res/Resources;Landroid/content/ComponentName;I)Landroid/hardware/input/KeyGlyphMap;
    .locals 12
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "glyphMapId"    # I

    .line 233
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    move-object v3, v0

    .line 234
    .local v3, "keyGlyphs":Landroid/util/SparseIntArray;
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 235
    .local v4, "modifierGlyphs":Landroid/util/SparseIntArray;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 236
    .local v7, "functionRowKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v6, "hardwareShortcuts":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/input/KeyGlyphMap$KeyCombination;Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v1, v0

    .line 239
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    const-string/jumbo v0, "keyboard-glyph-map"

    invoke-static {v1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 242
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 243
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 244
    .local v2, "element":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 245
    nop

    .line 312
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "element":Ljava/lang/String;
    goto/16 :goto_d

    .line 247
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "element":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string/jumbo v0, "key-glyph"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v9

    goto :goto_2

    .line 310
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "element":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto/16 :goto_c

    .line 247
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "element":Ljava/lang/String;
    :sswitch_1
    const-string v0, "function-row-key"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_2

    :sswitch_2
    const-string/jumbo v0, "modifier-glyph"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    goto :goto_2

    :sswitch_3
    const-string/jumbo v0, "hardware-defined-shortcut"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_2

    :goto_1
    const/4 v0, -0x1

    :goto_2
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    .line 289
    :pswitch_0
    sget-object v0, Lcom/android/internal/R$styleable;->HardwareDefinedShortcut:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v0

    .line 292
    .local v10, "a":Landroid/content/res/TypedArray;
    :try_start_1
    invoke-virtual {v10, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 294
    .local v0, "keycode":I
    invoke-virtual {v10, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 296
    .local v8, "modifierState":I
    invoke-virtual {v10, v5, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 299
    .local v5, "outKeycode":I
    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    if-eqz v5, :cond_2

    .line 300
    new-instance v9, Landroid/hardware/input/KeyGlyphMap$KeyCombination;

    invoke-direct {v9, v8, v0}, Landroid/hardware/input/KeyGlyphMap$KeyCombination;-><init>(II)V

    .line 302
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 300
    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 305
    .end local v0    # "keycode":I
    .end local v5    # "outKeycode":I
    .end local v8    # "modifierState":I
    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_3
    :try_start_2
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 306
    goto/16 :goto_a

    .line 305
    :goto_4
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 306
    nop

    .end local v3    # "keyGlyphs":Landroid/util/SparseIntArray;
    .end local v4    # "modifierGlyphs":Landroid/util/SparseIntArray;
    .end local v6    # "hardwareShortcuts":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/input/KeyGlyphMap$KeyCombination;Ljava/lang/Integer;>;"
    .end local v7    # "functionRowKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p0    # "this":Lcom/android/server/input/KeyboardGlyphManager;
    .end local p1    # "resources":Landroid/content/res/Resources;
    .end local p2    # "componentName":Landroid/content/ComponentName;
    .end local p3    # "glyphMapId":I
    throw v0

    .line 277
    .end local v10    # "a":Landroid/content/res/TypedArray;
    .restart local v3    # "keyGlyphs":Landroid/util/SparseIntArray;
    .restart local v4    # "modifierGlyphs":Landroid/util/SparseIntArray;
    .restart local v6    # "hardwareShortcuts":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/input/KeyGlyphMap$KeyCombination;Ljava/lang/Integer;>;"
    .restart local v7    # "functionRowKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Lcom/android/server/input/KeyboardGlyphManager;
    .restart local p1    # "resources":Landroid/content/res/Resources;
    .restart local p2    # "componentName":Landroid/content/ComponentName;
    .restart local p3    # "glyphMapId":I
    :pswitch_1
    sget-object v0, Lcom/android/internal/R$styleable;->FunctionRowKey:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v0

    .line 280
    .local v5, "a":Landroid/content/res/TypedArray;
    :try_start_3
    invoke-virtual {v5, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 281
    .restart local v0    # "keycode":I
    if-eqz v0, :cond_3

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    .line 285
    .end local v0    # "keycode":I
    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_3
    :goto_5
    :try_start_4
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 286
    nop

    .line 287
    .end local v5    # "a":Landroid/content/res/TypedArray;
    goto :goto_a

    .line 285
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    :goto_6
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 286
    nop

    .end local v3    # "keyGlyphs":Landroid/util/SparseIntArray;
    .end local v4    # "modifierGlyphs":Landroid/util/SparseIntArray;
    .end local v6    # "hardwareShortcuts":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/input/KeyGlyphMap$KeyCombination;Ljava/lang/Integer;>;"
    .end local v7    # "functionRowKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p0    # "this":Lcom/android/server/input/KeyboardGlyphManager;
    .end local p1    # "resources":Landroid/content/res/Resources;
    .end local p2    # "componentName":Landroid/content/ComponentName;
    .end local p3    # "glyphMapId":I
    throw v0

    .line 262
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .restart local v3    # "keyGlyphs":Landroid/util/SparseIntArray;
    .restart local v4    # "modifierGlyphs":Landroid/util/SparseIntArray;
    .restart local v6    # "hardwareShortcuts":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/input/KeyGlyphMap$KeyCombination;Ljava/lang/Integer;>;"
    .restart local v7    # "functionRowKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Lcom/android/server/input/KeyboardGlyphManager;
    .restart local p1    # "resources":Landroid/content/res/Resources;
    .restart local p2    # "componentName":Landroid/content/ComponentName;
    .restart local p3    # "glyphMapId":I
    :pswitch_2
    sget-object v0, Lcom/android/internal/R$styleable;->ModifierGlyph:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v5, v0

    .line 265
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    :try_start_5
    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 266
    .local v0, "modifier":I
    invoke-virtual {v5, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 269
    .local v8, "modifierGlyph":I
    if-eqz v0, :cond_4

    if-eqz v8, :cond_4

    .line 270
    invoke-virtual {v4, v0, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    .line 273
    .end local v0    # "modifier":I
    .end local v8    # "modifierGlyph":I
    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_4
    :goto_7
    :try_start_6
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 274
    nop

    .line 275
    .end local v5    # "a":Landroid/content/res/TypedArray;
    goto :goto_a

    .line 273
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    :goto_8
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 274
    nop

    .end local v3    # "keyGlyphs":Landroid/util/SparseIntArray;
    .end local v4    # "modifierGlyphs":Landroid/util/SparseIntArray;
    .end local v6    # "hardwareShortcuts":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/input/KeyGlyphMap$KeyCombination;Ljava/lang/Integer;>;"
    .end local v7    # "functionRowKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p0    # "this":Lcom/android/server/input/KeyboardGlyphManager;
    .end local p1    # "resources":Landroid/content/res/Resources;
    .end local p2    # "componentName":Landroid/content/ComponentName;
    .end local p3    # "glyphMapId":I
    throw v0

    .line 249
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .restart local v3    # "keyGlyphs":Landroid/util/SparseIntArray;
    .restart local v4    # "modifierGlyphs":Landroid/util/SparseIntArray;
    .restart local v6    # "hardwareShortcuts":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/input/KeyGlyphMap$KeyCombination;Ljava/lang/Integer;>;"
    .restart local v7    # "functionRowKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Lcom/android/server/input/KeyboardGlyphManager;
    .restart local p1    # "resources":Landroid/content/res/Resources;
    .restart local p2    # "componentName":Landroid/content/ComponentName;
    .restart local p3    # "glyphMapId":I
    :pswitch_3
    sget-object v0, Lcom/android/internal/R$styleable;->KeyGlyph:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-object v5, v0

    .line 252
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    :try_start_7
    invoke-virtual {v5, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 253
    .local v0, "keycode":I
    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 254
    .local v8, "keyGlyph":I
    if-eqz v0, :cond_5

    if-eqz v8, :cond_5

    .line 255
    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_9

    .line 258
    .end local v0    # "keycode":I
    .end local v8    # "keyGlyph":I
    :catchall_3
    move-exception v0

    goto :goto_b

    :cond_5
    :goto_9
    :try_start_8
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    nop

    .line 260
    .end local v5    # "a":Landroid/content/res/TypedArray;
    nop

    .line 309
    .end local v2    # "element":Ljava/lang/String;
    :goto_a
    goto/16 :goto_0

    .line 258
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    :goto_b
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    nop

    .end local v3    # "keyGlyphs":Landroid/util/SparseIntArray;
    .end local v4    # "modifierGlyphs":Landroid/util/SparseIntArray;
    .end local v6    # "hardwareShortcuts":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/input/KeyGlyphMap$KeyCombination;Ljava/lang/Integer;>;"
    .end local v7    # "functionRowKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p0    # "this":Lcom/android/server/input/KeyboardGlyphManager;
    .end local p1    # "resources":Landroid/content/res/Resources;
    .end local p2    # "componentName":Landroid/content/ComponentName;
    .end local p3    # "glyphMapId":I
    throw v0
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 310
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "element":Ljava/lang/String;
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .restart local v3    # "keyGlyphs":Landroid/util/SparseIntArray;
    .restart local v4    # "modifierGlyphs":Landroid/util/SparseIntArray;
    .restart local v6    # "hardwareShortcuts":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/input/KeyGlyphMap$KeyCombination;Ljava/lang/Integer;>;"
    .restart local v7    # "functionRowKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Lcom/android/server/input/KeyboardGlyphManager;
    .restart local p1    # "resources":Landroid/content/res/Resources;
    .restart local p2    # "componentName":Landroid/content/ComponentName;
    .restart local p3    # "glyphMapId":I
    :goto_c
    nop

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse key glyph map : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyboardGlyphManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    new-instance v1, Landroid/hardware/input/KeyGlyphMap;

    .line 314
    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    move-object v2, p2

    .end local p2    # "componentName":Landroid/content/ComponentName;
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-direct/range {v1 .. v6}, Landroid/hardware/input/KeyGlyphMap;-><init>(Landroid/content/ComponentName;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;[ILjava/util/Map;)V

    .line 313
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x713b9731 -> :sswitch_3
        -0x5435454a -> :sswitch_2
        0x124ef7 -> :sswitch_1
        0x47eb903e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetMaps()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataLoaded:Z

    .line 135
    iget-object v1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 136
    iget-object v1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 355
    nop

    .line 358
    invoke-direct {p0}, Lcom/android/server/input/KeyboardGlyphManager;->loadGlyphMapDataList()Ljava/util/List;

    move-result-object v0

    .line 359
    .local v0, "glyphMapDataList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyboardGlyphManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " glyph maps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 361
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;

    .line 362
    .local v2, "data":Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 363
    sget-boolean v3, Lcom/android/server/input/KeyboardGlyphManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 364
    invoke-direct {p0, v2}, Lcom/android/server/input/KeyboardGlyphManager;->loadGlyphMap(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)Landroid/hardware/input/KeyGlyphMap;

    move-result-object v3

    .line 365
    .local v3, "map":Landroid/hardware/input/KeyGlyphMap;
    if-eqz v3, :cond_0

    .line 366
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 367
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 368
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 371
    .end local v2    # "data":Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;
    .end local v3    # "map":Landroid/hardware/input/KeyGlyphMap;
    :cond_0
    goto :goto_0

    .line 372
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 373
    return-void
.end method

.method public getKeyGlyphMap(I)Landroid/hardware/input/KeyGlyphMap;
    .locals 3
    .param p1, "deviceId"    # I

    .line 322
    nop

    .line 325
    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/KeyGlyphMap;

    monitor-exit v0

    return-object v1

    .line 332
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 329
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/input/KeyboardGlyphManager;->getKeyGlyphMapInternal(I)Landroid/hardware/input/KeyGlyphMap;

    move-result-object v1

    .line 330
    .local v1, "keyGlyphMap":Landroid/hardware/input/KeyGlyphMap;
    iget-object v2, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    monitor-exit v0

    return-object v1

    .line 332
    .end local v1    # "keyGlyphMap":Landroid/hardware/input/KeyGlyphMap;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 116
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 129
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 2
    .param p1, "deviceId"    # I

    .line 121
    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 123
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method systemRunning()V
    .locals 5

    .line 96
    nop

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/KeyboardGlyphManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/input/KeyboardGlyphManager$1;-><init>(Lcom/android/server/input/KeyboardGlyphManager;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/input/KeyboardGlyphManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 111
    return-void
.end method
