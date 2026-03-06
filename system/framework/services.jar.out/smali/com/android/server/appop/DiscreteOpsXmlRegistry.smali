.class Lcom/android/server/appop/DiscreteOpsXmlRegistry;
.super Lcom/android/server/appop/DiscreteOpsRegistry;
.source "DiscreteOpsXmlRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;,
        Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;,
        Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;,
        Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;,
        Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;,
        Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;,
        Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;
    }
.end annotation


# static fields
.field private static final ATTR_ATTRIBUTION_FLAGS:Ljava/lang/String; = "af"

.field private static final ATTR_CHAIN_ID:Ljava/lang/String; = "ci"

.field private static final ATTR_DEVICE_ID:Ljava/lang/String; = "di"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "f"

.field private static final ATTR_LARGEST_CHAIN_ID:Ljava/lang/String; = "lc"

.field private static final ATTR_NOTE_DURATION:Ljava/lang/String; = "nd"

.field private static final ATTR_NOTE_TIME:Ljava/lang/String; = "nt"

.field private static final ATTR_OP_ID:Ljava/lang/String; = "op"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "pn"

.field private static final ATTR_TAG:Ljava/lang/String; = "at"

.field private static final ATTR_UID:Ljava/lang/String; = "ui"

.field private static final ATTR_UID_STATE:Ljava/lang/String; = "us"

.field private static final ATTR_VERSION:Ljava/lang/String; = "v"

.field private static final CURRENT_VERSION:I = 0x1

.field static final DISCRETE_HISTORY_FILE_SUFFIX:Ljava/lang/String; = "tl"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_ENTRY:Ljava/lang/String; = "e"

.field private static final TAG_HISTORY:Ljava/lang/String; = "h"

.field private static final TAG_OP:Ljava/lang/String; = "o"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "p"

.field private static final TAG_TAG:Ljava/lang/String; = "a"

.field private static final TAG_UID:Ljava/lang/String; = "u"


# instance fields
.field private mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

.field private mDiscreteAccessDir:Ljava/io/File;

.field private mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

.field private final mInMemoryLock:Ljava/lang/Object;

