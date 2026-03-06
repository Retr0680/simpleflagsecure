.class final Lcom/android/server/graphics/fonts/UpdatableFontDir;
.super Ljava/lang/Object;
.source "UpdatableFontDir.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;,
        Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;,
        Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    }
.end annotation


# static fields
.field private static final FONT_SIGNATURE_FILE:Ljava/lang/String; = "font.fsv_sig"

.field private static final RANDOM_DIR_PREFIX:Ljava/lang/String; = "~~"

.field private static final TAG:Ljava/lang/String; = "UpdatableFontDir"


# instance fields
.field private final mConfigFile:Landroid/util/AtomicFile;

.field private final mConfigSupplier:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Landroid/text/FontConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigVersion:I

.field private final mCurrentTimeSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilesDir:Ljava/io/File;

.field private final mFontFileInfoMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

.field private mLastModifiedMillis:J

.field private final mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;


# direct methods
.method public static synthetic $r8$lambda$l6wKUt3kHk5foaoReX8Hx16jJGk(Ljava/util/Map;)Landroid/text/FontConfig;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->lambda$new$0(Ljava/util/Map;)Landroid/text/FontConfig;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;Ljava/io/File;)V
    .locals 7
    .param p1, "filesDir"    # Ljava/io/File;
    .param p2, "parser"    # Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;
    .param p3, "fsverityUtil"    # Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;
    .param p4, "configFile"    # Ljava/io/File;

    .line 146
    new-instance v5, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "filesDir":Ljava/io/File;
    .end local p2    # "parser":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;
    .end local p3    # "fsverityUtil":Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;
    .end local p4    # "configFile":Ljava/io/File;
    .local v1, "filesDir":Ljava/io/File;
    .local v2, "parser":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;
    .local v3, "fsverityUtil":Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;
    .local v4, "configFile":Ljava/io/File;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/graphics/fonts/UpdatableFontDir;-><init>(Ljava/io/File;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;Ljava/io/File;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 150
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;Ljava/io/File;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
    .locals 1
    .param p1, "filesDir"    # Ljava/io/File;
    .param p2, "parser"    # Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;
    .param p3, "fsverityUtil"    # Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;
    .param p4, "configFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;",
            "Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;",
            "Ljava/io/File;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Landroid/text/FontConfig;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p5, "currentTimeSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    .local p6, "configSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;Landroid/text/FontConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    .line 156
    iput-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    .line 157
    iput-object p2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    .line 158
    iput-object p3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    .line 159
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    .line 160
    iput-object p5, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mCurrentTimeSupplier:Ljava/util/function/Supplier;

    .line 161
    iput-object p6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Ljava/util/function/Function;

    .line 162
    return-void
.end method

.method private addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z
    .locals 7
    .param p1, "fontFileInfo"    # Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .param p2, "fontConfig"    # Landroid/text/FontConfig;
    .param p3, "deleteOldFile"    # Z

    .line 490
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->lookupFontFileInfo(Ljava/lang/String;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    move-result-object v0

    .line 492
    .local v0, "existingInfo":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 496
    invoke-direct {p0, p1, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getPreinstalledFontRevision(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;)J

    move-result-wide v3

    .line 497
    .local v3, "preInstalledRev":J
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRevision()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gtz v5, :cond_0

    move v1, v2

    .line 498
    .end local v3    # "preInstalledRev":J
    .local v1, "shouldAddToMap":Z
    :cond_0
    goto :goto_0

    .line 499
    .end local v1    # "shouldAddToMap":Z
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRevision()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRevision()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    move v1, v2

    .line 501
    .restart local v1    # "shouldAddToMap":Z
    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 502
    if-eqz p3, :cond_3

    if-eqz v0, :cond_3

    .line 503
    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRandomizedFontDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 505
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->putFontFileInfo(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;)V

    goto :goto_1

    .line 507
    :cond_4
    if-eqz p3, :cond_5

    .line 508
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRandomizedFontDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 511
    :cond_5
    :goto_1
    return v1
.end method

.method static deleteAllFiles(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p0, "filesDir"    # Ljava/io/File;
    .param p1, "configFile"    # Ljava/io/File;

    .line 704
    const-string v0, "Failed to delete "

    const-string v1, "UpdatableFontDir"

    :try_start_0
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    goto :goto_0

    .line 705
    :catchall_0
    move-exception v2

    .line 706
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 712
    goto :goto_1

    .line 710
    :catchall_1
    move-exception v2

    .line 711
    .restart local v2    # "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private getFontByPostScriptName(Ljava/lang/String;Landroid/text/FontConfig;)Landroid/text/FontConfig$Font;
    .locals 8
    .param p1, "psName"    # Ljava/lang/String;
    .param p2, "fontConfig"    # Landroid/text/FontConfig;

    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, "targetFont":Landroid/text/FontConfig$Font;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 517
    invoke-virtual {p2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/FontConfig$FontFamily;

    .line 518
    .local v2, "family":Landroid/text/FontConfig$FontFamily;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v2}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 519
    invoke-virtual {v2}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$Font;

    .line 520
    .local v4, "font":Landroid/text/FontConfig$Font;
    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 521
    move-object v0, v4

    .line 522
    goto :goto_2

    .line 520
    :cond_0
    nop

    .line 518
    .end local v4    # "font":Landroid/text/FontConfig$Font;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 516
    .end local v2    # "family":Landroid/text/FontConfig$FontFamily;
    .end local v3    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 526
    .end local v1    # "i":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {p2}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 527
    invoke-virtual {p2}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/FontConfig$NamedFamilyList;

    .line 528
    .local v2, "namedFamilyList":Landroid/text/FontConfig$NamedFamilyList;
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_4
    invoke-virtual {v2}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 529
    invoke-virtual {v2}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$FontFamily;

    .line 530
    .local v4, "family":Landroid/text/FontConfig$FontFamily;
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_5
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 531
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/FontConfig$Font;

    .line 532
    .local v6, "font":Landroid/text/FontConfig$Font;
    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 533
    move-object v0, v6

    .line 534
    goto :goto_6

    .line 532
    :cond_3
    nop

    .line 530
    .end local v6    # "font":Landroid/text/FontConfig$Font;
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 528
    .end local v4    # "family":Landroid/text/FontConfig$FontFamily;
    .end local v5    # "k":I
    :cond_4
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    nop

    .line 526
    .end local v2    # "namedFamilyList":Landroid/text/FontConfig$NamedFamilyList;
    .end local v3    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    nop

    .line 539
    .end local v1    # "i":I
    return-object v0
.end method

.method private getFontRevision(Ljava/io/File;)J
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-interface {v0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->getRevision(Ljava/io/File;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "UpdatableFontDir"

    const-string v2, "Failed to read font file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method private getPreinstalledFontRevision(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;)J
    .locals 7
    .param p1, "info"    # Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .param p2, "fontConfig"    # Landroid/text/FontConfig;

    .line 543
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "psName":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontByPostScriptName(Ljava/lang/String;Landroid/text/FontConfig;)Landroid/text/FontConfig$Font;

    move-result-object v1

    .line 546
    .local v1, "targetFont":Landroid/text/FontConfig$Font;
    const-wide/16 v2, -0x1

    if-nez v1, :cond_0

    .line 547
    return-wide v2

    .line 550
    :cond_0
    invoke-virtual {v1}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 551
    invoke-virtual {v1}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v4

    .line 552
    .local v4, "preinstalledFontFile":Ljava/io/File;
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 553
    return-wide v2

    .line 555
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontRevision(Ljava/io/File;)J

    move-result-wide v5

    .line 556
    .local v5, "revision":J
    cmp-long v2, v5, v2

    if-nez v2, :cond_3

    .line 557
    const-string v2, "UpdatableFontDir"

    const-string v3, "Invalid preinstalled font file"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_3
    return-wide v5
.end method

.method private static getRandomDir(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "parent"    # Ljava/io/File;

    .line 463
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 464
    .local v0, "random":Ljava/security/SecureRandom;
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 467
    .local v1, "bytes":[B
    :cond_0
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "~~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const/16 v3, 0xa

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "dirName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 471
    .end local v2    # "dirName":Ljava/lang/String;
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 472
    return-object v3
.end method

.method private installFontFile(Ljava/io/FileDescriptor;[B)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pkcs7Signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    .line 356
    const-string v0, "Failed to read PostScript name from font file"

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getRandomDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 357
    .local v1, "newDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_5

    .line 364
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1c9

    invoke-static {v2, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_6

    .line 369
    nop

    .line 370
    const/4 v2, 0x0

    .line 372
    .local v2, "success":Z
    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string v5, "font.ttf"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    .local v4, "tempNewFontFile":Ljava/io/File;
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 375
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 379
    .end local v5    # "out":Ljava/io/FileOutputStream;
    nop

    .line 383
    :try_start_5
    iget-object v5, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;->setUpFsverity(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 388
    nop

    .line 391
    const/4 v5, -0x3

    :try_start_6
    iget-object v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-interface {v6, v4}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->buildFontFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 396
    .local v6, "fontFileName":Ljava/lang/String;
    nop

    .line 397
    if-eqz v6, :cond_3

    .line 402
    :try_start_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 403
    .local v0, "newFontFile":Ljava/io/File;
    iget-object v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    invoke-interface {v7, v4, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;->rename(Ljava/io/File;Ljava/io/File;)Z

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v7, :cond_2

    .line 410
    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1a4

    invoke-static {v7, v8}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 415
    nop

    .line 416
    :try_start_9
    new-instance v7, Ljava/io/File;

    const-string v8, "font.fsv_sig"

    invoke-direct {v7, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 417
    .local v7, "signatureFile":Ljava/io/File;
    :try_start_a
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 418
    .local v8, "out":Ljava/io/FileOutputStream;
    :try_start_b
    invoke-virtual {v8, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 419
    :try_start_c
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 424
    .end local v8    # "out":Ljava/io/FileOutputStream;
    nop

    .line 426
    :try_start_d
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x180

    invoke-static {v8, v9}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 431
    nop

    .line 432
    :try_start_e
    invoke-direct {p0, v0, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->validateFontFile(Ljava/io/File;[B)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 436
    .local v3, "fontFileInfo":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    :try_start_f
    iget-object v8, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-virtual {v3}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->tryToCreateTypeface(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 441
    nop

    .line 443
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v5

    .line 444
    .local v5, "fontConfig":Landroid/text/FontConfig;
    const/4 v8, 0x0

    invoke-direct {p0, v3, v5, v8}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z

    move-result v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v8, :cond_1

    .line 449
    const/4 v0, 0x1

    .line 451
    .end local v2    # "success":Z
    .end local v3    # "fontFileInfo":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .end local v4    # "tempNewFontFile":Ljava/io/File;
    .end local v5    # "fontConfig":Landroid/text/FontConfig;
    .end local v6    # "fontFileName":Ljava/lang/String;
    .end local v7    # "signatureFile":Ljava/io/File;
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 452
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 455
    :cond_0
    return-void

    .line 445
    .local v0, "newFontFile":Ljava/io/File;
    .restart local v2    # "success":Z
    .restart local v3    # "fontFileInfo":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .restart local v4    # "tempNewFontFile":Ljava/io/File;
    .restart local v5    # "fontConfig":Landroid/text/FontConfig;
    .restart local v6    # "fontFileName":Ljava/lang/String;
    .restart local v7    # "signatureFile":Ljava/io/File;
    :cond_1
    :try_start_11
    new-instance v8, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v9, "Downgrading font file is forbidden."

    const/4 v10, -0x5

    invoke-direct {v8, v10, v9}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .end local v1    # "newDir":Ljava/io/File;
    .end local v2    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    throw v8

    .line 451
    .end local v0    # "newFontFile":Ljava/io/File;
    .end local v3    # "fontFileInfo":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .end local v4    # "tempNewFontFile":Ljava/io/File;
    .end local v5    # "fontConfig":Landroid/text/FontConfig;
    .end local v6    # "fontFileName":Ljava/lang/String;
    .end local v7    # "signatureFile":Ljava/io/File;
    .restart local v1    # "newDir":Ljava/io/File;
    .restart local v2    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 437
    .restart local v0    # "newFontFile":Ljava/io/File;
    .restart local v3    # "fontFileInfo":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .restart local v4    # "tempNewFontFile":Ljava/io/File;
    .restart local v6    # "fontFileName":Ljava/lang/String;
    .restart local v7    # "signatureFile":Ljava/io/File;
    :catchall_1
    move-exception v8

    .line 438
    .local v8, "t":Ljava/lang/Throwable;
    new-instance v9, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v10, "Failed to create Typeface from file"

    invoke-direct {v9, v5, v10, v8}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "newDir":Ljava/io/File;
    .end local v2    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    throw v9

    .line 427
    .end local v3    # "fontFileInfo":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v1    # "newDir":Ljava/io/File;
    .restart local v2    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :catch_0
    move-exception v5

    nop

    .line 428
    .local v5, "e":Landroid/system/ErrnoException;
    new-instance v8, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v9, "Failed to change the signature file mode to 600"

    invoke-direct {v8, v3, v9, v5}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "newDir":Ljava/io/File;
    .end local v2    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    throw v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 419
    .end local v5    # "e":Landroid/system/ErrnoException;
    .restart local v1    # "newDir":Ljava/io/File;
    .restart local v2    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :catch_1
    move-exception v5

    goto :goto_1

    .line 417
    .local v8, "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v5

    :try_start_12
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v9

    :try_start_13
    invoke-virtual {v5, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "newFontFile":Ljava/io/File;
    .end local v1    # "newDir":Ljava/io/File;
    .end local v2    # "success":Z
    .end local v4    # "tempNewFontFile":Ljava/io/File;
    .end local v6    # "fontFileName":Ljava/lang/String;
    .end local v7    # "signatureFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    :goto_0
    throw v5
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 419
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "newFontFile":Ljava/io/File;
    .restart local v1    # "newDir":Ljava/io/File;
    .restart local v2    # "success":Z
    .restart local v4    # "tempNewFontFile":Ljava/io/File;
    .restart local v6    # "fontFileName":Ljava/lang/String;
    .restart local v7    # "signatureFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :goto_1
    nop

    .line 421
    .local v5, "e":Ljava/io/IOException;
    :try_start_14
    new-instance v8, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v9, "Failed to write font signature file to storage."

    invoke-direct {v8, v3, v9, v5}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "newDir":Ljava/io/File;
    .end local v2    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    throw v8

    .line 411
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "signatureFile":Ljava/io/File;
    .restart local v1    # "newDir":Ljava/io/File;
    .restart local v2    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :catch_2
    move-exception v5

    nop

    .line 412
    .local v5, "e":Landroid/system/ErrnoException;
    new-instance v7, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v8, "Failed to change font file mode to 644"

    invoke-direct {v7, v3, v8, v5}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "newDir":Ljava/io/File;
    .end local v2    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    throw v7

    .line 404
    .end local v5    # "e":Landroid/system/ErrnoException;
    .restart local v1    # "newDir":Ljava/io/File;
    .restart local v2    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :cond_2
    new-instance v5, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v7, "Failed to move verified font file."

    invoke-direct {v5, v3, v7}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .end local v1    # "newDir":Ljava/io/File;
    .end local v2    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    throw v5

    .line 398
    .end local v0    # "newFontFile":Ljava/io/File;
    .restart local v1    # "newDir":Ljava/io/File;
    .restart local v2    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :cond_3
    new-instance v3, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v5, -0x4

    invoke-direct {v3, v5, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .end local v1    # "newDir":Ljava/io/File;
    .end local v2    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    throw v3

    .line 392
    .end local v6    # "fontFileName":Ljava/lang/String;
    .restart local v1    # "newDir":Ljava/io/File;
    .restart local v2    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :catch_3
    move-exception v3

    nop

    .line 393
    .local v3, "e":Ljava/io/IOException;
    new-instance v6, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    invoke-direct {v6, v5, v0, v3}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "newDir":Ljava/io/File;
    .end local v2    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    throw v6

    .line 384
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "newDir":Ljava/io/File;
    .restart local v2    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :catch_4
    move-exception v0

    nop

    .line 385
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v5, "Failed to setup fs-verity."

    const/4 v6, -0x2

    invoke-direct {v3, v6, v5, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "newDir":Ljava/io/File;
    .end local v2    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    throw v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 375
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "newDir":Ljava/io/File;
    .restart local v2    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :catch_5
    move-exception v0

    goto :goto_3

    .line 373
    .local v5, "out":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v0

    :try_start_15
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v6

    :try_start_16
    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "newDir":Ljava/io/File;
    .end local v2    # "success":Z
    .end local v4    # "tempNewFontFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    :goto_2
    throw v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 375
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "newDir":Ljava/io/File;
    .restart local v2    # "success":Z
    .restart local v4    # "tempNewFontFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :goto_3
    nop

    .line 376
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_17
    new-instance v5, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v6, "Failed to write font file to storage."

    invoke-direct {v5, v3, v6, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "newDir":Ljava/io/File;
    .end local v2    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pkcs7Signature":[B
    throw v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 451
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "tempNewFontFile":Ljava/io/File;
    .restart local v1    # "newDir":Ljava/io/File;
    .restart local v2    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pkcs7Signature":[B
    :goto_4
    if-nez v2, :cond_4

    .line 452
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 454
    :cond_4
    throw v0

    .line 365
    .end local v2    # "success":Z
    :catch_6
    move-exception v0

    .line 366
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v2, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v4, "Failed to change mode to 711"

    invoke-direct {v2, v3, v4, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 358
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_5
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v2, "Failed to create font directory."

    invoke-direct {v0, v3, v2}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$new$0(Ljava/util/Map;)Landroid/text/FontConfig;
    .locals 3
    .param p0, "map"    # Ljava/util/Map;

    .line 148
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfig(Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0

    return-object v0
.end method

.method private lookupFontFileInfo(Ljava/lang/String;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .locals 1
    .param p1, "psName"    # Ljava/lang/String;

    .line 476
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    return-object v0
.end method

.method private putFontFileInfo(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 480
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    return-void
.end method

.method private readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .locals 4

    .line 657
    new-instance v0, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    invoke-direct {v0}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;-><init>()V

    .line 658
    .local v0, "config":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v1, v0}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig;->loadFromXml(Ljava/io/InputStream;Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v1    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    goto :goto_2

    .line 662
    :cond_0
    :goto_0
    goto :goto_2

    .line 658
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    nop

    .end local v0    # "config":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 663
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "config":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    :goto_2
    return-object v0
.end method

.method private resolveFontFilesForNamedFamily(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$NamedFamilyList;
    .locals 16
    .param p1, "fontFamily"    # Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getFonts()Ljava/util/List;

    move-result-object v0

    .line 604
    .local v0, "fontList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest$Font;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 605
    .local v1, "resolvedFonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 606
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/FontUpdateRequest$Font;

    .line 607
    .local v3, "font":Landroid/graphics/fonts/FontUpdateRequest$Font;
    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 608
    .local v5, "info":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    if-nez v5, :cond_0

    .line 609
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to lookup font file that has "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UpdatableFontDir"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v6, 0x0

    return-object v6

    .line 612
    :cond_0
    new-instance v7, Landroid/text/FontConfig$Font;

    invoke-static {v5}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->-$$Nest$fgetmFile(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v10

    .line 613
    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v11

    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getIndex()I

    move-result v12

    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v7 .. v15}, Landroid/text/FontConfig$Font;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;Ljava/lang/String;I)V

    .line 612
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    .end local v3    # "font":Landroid/graphics/fonts/FontUpdateRequest$Font;
    .end local v5    # "info":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v4, p0

    .line 616
    .end local v2    # "i":I
    new-instance v2, Landroid/text/FontConfig$FontFamily;

    .line 617
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v1, v3, v5}, Landroid/text/FontConfig$FontFamily;-><init>(Ljava/util/List;Landroid/os/LocaleList;I)V

    .line 618
    .local v2, "family":Landroid/text/FontConfig$FontFamily;
    new-instance v3, Landroid/text/FontConfig$NamedFamilyList;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 619
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/text/FontConfig$NamedFamilyList;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 618
    return-object v3
.end method

.method private validateFontFile(Ljava/io/File;[B)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "pkcs7Signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;->isFromTrustedProvider(Ljava/lang/String;[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-interface {v0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->getPostScriptName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    .local v0, "psName":Ljava/lang/String;
    nop

    .line 583
    invoke-direct {p0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontRevision(Ljava/io/File;)J

    move-result-wide v1

    .line 584
    .local v1, "revision":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 589
    new-instance v3, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    return-object v3

    .line 585
    :cond_0
    new-instance v3, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Font validation failed. Could not read font revision: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x3

    invoke-direct {v3, v5, v4}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 578
    .end local v0    # "psName":Ljava/lang/String;
    .end local v1    # "revision":J
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font validation failed. Could not read PostScript name name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x4

    invoke-direct {v1, v3, v2}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 571
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Font validation failed. Fs-verity is not enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private writePersistentConfig(Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V
    .locals 5
    .param p1, "config"    # Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    .line 668
    const/4 v0, 0x0

    .line 670
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    .line 671
    invoke-static {v0, p1}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig;->writeToXml(Ljava/io/OutputStream;Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V

    .line 672
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    nop

    .line 681
    return-void

    .line 673
    :catch_0
    move-exception v1

    .line 674
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_0

    .line 675
    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 677
    :cond_0
    new-instance v2, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v3, -0x6

    const-string v4, "Failed to write config XML."

    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method getConfigVersion()I
    .locals 1

    .line 684
    iget v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    return v0
.end method

.method public getFontFamilyMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/FontConfig$NamedFamilyList;",
            ">;"
        }
    .end annotation

    .line 688
    invoke-direct {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v0

    .line 689
    .local v0, "curConfig":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 690
    .local v1, "familyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/text/FontConfig$NamedFamilyList;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 691
    iget-object v3, v0, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 692
    .local v3, "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    invoke-direct {p0, v3}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->resolveFontFilesForNamedFamily(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$NamedFamilyList;

    move-result-object v4

    .line 693
    .local v4, "resolvedFamily":Landroid/text/FontConfig$NamedFamilyList;
    if-eqz v4, :cond_0

    .line 694
    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    .end local v3    # "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    .end local v4    # "resolvedFamily":Landroid/text/FontConfig$NamedFamilyList;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 697
    .end local v2    # "i":I
    return-object v1
.end method

.method getPostScriptMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 623
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 624
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 625
    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 626
    .local v2, "info":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    invoke-virtual {v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    .end local v2    # "info":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 628
    .end local v1    # "i":I
    return-object v0
.end method

.method getSystemFontConfig()Landroid/text/FontConfig;
    .locals 13

    .line 632
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getPostScriptMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/FontConfig;

    .line 633
    .local v0, "config":Landroid/text/FontConfig;
    invoke-direct {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v1

    .line 634
    .local v1, "persistentConfig":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    iget-object v2, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    .line 636
    .local v2, "families":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest$Family;>;"
    new-instance v3, Ljava/util/ArrayList;

    .line 637
    invoke-virtual {v0}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v3

    .line 640
    .local v8, "mergedFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$NamedFamilyList;>;"
    invoke-virtual {v0}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 644
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 645
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-direct {p0, v4}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->resolveFontFilesForNamedFamily(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$NamedFamilyList;

    move-result-object v4

    .line 646
    .local v4, "family":Landroid/text/FontConfig$NamedFamilyList;
    if-eqz v4, :cond_0

    .line 647
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    .end local v4    # "family":Landroid/text/FontConfig$NamedFamilyList;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 651
    .end local v3    # "i":I
    new-instance v5, Landroid/text/FontConfig;

    .line 652
    invoke-virtual {v0}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Landroid/text/FontConfig;->getAliases()Ljava/util/List;

    move-result-object v7

    .line 653
    invoke-virtual {v0}, Landroid/text/FontConfig;->getLocaleFallbackCustomizations()Ljava/util/List;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iget v12, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    invoke-direct/range {v5 .. v12}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    .line 651
    return-object v5
.end method

.method loadFontFileMap()V
    .locals 17

    .line 170
    move-object/from16 v1, p0

    const-string v2, "UpdatableFontDir"

    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 171
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 172
    const/4 v0, 0x1

    iput v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    .line 173
    const/4 v5, 0x0

    .line 175
    .local v5, "success":Z
    :try_start_0
    invoke-direct {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v6

    .line 176
    .local v6, "config":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    iget-wide v7, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->lastModifiedMillis:J

    iput-wide v7, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 178
    iget-object v7, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 179
    .local v7, "dirs":[Ljava/io/File;
    if-nez v7, :cond_1

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not read: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    if-nez v5, :cond_0

    .line 262
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 263
    iput-wide v3, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 264
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 265
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 182
    :cond_0
    return-void

    .line 255
    .end local v6    # "config":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .end local v7    # "dirs":[Ljava/io/File;
    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 184
    .restart local v6    # "config":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .restart local v7    # "dirs":[Ljava/io/File;
    :cond_1
    const/4 v8, 0x0

    .line 185
    .local v8, "fontConfig":Landroid/text/FontConfig;
    :try_start_1
    array-length v9, v7

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_d

    aget-object v12, v7, v11

    .line 186
    .local v12, "dir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "~~"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected dir found: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    if-nez v5, :cond_2

    .line 262
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 263
    iput-wide v3, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 264
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 265
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 188
    :cond_2
    return-void

    .line 190
    :cond_3
    :try_start_2
    iget-object v13, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 191
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Deleting obsolete dir: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {v12}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 193
    move/from16 v16, v10

    goto :goto_2

    .line 196
    :cond_4
    new-instance v13, Ljava/io/File;

    const-string v14, "font.fsv_sig"

    invoke-direct {v13, v12, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    .local v13, "signatureFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_6

    .line 198
    const-string v0, "The signature file is missing."

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    if-nez v5, :cond_5

    .line 262
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 263
    iput-wide v3, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 264
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 265
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 199
    :cond_5
    return-void

    .line 203
    :cond_6
    :try_start_3
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    new-array v15, v10, [Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v14

    invoke-static {v14}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v14
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    .local v14, "signature":[B
    nop

    .line 209
    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    .line 210
    .local v15, "files":[Ljava/io/File;
    if-eqz v15, :cond_7

    move/from16 v16, v10

    array-length v10, v15

    const/4 v3, 0x2

    if-eq v10, v3, :cond_8

    :cond_7
    goto :goto_3

    .line 216
    :cond_8
    aget-object v3, v15, v16

    invoke-virtual {v3, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 217
    aget-object v3, v15, v0

    .local v3, "fontFile":Ljava/io/File;
    goto :goto_1

    .line 219
    .end local v3    # "fontFile":Ljava/io/File;
    :cond_9
    aget-object v3, v15, v16

    .line 222
    .restart local v3    # "fontFile":Ljava/io/File;
    :goto_1
    invoke-direct {v1, v3, v14}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->validateFontFile(Ljava/io/File;[B)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    move-result-object v4

    .line 223
    .local v4, "fontFileInfo":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    if-nez v8, :cond_a

    .line 225
    iget-object v10, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Ljava/util/function/Function;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/FontConfig;

    move-object v8, v0

    .line 227
    :cond_a
    const/4 v0, 0x1

    invoke-direct {v1, v4, v8, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z

    .line 185
    .end local v3    # "fontFile":Ljava/io/File;
    .end local v4    # "fontFileInfo":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .end local v12    # "dir":Ljava/io/File;
    .end local v13    # "signatureFile":Ljava/io/File;
    .end local v14    # "signature":[B
    .end local v15    # "files":[Ljava/io/File;
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v16

    const-wide/16 v3, 0x0

    goto/16 :goto_0

    .line 211
    .restart local v12    # "dir":Ljava/io/File;
    .restart local v13    # "signatureFile":Ljava/io/File;
    .restart local v14    # "signature":[B
    .restart local v15    # "files":[Ljava/io/File;
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected files in dir: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 261
    if-nez v5, :cond_b

    .line 262
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 263
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 264
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 265
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 212
    :cond_b
    return-void

    .line 204
    .end local v14    # "signature":[B
    .end local v15    # "files":[Ljava/io/File;
    :catch_0
    move-exception v0

    nop

    .line 205
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    const-string v3, "Failed to read signature file."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 261
    if-nez v5, :cond_c

    .line 262
    iget-object v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 263
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 264
    iget-object v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v2}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 265
    iget-object v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 206
    :cond_c
    return-void

    .line 231
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "dir":Ljava/io/File;
    .end local v13    # "signatureFile":Ljava/io/File;
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_6
    iget-object v3, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_13

    .line 232
    iget-object v3, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 233
    .local v3, "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_5
    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getFonts()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_12

    .line 234
    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getFonts()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/fonts/FontUpdateRequest$Font;

    .line 235
    .local v9, "font":Landroid/graphics/fonts/FontUpdateRequest$Font;
    iget-object v10, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 236
    goto :goto_6

    .line 239
    :cond_e
    if-nez v8, :cond_f

    .line 240
    iget-object v10, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Ljava/util/function/Function;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/text/FontConfig;

    move-object v8, v10

    .line 243
    :cond_f
    invoke-virtual {v9}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10, v8}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontByPostScriptName(Ljava/lang/String;Landroid/text/FontConfig;)Landroid/text/FontConfig$Font;

    move-result-object v10

    if-eqz v10, :cond_10

    .line 244
    nop

    .line 233
    .end local v9    # "font":Landroid/graphics/fonts/FontUpdateRequest$Font;
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 247
    .restart local v9    # "font":Landroid/graphics/fonts/FontUpdateRequest$Font;
    :cond_10
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown font that has PostScript name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v9}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is requested in FontFamily "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 247
    invoke-static {v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 261
    if-nez v5, :cond_11

    .line 262
    iget-object v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 263
    const-wide/16 v10, 0x0

    iput-wide v10, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 264
    iget-object v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v2}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 265
    iget-object v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 250
    :cond_11
    return-void

    .line 233
    .end local v9    # "font":Landroid/graphics/fonts/FontUpdateRequest$Font;
    :cond_12
    nop

    .line 231
    .end local v3    # "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    .end local v4    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_13
    nop

    .line 254
    .end local v0    # "i":I
    const/4 v5, 0x1

    .line 261
    .end local v6    # "config":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .end local v7    # "dirs":[Ljava/io/File;
    .end local v8    # "fontConfig":Landroid/text/FontConfig;
    if-nez v5, :cond_14

    .line 262
    :goto_7
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 263
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 264
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 265
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    goto :goto_9

    .line 255
    :goto_8
    nop

    .line 258
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_7
    const-string v3, "Failed to load font mappings."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 261
    nop

    .end local v0    # "t":Ljava/lang/Throwable;
    if-nez v5, :cond_14

    .line 262
    goto :goto_7

    .line 268
    :cond_14
    :goto_9
    return-void

    .line 261
    :catchall_1
    move-exception v0

    if-nez v5, :cond_15

    .line 262
    iget-object v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 263
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 264
    iget-object v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v2}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 265
    iget-object v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 267
    :cond_15
    throw v0
.end method

.method public update(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    .line 276
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/FontUpdateRequest;

    .line 277
    .local v1, "request":Landroid/graphics/fonts/FontUpdateRequest;
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 283
    :pswitch_0
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    .line 279
    :pswitch_1
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getSignature()[B

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    nop

    .line 287
    .end local v1    # "request":Landroid/graphics/fonts/FontUpdateRequest;
    :goto_1
    goto :goto_0

    .line 289
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 290
    .local v0, "backupMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;>;"
    invoke-direct {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v1

    .line 291
    .local v1, "curConfig":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 292
    .local v2, "familyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/fonts/FontUpdateRequest$Family;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v4, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 293
    iget-object v4, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 294
    .local v4, "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .end local v4    # "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    nop

    .line 297
    .end local v3    # "i":I
    iget-wide v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 298
    .local v3, "backupLastModifiedDate":J
    const/4 v5, 0x0

    .line 300
    .local v5, "success":Z
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/fonts/FontUpdateRequest;

    .line 301
    .local v7, "request":Landroid/graphics/fonts/FontUpdateRequest;
    invoke-virtual {v7}, Landroid/graphics/fonts/FontUpdateRequest;->getType()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    goto :goto_4

    .line 307
    :pswitch_2
    invoke-virtual {v7}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v8

    .line 308
    .local v8, "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    invoke-virtual {v8}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 335
    .end local v7    # "request":Landroid/graphics/fonts/FontUpdateRequest;
    .end local v8    # "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    :catchall_0
    move-exception v6

    goto/16 :goto_7

    .line 303
    .restart local v7    # "request":Landroid/graphics/fonts/FontUpdateRequest;
    :pswitch_3
    nop

    .line 304
    invoke-virtual {v7}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v7}, Landroid/graphics/fonts/FontUpdateRequest;->getSignature()[B

    move-result-object v9

    .line 303
    invoke-direct {p0, v8, v9}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->installFontFile(Ljava/io/FileDescriptor;[B)V

    .line 305
    nop

    .line 311
    .end local v7    # "request":Landroid/graphics/fonts/FontUpdateRequest;
    :goto_4
    goto :goto_3

    .line 314
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 315
    .local v7, "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    invoke-direct {p0, v7}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->resolveFontFilesForNamedFamily(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$NamedFamilyList;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 320
    .end local v7    # "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    goto :goto_5

    .line 316
    .restart local v7    # "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    :cond_3
    new-instance v6, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v8, "Required fonts are not available"

    const/16 v9, -0x9

    invoke-direct {v6, v9, v8}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .end local v0    # "backupMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;>;"
    .end local v1    # "curConfig":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .end local v2    # "familyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/fonts/FontUpdateRequest$Family;>;"
    .end local v3    # "backupLastModifiedDate":J
    .end local v5    # "success":Z
    .end local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .end local p1    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    throw v6

    .line 323
    .end local v7    # "family":Landroid/graphics/fonts/FontUpdateRequest$Family;
    .restart local v0    # "backupMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;>;"
    .restart local v1    # "curConfig":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .restart local v2    # "familyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/fonts/FontUpdateRequest$Family;>;"
    .restart local v3    # "backupLastModifiedDate":J
    .restart local v5    # "success":Z
    .restart local p0    # "this":Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .restart local p1    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest;>;"
    :cond_4
    iget-object v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mCurrentTimeSupplier:Ljava/util/function/Supplier;

    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 325
    new-instance v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    invoke-direct {v6}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;-><init>()V

    .line 326
    .local v6, "newConfig":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    iget-wide v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iput-wide v7, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->lastModifiedMillis:J

    .line 327
    iget-object v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    .line 328
    .local v8, "info":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    iget-object v9, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    invoke-virtual {v8}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRandomizedFontDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    nop

    .end local v8    # "info":Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    goto :goto_6

    .line 330
    :cond_5
    iget-object v7, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 331
    invoke-direct {p0, v6}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->writePersistentConfig(Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V

    .line 332
    iget v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    const/4 v5, 0x1

    .line 335
    .end local v6    # "newConfig":Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    if-nez v5, :cond_6

    .line 336
    iget-object v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    .line 337
    iget-object v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 338
    iput-wide v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 341
    :cond_6
    return-void

    .line 335
    :goto_7
    if-nez v5, :cond_7

    .line 336
    iget-object v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 337
    iget-object v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 338
    iput-wide v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    .line 340
    :cond_7
    throw v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