.field private final mOnDiskLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smfilterEventsList(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p10}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->filterEventsList(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smstableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->stableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 93
    const-class v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "inMemoryLock"    # Ljava/lang/Object;

    .line 138
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->getDiscreteOpsDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;-><init>(Ljava/lang/Object;Ljava/io/File;)V

    .line 139
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/io/File;)V
    .locals 4
    .param p1, "inMemoryLock"    # Ljava/lang/Object;
    .param p2, "discreteAccessDir"    # Ljava/io/File;

    .line 142
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteOpsRegistry;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 143
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    iput-object p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    .line 146
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->createDiscreteAccessDirLocked()V

    .line 147
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->readLargestChainIdFromDiskLocked()I

    move-result v1

    .line 148
    .local v1, "largestChainId":I
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :try_start_1
    new-instance v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-direct {v3, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 150
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    .end local v1    # "largestChainId":I
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 150
    .restart local v1    # "largestChainId":I
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p0    # "this":Lcom/android/server/appop/DiscreteOpsXmlRegistry;
    .end local p1    # "inMemoryLock":Ljava/lang/Object;
    .end local p2    # "discreteAccessDir":Ljava/io/File;
    :try_start_4
    throw v3

    .line 151
    .end local v1    # "largestChainId":I
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteOpsXmlRegistry;
    .restart local p1    # "inMemoryLock":Ljava/lang/Object;
    .restart local p2    # "discreteAccessDir":Ljava/io/File;
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private clearOnDiskHistoryLocked()V
    .locals 1

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 411
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 412
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->createDiscreteAccessDir()V

    .line 413
    return-void
.end method

.method private createAttributionChains(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;Ljava/util/Set;)Landroid/util/ArrayMap;
    .locals 26
    .param p1, "discreteOps"    # Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;",
            ">;"
        }
    .end annotation

    .line 280
    .local p2, "attributionExemptPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 281
    .local v1, "chains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;>;"
    iget-object v2, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 282
    .local v2, "nUids":I
    const/4 v3, 0x0

    .local v3, "uidNum":I
    :goto_0
    if-ge v3, v2, :cond_9

    .line 283
    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    iget-object v4, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 284
    .local v4, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    iget-object v5, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 285
    .local v8, "uid":I
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 286
    .local v5, "nPackages":I
    const/4 v6, 0x0

    move v12, v6

    .local v12, "pkgNum":I
    :goto_1
    if-ge v12, v5, :cond_8

    .line 287
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    iget-object v13, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 288
    .local v13, "ops":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;>;"
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 289
    .local v7, "pkg":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 290
    .local v14, "nOps":I
    const/4 v6, 0x0

    move v15, v6

    .local v15, "opNum":I
    :goto_2
    if-ge v15, v14, :cond_7

    .line 291
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 292
    .local v10, "op":I
    nop

    .line 293
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    iget-object v6, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 295
    .local v6, "deviceOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 296
    .local v9, "nDeviceOps":I
    const/4 v11, 0x0

    .local v11, "deviceNum":I
    :goto_3
    if-ge v11, v9, :cond_6

    .line 297
    nop

    .line 298
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    iget-object v0, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 300
    .local v0, "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;>;"
    move/from16 v16, v2

    .end local v2    # "nUids":I
    .local v16, "nUids":I
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 301
    .local v2, "nAttrOps":I
    const/16 v17, 0x0

    move/from16 v18, v3

    move/from16 v3, v17

    .local v3, "attrOpNum":I
    .local v18, "uidNum":I
    :goto_4
    if-ge v3, v2, :cond_5

    .line 302
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v19, v2

    .end local v2    # "nAttrOps":I
    .local v19, "nAttrOps":I
    move-object/from16 v2, v17

    check-cast v2, Ljava/util/List;

    .line 303
    .local v2, "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 304
    .local v17, "attributionTag":Ljava/lang/String;
    move-object/from16 v20, v0

    .end local v0    # "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;>;"
    .local v20, "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 305
    .local v0, "nOpEvents":I
    const/16 v21, 0x0

    move/from16 v22, v3

    move/from16 v3, v21

    .local v3, "opEventNum":I
    .local v22, "attrOpNum":I
    :goto_5
    if-ge v3, v0, :cond_4

    .line 306
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v23, v0

    .end local v0    # "nOpEvents":I
    .local v23, "nOpEvents":I
    move-object/from16 v0, v21

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    .line 307
    .local v0, "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    if-eqz v0, :cond_3

    move-object/from16 v21, v2

    .end local v2    # "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    .local v21, "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    iget v2, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    move/from16 v24, v3

    .end local v3    # "opEventNum":I
    .local v24, "opEventNum":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 311
    move-object/from16 v25, v4

    move-object v0, v6

    move v2, v9

    move v3, v11

    move-object/from16 v9, v17

    move-object/from16 v4, p2

    goto/16 :goto_7

    .line 314
    :cond_0
    iget v2, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 315
    iget v2, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;

    move-object/from16 v25, v4

    move-object/from16 v4, p2

    .end local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .local v25, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    invoke-direct {v3, v4}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 314
    .end local v25    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .restart local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    :cond_1
    move-object/from16 v25, v4

    move-object/from16 v4, p2

    .line 318
    .end local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .restart local v25    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    :goto_6
    iget v2, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;

    .line 319
    move v3, v11

    move-object v11, v0

    move-object v0, v6

    move-object v6, v2

    move v2, v9

    move-object/from16 v9, v17

    .end local v6    # "deviceOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;>;"
    .end local v17    # "attributionTag":Ljava/lang/String;
    .local v0, "deviceOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;>;"
    .local v2, "nDeviceOps":I
    .local v3, "deviceNum":I
    .local v9, "attributionTag":Ljava/lang/String;
    .local v11, "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->addEvent(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)V

    goto :goto_7

    .line 307
    .end local v2    # "nDeviceOps":I
    .end local v3    # "deviceNum":I
    .end local v25    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .local v0, "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    .restart local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .restart local v6    # "deviceOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;>;"
    .local v9, "nDeviceOps":I
    .local v11, "deviceNum":I
    .restart local v17    # "attributionTag":Ljava/lang/String;
    :cond_2
    move-object/from16 v25, v4

    move v2, v9

    move v3, v11

    move-object/from16 v9, v17

    move-object/from16 v4, p2

    move-object v11, v0

    move-object v0, v6

    .end local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .end local v6    # "deviceOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;>;"
    .end local v17    # "attributionTag":Ljava/lang/String;
    .local v0, "deviceOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;>;"
    .restart local v2    # "nDeviceOps":I
    .restart local v3    # "deviceNum":I
    .local v9, "attributionTag":Ljava/lang/String;
    .local v11, "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    .restart local v25    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    goto :goto_7

    .end local v21    # "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    .end local v24    # "opEventNum":I
    .end local v25    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .local v0, "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    .local v2, "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    .local v3, "opEventNum":I
    .restart local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .restart local v6    # "deviceOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;>;"
    .local v9, "nDeviceOps":I
    .local v11, "deviceNum":I
    .restart local v17    # "attributionTag":Ljava/lang/String;
    :cond_3
    move-object/from16 v21, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    move v2, v9

    move v3, v11

    move-object/from16 v9, v17

    move-object/from16 v4, p2

    move-object v11, v0

    move-object v0, v6

    .line 305
    .end local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .end local v6    # "deviceOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;>;"
    .end local v11    # "deviceNum":I
    .end local v17    # "attributionTag":Ljava/lang/String;
    .local v0, "deviceOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;>;"
    .local v2, "nDeviceOps":I
    .local v3, "deviceNum":I
    .local v9, "attributionTag":Ljava/lang/String;
    .restart local v21    # "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    .restart local v24    # "opEventNum":I
    .restart local v25    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    :goto_7
    add-int/lit8 v6, v24, 0x1

    move v11, v3

    move v3, v6

    move-object/from16 v17, v9

    move-object/from16 v4, v25

    move-object v6, v0

    move v9, v2

    move-object/from16 v2, v21

    move/from16 v0, v23

    .end local v24    # "opEventNum":I
    .local v6, "opEventNum":I
    goto/16 :goto_5

    .end local v21    # "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    .end local v23    # "nOpEvents":I
    .end local v25    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .local v0, "nOpEvents":I
    .local v2, "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    .local v3, "opEventNum":I
    .restart local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .local v6, "deviceOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;>;"
    .local v9, "nDeviceOps":I
    .restart local v11    # "deviceNum":I
    .restart local v17    # "attributionTag":Ljava/lang/String;
    :cond_4
    move/from16 v23, v0

    move-object/from16 v21, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object v0, v6

    move v2, v9

    move v3, v11

    move-object/from16 v9, v17

    move-object/from16 v4, p2

    .line 301
    .end local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .end local v6    # "deviceOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;>;"
    .end local v9    # "nDeviceOps":I
    .end local v11    # "deviceNum":I
    .end local v17    # "attributionTag":Ljava/lang/String;
    .local v0, "deviceOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;>;"
    .local v2, "nDeviceOps":I
    .local v3, "deviceNum":I
    .restart local v25    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    add-int/lit8 v6, v22, 0x1

    move v9, v2

    move v3, v6

    move/from16 v2, v19

    move-object/from16 v4, v25

    move-object v6, v0

    move-object/from16 v0, v20

    .end local v22    # "attrOpNum":I
    .local v6, "attrOpNum":I
    goto/16 :goto_4

    .end local v19    # "nAttrOps":I
    .end local v20    # "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;>;"
    .end local v25    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .local v0, "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;>;"
    .local v2, "nAttrOps":I
    .local v3, "attrOpNum":I
    .restart local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .local v6, "deviceOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;>;"
    .restart local v9    # "nDeviceOps":I
    .restart local v11    # "deviceNum":I
    :cond_5
    move-object/from16 v20, v0

    move/from16 v19, v2

    move/from16 v22, v3

    move-object/from16 v25, v4

    move-object v0, v6

    move v2, v9

    move v3, v11

    move-object/from16 v4, p2

    .line 296
    .end local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .end local v6    # "deviceOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;>;"
    .end local v9    # "nDeviceOps":I
    .end local v11    # "deviceNum":I
    .local v0, "deviceOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;>;"
    .local v2, "nDeviceOps":I
    .local v3, "deviceNum":I
    .restart local v25    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    add-int/lit8 v11, v3, 0x1

    move/from16 v2, v16

    move/from16 v3, v18

    move-object/from16 v4, v25

    move-object/from16 v0, p1

    .end local v3    # "deviceNum":I
    .restart local v11    # "deviceNum":I
    goto/16 :goto_3

    .end local v0    # "deviceOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;>;"
    .end local v16    # "nUids":I
    .end local v18    # "uidNum":I
    .end local v25    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .local v2, "nUids":I
    .local v3, "uidNum":I
    .restart local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .restart local v6    # "deviceOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;>;"
    .restart local v9    # "nDeviceOps":I
    :cond_6
    move/from16 v16, v2

    move/from16 v18, v3

    move-object/from16 v25, v4

    move-object v0, v6

    move v2, v9

    move v3, v11

    move-object/from16 v4, p2

    .line 290
    .end local v2    # "nUids":I
    .end local v3    # "uidNum":I
    .end local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .end local v6    # "deviceOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;>;"
    .end local v9    # "nDeviceOps":I
    .end local v10    # "op":I
    .end local v11    # "deviceNum":I
    .restart local v16    # "nUids":I
    .restart local v18    # "uidNum":I
    .restart local v25    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v16

    move/from16 v3, v18

    move-object/from16 v4, v25

    goto/16 :goto_2

    .end local v16    # "nUids":I
    .end local v18    # "uidNum":I
    .end local v25    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .restart local v2    # "nUids":I
    .restart local v3    # "uidNum":I
    .restart local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    :cond_7
    move/from16 v16, v2

    move/from16 v18, v3

    move-object/from16 v25, v4

    move-object/from16 v4, p2

    .line 286
    .end local v2    # "nUids":I
    .end local v3    # "uidNum":I
    .end local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v13    # "ops":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;>;"
    .end local v14    # "nOps":I
    .end local v15    # "opNum":I
    .restart local v16    # "nUids":I
    .restart local v18    # "uidNum":I
    .restart local v25    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move-object/from16 v4, v25

    goto/16 :goto_1

    .end local v16    # "nUids":I
    .end local v18    # "uidNum":I
    .end local v25    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .restart local v2    # "nUids":I
    .restart local v3    # "uidNum":I
    .restart local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    :cond_8
    move/from16 v16, v2

    move/from16 v18, v3

    move-object/from16 v25, v4

    move-object/from16 v4, p2

    .line 282
    .end local v2    # "nUids":I
    .end local v3    # "uidNum":I
    .end local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;>;"
    .end local v5    # "nPackages":I
    .end local v8    # "uid":I
    .end local v12    # "pkgNum":I
    .restart local v16    # "nUids":I
    .restart local v18    # "uidNum":I
    add-int/lit8 v3, v18, 0x1

    move-object/from16 v0, p1

    .end local v18    # "uidNum":I
    .restart local v3    # "uidNum":I
    goto/16 :goto_0

    .end local v16    # "nUids":I
    .restart local v2    # "nUids":I
    :cond_9
    nop

    .line 326
    .end local v3    # "uidNum":I
    return-object v1
.end method

.method private createDiscreteAccessDir()V
    .locals 3

    .line 728
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    sget-object v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    const-string v1, "Failed to create DiscreteRegistry directory"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 735
    :cond_1
    return-void
.end method

.method private createDiscreteAccessDirLocked()V
    .locals 3

    .line 781
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 782
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    sget-object v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    const-string v1, "Failed to create DiscreteRegistry directory"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 788
    :cond_1
    return-void
.end method

.method private deleteOldDiscreteHistoryFilesLocked()V
    .locals 12

    .line 757
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 758
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 759
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    nop

    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 760
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 761
    .local v5, "fileName":Ljava/lang/String;
    const-string/jumbo v6, "tl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 762
    goto :goto_3

    .line 765
    :cond_0
    nop

    .line 766
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v7, v6

    .line 765
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 767
    .local v6, "timestamp":J
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v8

    sget-wide v9, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    sget-object v11, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v8, v9, v10, v11}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v8

    .line 768
    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-lez v8, :cond_1

    .line 769
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 770
    sget-object v8, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleting file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 773
    .end local v6    # "timestamp":J
    :catchall_0
    move-exception v6

    goto :goto_2

    .line 775
    :cond_1
    :goto_1
    goto :goto_3

    .line 773
    :goto_2
    nop

    .line 774
    .local v6, "t":Ljava/lang/Throwable;
    sget-object v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    const-string v8, "Error while cleaning timeline files: "

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 778
    :cond_2
    return-void
.end method

.method private static filterEventsList(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;
    .locals 11
    .param p1, "beginTimeMillis"    # J
    .param p3, "endTimeMillis"    # J
    .param p5, "flagsFilter"    # I
    .param p6, "currentUid"    # I
    .param p7, "currentPackageName"    # Ljava/lang/String;
    .param p8, "currentOp"    # I
    .param p9, "currentAttrTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;",
            ">;JJII",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;",
            ">;"
        }
    .end annotation

    .line 1402
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    .local p10, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1403
    .local v0, "n":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1404
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1405
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    .line 1406
    .local v9, "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    iget v3, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v10, p10

    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;

    .line 1408
    .local v4, "chain":Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;
    if-eqz v4, :cond_0

    move/from16 v6, p6

    move-object/from16 v5, p7

    move/from16 v8, p8

    move-object/from16 v7, p9

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1409
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 1411
    goto :goto_1

    .line 1413
    :cond_0
    iget v3, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    and-int v3, v3, p5

    if-eqz v3, :cond_1

    iget-wide v5, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide v7, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    add-long/2addr v5, v7

    cmp-long v3, v5, p1

    if-lez v3, :cond_1

    iget-wide v5, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v3, v5, p3

    if-gez v3, :cond_1

    .line 1416
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1404
    .end local v4    # "chain":Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;
    .end local v9    # "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v10, p10

    .line 1419
    .end local v2    # "i":I
    return-object v1
.end method

.method static getDiscreteOpsDir()Ljava/io/File;
    .locals 4

    .line 155
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "appops"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "discrete"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V
    .locals 8
    .param p1, "discreteOps"    # Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 738
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    .line 739
    .local v0, "currentTimeStamp":J
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 741
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    .line 743
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 744
    invoke-static {p1, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mwriteToStream(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;Ljava/io/FileOutputStream;)V

    .line 745
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    goto :goto_0

    .line 746
    :catchall_0
    move-exception v4

    .line 747
    .local v4, "t":Ljava/lang/Throwable;
    sget-object v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error writing timeline state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 747
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    if-eqz v3, :cond_0

    .line 751
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 754
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private readDiscreteOpsFromDisk(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V
    .locals 12
    .param p1, "discreteOps"    # Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 330
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v1

    .line 332
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 334
    .local v1, "beginTimeMillis":J
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 335
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    .line 336
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 337
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 338
    .local v8, "fileName":Ljava/lang/String;
    const-string/jumbo v9, "tl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 339
    goto :goto_1

    .line 341
    :cond_0
    nop

    .line 342
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const-string/jumbo v10, "tl"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    .line 341
    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 343
    .local v9, "timestamp":J
    cmp-long v11, v9, v1

    if-gez v11, :cond_1

    .line 344
    goto :goto_1

    .line 346
    :cond_1
    invoke-static {p1, v7, v1, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mreadFromFile(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;Ljava/io/File;J)V

    .line 336
    .end local v7    # "f":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "timestamp":J
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 349
    .end local v1    # "beginTimeMillis":J
    .end local v3    # "files":[Ljava/io/File;
    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    monitor-exit v0

    .line 350
    return-void

    .line 349
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static stableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;",
            ">;"
        }
    .end annotation

    .line 1379
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1380
    .local v0, "nA":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1381
    .local v1, "nB":I
    const/4 v2, 0x0

    .line 1382
    .local v2, "i":I
    const/4 v3, 0x0

    .line 1383
    .local v3, "k":I
    new-instance v4, Ljava/util/ArrayList;

    add-int v5, v0, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1384
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    :goto_0
    if-lt v2, v0, :cond_0

    if-ge v3, v1, :cond_1

    :cond_0
    goto :goto_1

    .line 1395
    :cond_1
    return-object v4

    .line 1385
    :goto_1
    if-ne v2, v0, :cond_2

    .line 1386
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "k":I
    .local v5, "k":I
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0

    .line 1387
    .end local v5    # "k":I
    .restart local v3    # "k":I
    :cond_2
    if-ne v3, v1, :cond_3

    .line 1388
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_0

    .line 1389
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-wide v5, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-wide v7, v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    .line 1390
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .restart local v5    # "i":I
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_0

    .line 1392
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_4
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "k":I
    .local v5, "k":I
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0
.end method


# virtual methods
.method addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .locals 14
    .param p1, "result"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "beginTimeMillis"    # J
    .param p4, "endTimeMillis"    # J
    .param p6, "filter"    # I
    .param p7, "uidFilter"    # I
    .param p8, "packageNameFilter"    # Ljava/lang/String;
    .param p9, "opNamesFilter"    # [Ljava/lang/String;
    .param p10, "attributionTagFilter"    # Ljava/lang/String;
    .param p11, "flagsFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            "JJII",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p12, "attributionExemptPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p12

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 221
    .local v1, "assembleChains":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    move-result-object v2

    .line 222
    .local v2, "discreteOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 223
    .local v3, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;>;"
    if-eqz v1, :cond_1

    .line 224
    invoke-direct {p0, v2, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->createAttributionChains(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;Ljava/util/Set;)Landroid/util/ArrayMap;

    move-result-object v3

    move-object v13, v3

    goto :goto_1

    .line 223
    :cond_1
    move-object v13, v3

    .line 226
    .end local v3    # "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;>;"
    .local v13, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;>;"
    :goto_1
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    sget-wide v4, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v3

    .line 227
    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    .line 226
    move-wide/from16 v5, p2

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 228
    .end local p2    # "beginTimeMillis":J
    .local v3, "beginTimeMillis":J
    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-static/range {v2 .. v13}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mfilter(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V

    .line 230
    invoke-static {v2, p1, v13}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mapplyToHistoricalOps(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;Landroid/app/AppOpsManager$HistoricalOps;Landroid/util/ArrayMap;)V

    .line 231
    return-void
.end method

.method clearHistory()V
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :try_start_1
    new-instance v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 356
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 357
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->clearOnDiskHistoryLocked()V

    .line 358
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 359
    return-void

    .line 358
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 356
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p0    # "this":Lcom/android/server/appop/DiscreteOpsXmlRegistry;
    :try_start_4
    throw v2

    .line 358
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteOpsXmlRegistry;
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method clearHistory(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    move-result-object v2

    .line 373
    .local v2, "discreteOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->clearHistory()V

    .line 374
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 375
    :try_start_2
    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mclearHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;ILjava/lang/String;)V

    .line 376
    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    .line 377
    .end local v2    # "discreteOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    return-void

    .line 377
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 374
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p0    # "this":Lcom/android/server/appop/DiscreteOpsXmlRegistry;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_4
    throw v2

    .line 377
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteOpsXmlRegistry;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method deleteDiscreteOpsDir()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 364
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 365
    monitor-exit v0

    .line 366
    return-void

    .line 365
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "uidFilter"    # I
    .param p3, "packageNameFilter"    # Ljava/lang/String;
    .param p4, "attributionTagFilter"    # Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "dumpOp"    # I
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p8, "date"    # Ljava/util/Date;
    .param p9, "prefix"    # Ljava/lang/String;
    .param p10, "nDiscreteOps"    # I

    .line 397
    move-object/from16 v1, p1

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    move-result-object v0

    .line 398
    .local v0, "discreteOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    const/4 v2, -0x1

    move/from16 v14, p6

    if-ne v14, v2, :cond_0

    const/4 v2, 0x0

    move-object v10, v2

    goto :goto_0

    .line 399
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v14}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v10, v2

    :goto_0
    nop

    .line 400
    .local v10, "opNamesFilter":[Ljava/lang/String;
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    const-wide/16 v3, 0x0

    const/16 v12, 0x1f

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    move/from16 v7, p5

    move-object v2, v0

    .end local v0    # "discreteOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    .local v2, "discreteOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    invoke-static/range {v2 .. v13}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mfilter(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V

    .line 402
    .end local v2    # "discreteOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    .restart local v0    # "discreteOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    move-object/from16 v4, p9

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 403
    const-string v2, "Largest chain id: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    iget v2, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 405
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 406
    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v5, p10

    invoke-static/range {v0 .. v5}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mdump(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    .line 407
    return-void
.end method

.method getAllDiscreteOps()Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    .locals 5

    .line 416
    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    .line 418
    .local v0, "discreteOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 419
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :try_start_1
    iget-object v4, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-virtual {v0, v4}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    .line 421
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 422
    :try_start_2
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    if-nez v3, :cond_0

    .line 423
    new-instance v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-direct {v3, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 424
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-direct {p0, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->readDiscreteOpsFromDisk(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    goto :goto_0

    .line 428
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 426
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-virtual {v0, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    .line 427
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    .line 421
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "discreteOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    .end local p0    # "this":Lcom/android/server/appop/DiscreteOpsXmlRegistry;
    :try_start_4
    throw v1

    .line 428
    .restart local v0    # "discreteOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteOpsXmlRegistry;
    :goto_1
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method migrateSqliteData(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V
    .locals 4
    .param p1, "sqliteOps"    # Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 199
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    if-nez v1, :cond_0

    .line 201
    sget-object v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    const-string v2, "State not saved - persistence not initialized."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-exit v0

    return-void

    .line 211
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :try_start_1
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    iget v3, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    iput v3, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    .line 206
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    iget v3, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mChainIdOffset:I

    iput v3, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mChainIdOffset:I

    .line 207
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    .line 211
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    return-void

    .line 207
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p0    # "this":Lcom/android/server/appop/DiscreteOpsXmlRegistry;
    .end local p1    # "sqliteOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    :try_start_4
    throw v2

    .line 211
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteOpsXmlRegistry;
    .restart local p1    # "sqliteOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method offsetHistory(J)V
    .locals 3
    .param p1, "offset"    # J

    .line 381
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    move-result-object v2

    .line 385
    .local v2, "discreteOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->clearHistory()V

    .line 386
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 387
    :try_start_2
    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;J)V

    .line 388
    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    .line 389
    .end local v2    # "discreteOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 386
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p0    # "this":Lcom/android/server/appop/DiscreteOpsXmlRegistry;
    .end local p1    # "offset":J
    :try_start_4
    throw v2

    .line 389
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteOpsXmlRegistry;
    .restart local p1    # "offset":J
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method readLargestChainIdFromDiskLocked()I
    .locals 12

    .line 234
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 235
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v2, v0

    if-lez v2, :cond_4

    .line 236
    const/4 v2, 0x0

    .line 237
    .local v2, "latestFile":Ljava/io/File;
    const-wide/16 v3, 0x0

    .line 238
    .local v3, "latestFileTimestamp":J
    array-length v5, v0

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v0, v6

    .line 239
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 240
    .local v8, "fileName":Ljava/lang/String;
    const-string/jumbo v9, "tl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 241
    goto :goto_1

    .line 243
    :cond_0
    nop

    .line 244
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v10, v9

    .line 243
    invoke-virtual {v8, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 245
    .local v9, "timestamp":J
    cmp-long v11, v3, v9

    if-gez v11, :cond_1

    .line 246
    move-object v2, v7

    .line 247
    move-wide v3, v9

    .line 238
    .end local v7    # "f":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "timestamp":J
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 250
    :cond_2
    if-nez v2, :cond_3

    .line 251
    return v1

    .line 255
    :cond_3
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 258
    .local v5, "stream":Ljava/io/FileInputStream;
    nop

    .line 260
    :try_start_1
    invoke-static {v5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v6

    .line 261
    .local v6, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    const-string/jumbo v7, "h"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 263
    const-string/jumbo v7, "lc"

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    .local v1, "largestChainId":I
    nop

    .line 269
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 271
    goto :goto_2

    .line 270
    :catch_0
    move-exception v7

    .line 264
    :goto_2
    return v1

    .line 265
    .end local v1    # "largestChainId":I
    .end local v6    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    :catchall_0
    move-exception v6

    .line 266
    .local v6, "t":Ljava/lang/Throwable;
    nop

    .line 269
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 271
    goto :goto_3

    .line 270
    :catch_1
    move-exception v7

    .line 266
    :goto_3
    return v1

    .line 256
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v5

    .line 257
    .local v5, "e":Ljava/io/FileNotFoundException;
    return v1

    .line 274
    .end local v2    # "latestFile":Ljava/io/File;
    .end local v3    # "latestFileTimestamp":J
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    return v1
.end method

.method recordDiscreteAccess(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJII)V
    .locals 17
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "op"    # I
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "flags"    # I
    .param p7, "uidState"    # I
    .param p8, "accessTime"    # J
    .param p10, "accessDuration"    # J
    .param p12, "attributionFlags"    # I
    .param p13, "attributionChainId"    # I

    .line 162
    move-object/from16 v1, p0

    move/from16 v3, p4

    move/from16 v8, p6

    invoke-static {v3, v8}, Lcom/android/server/appop/DiscreteOpsRegistry;->isDiscreteOp(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    iget-object v2, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 166
    nop

    .line 171
    move-object v4, v2

    :try_start_0
    iget-object v2, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    const-string v6, "default:0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v5, p2

    move-object/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, v4

    move/from16 v4, p1

    :try_start_1
    invoke-virtual/range {v2 .. v15}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJII)V

    .line 176
    monitor-exit v16

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v4

    :goto_0
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method writeAndClearOldAccessHistory()V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    if-nez v1, :cond_0

    .line 182
    sget-object v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    const-string v2, "State not saved - persistence not initialized."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    monitor-exit v0

    return-void

    .line 195
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :try_start_1
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 188
    .local v2, "discreteOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    new-instance v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    iget v4, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mChainIdOffset:I

    invoke-direct {v3, v4}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 189
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 190
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 191
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->deleteOldDiscreteHistoryFilesLocked()V

    .line 192
    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    .line 195
    .end local v2    # "discreteOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    return-void

    .line 190
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p0    # "this":Lcom/android/server/appop/DiscreteOpsXmlRegistry;
    :try_start_4
    throw v2

    .line 195
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteOpsXmlRegistry;
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
